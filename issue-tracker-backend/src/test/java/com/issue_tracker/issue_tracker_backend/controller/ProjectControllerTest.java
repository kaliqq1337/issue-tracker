package com.issue_tracker.issue_tracker_backend.controller;

import com.issue_tracker.issue_tracker_backend.dto.PaginatedResponseDto;
import com.issue_tracker.issue_tracker_backend.dto.ProjectDto;
import com.issue_tracker.issue_tracker_backend.service.ProjectService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.ResponseEntity;

import java.util.Collections;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

class ProjectControllerTest {

    private ProjectController projectController;

    @Mock
    private ProjectService projectService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        projectController = new ProjectController(projectService);
    }

    @Test
    void getProjects_ShouldReturnPaginatedProjects() {
        ProjectDto projectDto = ProjectDto.builder().id("1").name("Test Project").build();
        PaginatedResponseDto<ProjectDto> mockResponse = PaginatedResponseDto.<ProjectDto>builder()
                .data(Collections.singletonList(projectDto))
                .total(1)
                .page(1)
                .pageSize(10)
                .build();
        when(projectService.getProjects(1, 10)).thenReturn(mockResponse);

        PaginatedResponseDto<ProjectDto> response = projectController.getProjects(1, 10);

        assertNotNull(response);
        assertEquals(1, response.getData().size());
        assertEquals("Test Project", response.getData().get(0).getName());
    }

    @Test
    void getProject_WhenExists_ShouldReturnProject() {
        String projectId = "1";
        ProjectDto projectDto = ProjectDto.builder().id(projectId).name("Test Project").build();
        when(projectService.getProjectById(projectId)).thenReturn(Optional.of(projectDto));

        ResponseEntity<ProjectDto> response = projectController.getProject(projectId);

        assertTrue(response.getStatusCode().is2xxSuccessful());
        assertNotNull(response.getBody());
        assertEquals("Test Project", response.getBody().getName());
    }

    @Test
    void createProject_ShouldSaveAndReturnProject() {
        ProjectDto inputDto = ProjectDto.builder().id("1").name("New Project").build();
        when(projectService.createProject(any(ProjectDto.class))).thenReturn(inputDto);

        ProjectDto result = projectController.createProject(inputDto);

        assertNotNull(result);
        assertEquals("New Project", result.getName());
    }
}
