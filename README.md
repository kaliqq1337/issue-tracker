# Issue Tracker Mono

A full-stack issue tracking application built with a modern Service-Oriented Architecture. This project features a Spring Boot backend and an Angular frontend, supporting real-time updates and OAuth2 authentication.

## 🚀 Tech Stack

### Backend
- **Java 17** & **Spring Boot 3.4.2**
- **Spring Security** with OAuth2 (Auth0/Google) and JWT
- **Spring Data JPA** with **H2 In-Memory Database**
- **Spring WebSocket** (STOMP + SockJS) for real-time notifications
- **Lombok** for boilerplate reduction
- **Maven** for dependency management

### Frontend
- **Angular 20** (v21.1.x)
- **Tailwind CSS** for styling
- **@stomp/stompjs** & **sockjs-client** for real-time communication
- **Reactive Signals** for state management
- **Angular Material** components

---

## 🛠️ Run Instructions

### Prerequisites
- JDK 17 or higher
- Node.js (v18+ recommended)
- Maven 3.8+

### 1. Start the Backend
```bash
cd issue-tracker-backend
./mvnw spring-boot:run
```
- The API will be available at `http://localhost:8080`
- H2 Console: `http://localhost:8080/h2-console` (JDBC URL: `jdbc:h2:mem:testdb`)

### 2. Start the Frontend
```bash
cd issue-tracker-frontend
npm install
npm start
```
- The application will be accessible at `http://localhost:4200`
- The `npm start` command uses `proxy.conf.json` to route API and WebSocket calls to the backend.

### 3. Run with Docker (Recommended)
To run the entire stack (Backend + Frontend) using Docker:

```bash
docker-compose up --build
```

- **Frontend**: `http://localhost` (Port 80)
- **Backend API**: `http://localhost:8080`
- **H2 Console**: `http://localhost:8080/h2-console`

---

## ⚖️ Architectural Trade-offs

1. **H2 In-Memory Database**:
   - **Pro**: Zero configuration, perfect for rapid development and testing.
   - **Con**: Data is lost on server restart. We use `data.sql` to seed 225+ issues across 20 projects to mitigate this for demo purposes.

2. **Monolithic Repository**:
   - **Pro**: Easier to manage cross-stack changes (like WebSocket integration) and shared documentation.
   - **Con**: Slightly more complex CI/CD as the project grows.

3. **Service-Oriented Architecture**:
   - Rfactored from a "Smart Controller" pattern to a dedicated Service layer.
   - **Trade-off**: More classes/interfaces initially, but significantly better testability and separation of concerns.

4. **STOMP/SockJS over SSE**:
   - **Pro**: Bi-directional communication and built-in "topic" support (pub/sub).
   - **Con**: Slightly higher overhead than Server-Sent Events (SSE).

---

## 🔮 Future Optimizations (2-Day Roadmap)

If given 2 more days, the following high-impact improvements would be prioritized:

### Day 1: Infrastructure & Persistence
- **PostgreSQL Integration**: Replace H2 with a persistent PostgreSQL instance. This involves updating `application.properties` and adding a `docker-compose.yml` for the database.
- **Production-Ready Dockerization**: Re-implement Docker multi-stage builds for both services, ensuring Nginx is properly configured as a reverse proxy for both static assets and API/WS traffic.
- **Environment Configuration**: Implement a more robust `application.yml` with profiles (dev, prod) and secure secret management (injecting Auth0 keys via environment variables).
- **Secrets**:  Remove hardcoded Auth0 keys from `application.properties`.

### Day 2: Features & Quality
- **Soft Deletes & Auditing**: Implement `@CreatedBy` and `@LastModifiedBy` auditing using Spring Data JPA. Add soft-delete functionality for issues and projects.
- **Enhanced Activity Tracking**: Expand the `ActivityLog` to include "Diff" views (e.g., "Priority changed from High to Low") instead of just summary messages.
- **E2E Testing**: Add Playwright or Cypress tests to cover critical user journeys: Login -> Create Project -> Add Issue -> Change Status -> Verify Real-time update.
- **Frontend Optimization**: Implement Angular "OnPush" change detection strategy across all components and improve bundle size by removing unused Material modules.
- **Frontend Accessibility**: Ensure all components are accessible by following WCAG 2.1 guidelines. Use Angular's built-in accessibility features and ARIA attributes where necessary.
- **Styling & Theming**: Apply consistent Material Design principles and ensure responsive design for various screen sizes. Use Angular Material's pre-built themes or create custom themes to maintain a cohesive look and feel for all components.

---

## 🧪 Testing
The project includes a comprehensive test suite (Unit + Integration).
- **Backend**: Run `mvn test` in `issue-tracker-backend`.
- **Frontend**: Run `npm test` in `issue-tracker-frontend`.
