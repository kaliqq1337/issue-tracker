package com.issue_tracker.issue_tracker_backend.service;

import com.issue_tracker.issue_tracker_backend.dto.IssueDto;
import com.issue_tracker.issue_tracker_backend.dto.PaginatedResponseDto;

import java.util.Optional;

public interface IssueService {
    PaginatedResponseDto<IssueDto> getIssues(String projectId, int page, int pageSize);
    Optional<IssueDto> getIssueById(String id);
    IssueDto updateIssue(String id, IssueDto issueDto);
}
