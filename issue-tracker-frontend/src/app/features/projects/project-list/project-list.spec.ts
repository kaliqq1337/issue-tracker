import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClient } from '@angular/common/http';
import { HttpTestingController, provideHttpClientTesting } from '@angular/common/http/testing';
import { provideRouter } from '@angular/router';
import { ProjectListComponent } from './project-list';

describe('ProjectListComponent', () => {
  let component: ProjectListComponent;
  let fixture: ComponentFixture<ProjectListComponent>;
  let httpMock: HttpTestingController;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ProjectListComponent],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
        provideRouter([])
      ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ProjectListComponent);
    component = fixture.componentInstance;
    httpMock = TestBed.inject(HttpTestingController);
  });

  afterEach(() => {
    httpMock.verify();
  });

  it('should create', () => {
    const req = httpMock.expectOne(request => request.url === '/api/projects' && request.params.get('page') === '1');
    req.flush({ data: [], total: 0, page: 1, pageSize: 10 });
    expect(component).toBeTruthy();
  });

  it('should load projects on init', () => {
    const mockProjects = [
      { id: 'p1', name: 'Project 1', description: 'Desc 1', createdAt: new Date().toISOString(), updatedAt: new Date().toISOString() },
      { id: 'p2', name: 'Project 2', description: 'Desc 2', createdAt: new Date().toISOString(), updatedAt: new Date().toISOString() }
    ];

    const req = httpMock.expectOne(request => request.url === '/api/projects' && request.params.get('page') === '1');
    req.flush({
      data: mockProjects,
      total: 2,
      page: 1,
      pageSize: 10
    });

    fixture.detectChanges();

    expect(component.projects()).toEqual(mockProjects);
    expect(component.total()).toBe(2);

    const cards = fixture.nativeElement.querySelectorAll('mat-card');
    // One card per project + maybe a "No projects found" if empty, but here we have 2.
    // Actually if projects().length > 0 it shows the grid.
    expect(cards.length).toBe(2);
    expect(cards[0].querySelector('mat-card-title').textContent).toContain('Project 1');
  });
});
