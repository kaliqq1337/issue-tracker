package com.issue_tracker.issue_tracker_backend.mapper;

import com.issue_tracker.issue_tracker_backend.dto.IssueDto;
import com.issue_tracker.issue_tracker_backend.dto.ProjectDto;
import com.issue_tracker.issue_tracker_backend.entity.Issue;
import com.issue_tracker.issue_tracker_backend.entity.Project;
import com.issue_tracker.issue_tracker_backend.entity.User;
import com.issue_tracker.issue_tracker_backend.enums.IssuePriority;
import com.issue_tracker.issue_tracker_backend.enums.IssueStatus;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Collections;

import static org.assertj.core.api.Assertions.assertThat;

public class MapperTest {

    @Test
    void shouldMapProjectToDto() {
        User user = User.builder().id("u1").name("John").build();
        Project project = Project.builder()
                .id("p1")
                .name("Project Alpha")
                .description("Description")
                .user(user)
                .createdAt(LocalDateTime.now())
                .updatedAt(LocalDateTime.now())
                .build();

        ProjectDto dto = ProjectDto.builder()
                .id(project.getId())
                .name(project.getName())
                .description(project.getDescription())
                .userId(project.getUser() != null ? project.getUser().getId() : null)
                .createdAt(project.getCreatedAt())
                .updatedAt(project.getUpdatedAt())
                .build();

        assertThat(dto.getId()).isEqualTo(project.getId());
        assertThat(dto.getName()).isEqualTo(project.getName());
        assertThat(dto.getDescription()).isEqualTo(project.getDescription());
        assertThat(dto.getUserId()).isEqualTo("u1");
    }

    @Test
    void shouldMapIssueToDto() {
        Project project = Project.builder().id("p1").build();
        User user = User.builder().id("u1").build();
        Issue issue = Issue.builder()
                .id("i1")
                .title("Issue Title")
                .description("Issue Description")
                .status(IssueStatus.OPEN)
                .priority(IssuePriority.HIGH)
                .project(project)
                .assignees(Arrays.asList(user))
                .tags(Arrays.asList("bug", "ui"))
                .createdAt(LocalDateTime.now())
                .updatedAt(LocalDateTime.now())
                .build();

        IssueDto dto = IssueDto.builder()
                .id(issue.getId())
                .projectId(issue.getProject() != null ? issue.getProject().getId() : null)
                .title(issue.getTitle())
                .description(issue.getDescription())
                .status(issue.getStatus())
                .priority(issue.getPriority())
                .assigneeIds(issue.getAssignees() != null ? issue.getAssignees().stream().map(u -> u.getId()).collect(java.util.stream.Collectors.toList()) : null)
                .tags(issue.getTags())
                .createdAt(issue.getCreatedAt())
                .updatedAt(issue.getUpdatedAt())
                .build();

        assertThat(dto.getId()).isEqualTo(issue.getId());
        assertThat(dto.getProjectId()).isEqualTo("p1");
        assertThat(dto.getAssigneeIds()).containsExactly("u1");
        assertThat(dto.getTags()).containsExactly("bug", "ui");
    }
}
