import { Injectable } from '@angular/core';
import { Subject, Observable, BehaviorSubject } from 'rxjs';
import { Client, Message } from '@stomp/stompjs';
import SockJS from 'sockjs-client';

@Injectable({
  providedIn: 'root'
})
export class WebSocketService {
  private client: Client | null = null;
  private messageSubject = new Subject<any>();
  private connectionStatus = new BehaviorSubject<boolean>(false);

  public messages$ = this.messageSubject.asObservable();
  public connected$ = this.connectionStatus.asObservable();

  connect(): void {
    if (this.client && this.client.active) {
      return;
    }

    const socket = new SockJS('/ws');
    this.client = new Client({
      webSocketFactory: () => socket,
      debug: (str) => console.log(str),
      reconnectDelay: 5000,
      heartbeatIncoming: 4000,
      heartbeatOutgoing: 4000,
    });

    this.client.onConnect = (frame) => {
      console.log('Connected: ' + frame);
      this.connectionStatus.next(true);
    };

    this.client.onDisconnect = () => {
      console.log('Disconnected');
      this.connectionStatus.next(false);
    };

    this.client.onStompError = (frame) => {
      console.error('Broker reported error: ' + frame.headers['message']);
      console.error('Additional details: ' + frame.body);
      this.connectionStatus.next(false);
    };

    this.client.activate();
  }

  subscribe(topic: string): Observable<any> {
    return new Observable((observer) => {
      const subscribeToTopic = () => {
        if (!this.client || !this.client.connected) {
          return null;
        }
        return this.client.subscribe(topic, (message: Message) => {
          observer.next(JSON.parse(message.body));
        });
      };

      let subscription = subscribeToTopic();

      // If not connected yet, wait for connection
      const statusSub = this.connected$.subscribe(connected => {
        if (connected && !subscription) {
          subscription = subscribeToTopic();
        }
      });

      return () => {
        if (subscription) {
          subscription.unsubscribe();
        }
        statusSub.unsubscribe();
      };
    });
  }

  send(destination: string, data: any): void {
    if (this.client && this.client.connected) {
      this.client.publish({
        destination,
        body: JSON.stringify(data)
      });
    }
  }

  disconnect(): void {
    if (this.client) {
      this.client.deactivate();
      this.client = null;
    }
  }
}
