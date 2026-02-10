package com.issue_tracker.issue_tracker_backend.service;

import com.issue_tracker.issue_tracker_backend.dto.PaginatedResponseDto;
import com.issue_tracker.issue_tracker_backend.dto.ProjectDto;

import java.util.Optional;

public interface ProjectService {
    PaginatedResponseDto<ProjectDto> getProjects(int page, int pageSize);
    Optional<ProjectDto> getProjectById(String id);
    ProjectDto createProject(ProjectDto projectDto);
}
