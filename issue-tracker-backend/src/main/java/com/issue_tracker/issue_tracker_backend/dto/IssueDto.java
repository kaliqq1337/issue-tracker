package com.issue_tracker.issue_tracker_backend.dto;

import com.issue_tracker.issue_tracker_backend.enums.IssuePriority;
import com.issue_tracker.issue_tracker_backend.enums.IssueStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class IssueDto {
    private String id;
    private String projectId;
    private String title;
    private String description;
    private IssueStatus status;
    private IssuePriority priority;
    private List<String> assigneeIds;
    private List<String> tags;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}
