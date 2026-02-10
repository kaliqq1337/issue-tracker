package com.issue_tracker.issue_tracker_backend.service.impl;

import com.issue_tracker.issue_tracker_backend.dto.PaginatedResponseDto;
import com.issue_tracker.issue_tracker_backend.dto.ProjectDto;
import com.issue_tracker.issue_tracker_backend.entity.Project;
import com.issue_tracker.issue_tracker_backend.mapper.EntityMapper;
import com.issue_tracker.issue_tracker_backend.repository.ProjectRepository;
import com.issue_tracker.issue_tracker_backend.service.ProjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProjectServiceImpl implements ProjectService {

    private final ProjectRepository projectRepository;
    private final EntityMapper entityMapper;

    @Override
    @Transactional(readOnly = true)
    public PaginatedResponseDto<ProjectDto> getProjects(int page, int pageSize) {
        int zeroBasedPage = Math.max(0, page - 1);
        Page<Project> projectPage = projectRepository.findAll(PageRequest.of(zeroBasedPage, pageSize));
        
        List<ProjectDto> data = projectPage.getContent().stream()
                .map(entityMapper::toDto)
                .collect(Collectors.toList());

        return PaginatedResponseDto.<ProjectDto>builder()
                .data(data)
                .total((int) projectPage.getTotalElements())
                .page(page)
                .pageSize(pageSize)
                .build();
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<ProjectDto> getProjectById(String id) {
        return projectRepository.findById(id).map(entityMapper::toDto);
    }

    @Override
    @Transactional
    public ProjectDto createProject(ProjectDto projectDto) {
        Project project = Project.builder()
                .id(projectDto.getId())
                .name(projectDto.getName())
                .description(projectDto.getDescription())
                .createdAt(LocalDateTime.now())
                .updatedAt(LocalDateTime.now())
                .build();
        Project saved = projectRepository.save(project);
        return entityMapper.toDto(saved);
    }
}
