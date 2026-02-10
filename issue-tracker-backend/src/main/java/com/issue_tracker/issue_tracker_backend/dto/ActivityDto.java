package com.issue_tracker.issue_tracker_backend.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ActivityDto {
    private String id;
    private String issueId;
    private String userId;
    private String action;
    private String details;
    private LocalDateTime createdAt;
}
