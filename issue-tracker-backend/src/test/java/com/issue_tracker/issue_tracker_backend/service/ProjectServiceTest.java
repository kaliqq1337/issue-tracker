package com.issue_tracker.issue_tracker_backend.service;

import com.issue_tracker.issue_tracker_backend.dto.PaginatedResponseDto;
import com.issue_tracker.issue_tracker_backend.dto.ProjectDto;
import com.issue_tracker.issue_tracker_backend.entity.Project;
import com.issue_tracker.issue_tracker_backend.mapper.EntityMapper;
import com.issue_tracker.issue_tracker_backend.repository.ProjectRepository;
import com.issue_tracker.issue_tracker_backend.service.impl.ProjectServiceImpl;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import java.util.Collections;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

class ProjectServiceTest {

    private ProjectService projectService;

    @Mock
    private ProjectRepository projectRepository;

    private EntityMapper entityMapper = new EntityMapper();

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        projectService = new ProjectServiceImpl(projectRepository, entityMapper);
    }

    @Test
    void getProjects_ShouldReturnPaginatedDto() {
        Project project = Project.builder().id("1").name("Test Project").build();
        Page<Project> page = new PageImpl<>(Collections.singletonList(project));
        when(projectRepository.findAll(any(PageRequest.class))).thenReturn(page);

        PaginatedResponseDto<ProjectDto> result = projectService.getProjects(1, 10);

        assertEquals(1, result.getData().size());
        assertEquals("Test Project", result.getData().get(0).getName());
        assertEquals(1, result.getTotal());
    }

    @Test
    void getProjectById_WhenExists_ShouldReturnDto() {
        String id = "1";
        Project project = Project.builder().id(id).name("Test Project").build();
        when(projectRepository.findById(id)).thenReturn(Optional.of(project));

        Optional<ProjectDto> result = projectService.getProjectById(id);

        assertTrue(result.isPresent());
        assertEquals("Test Project", result.get().getName());
    }

    @Test
    void createProject_ShouldSaveAndReturnDto() {
        ProjectDto dto = ProjectDto.builder().id("1").name("New Project").build();
        Project project = Project.builder().id("1").name("New Project").build();
        when(projectRepository.save(any(Project.class))).thenReturn(project);

        ProjectDto result = projectService.createProject(dto);

        assertNotNull(result);
        assertEquals("New Project", result.getName());
    }
}
