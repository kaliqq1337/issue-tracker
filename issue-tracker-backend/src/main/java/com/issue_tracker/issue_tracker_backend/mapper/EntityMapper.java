package com.issue_tracker.issue_tracker_backend.mapper;

import com.issue_tracker.issue_tracker_backend.dto.ActivityDto;
import com.issue_tracker.issue_tracker_backend.dto.IssueDto;
import com.issue_tracker.issue_tracker_backend.dto.ProjectDto;
import com.issue_tracker.issue_tracker_backend.dto.UserDto;
import com.issue_tracker.issue_tracker_backend.entity.Activity;
import com.issue_tracker.issue_tracker_backend.entity.Issue;
import com.issue_tracker.issue_tracker_backend.entity.Project;
import com.issue_tracker.issue_tracker_backend.entity.User;
import org.springframework.stereotype.Component;

import java.util.stream.Collectors;

@Component
public class EntityMapper {

    public ProjectDto toDto(Project project) {
        if (project == null) return null;
        return ProjectDto.builder()
                .id(project.getId())
                .name(project.getName())
                .description(project.getDescription())
                .userId(project.getUser() != null ? project.getUser().getId() : null)
                .createdAt(project.getCreatedAt())
                .updatedAt(project.getUpdatedAt())
                .build();
    }

    public IssueDto toDto(Issue issue) {
        if (issue == null) return null;
        return IssueDto.builder()
                .id(issue.getId())
                .projectId(issue.getProject() != null ? issue.getProject().getId() : null)
                .title(issue.getTitle())
                .description(issue.getDescription())
                .status(issue.getStatus())
                .priority(issue.getPriority())
                .assigneeIds(issue.getAssignees() != null ? 
                    issue.getAssignees().stream().map(User::getId).collect(Collectors.toList()) : null)
                .tags(issue.getTags())
                .createdAt(issue.getCreatedAt())
                .updatedAt(issue.getUpdatedAt())
                .build();
    }

    public UserDto toDto(User user) {
        if (user == null) return null;
        return UserDto.builder()
                .id(user.getId())
                .email(user.getEmail())
                .name(user.getName())
                .build();
    }

    public ActivityDto toDto(Activity activity) {
        if (activity == null) return null;
        return ActivityDto.builder()
                .id(activity.getId())
                .issueId(activity.getIssueId())
                .userId(activity.getUserId())
                .action(activity.getAction())
                .details(activity.getDetails())
                .createdAt(activity.getCreatedAt())
                .build();
    }
}
