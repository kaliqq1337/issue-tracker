package com.issue_tracker.issue_tracker_backend.controller;

import com.issue_tracker.issue_tracker_backend.dto.IssueDto;
import com.issue_tracker.issue_tracker_backend.dto.PaginatedResponseDto;
import com.issue_tracker.issue_tracker_backend.service.IssueService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.ResponseEntity;

import java.util.Collections;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

class IssueControllerTest {

    private IssueController issueController;

    @Mock
    private IssueService issueService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        issueController = new IssueController(issueService);
    }

    @Test
    void getIssues_ShouldReturnIssuesFromService() {
        String projectId = "proj1";
        IssueDto issueDto = IssueDto.builder().id("1").title("Test Issue").build();
        PaginatedResponseDto<IssueDto> mockResponse = PaginatedResponseDto.<IssueDto>builder()
                .data(Collections.singletonList(issueDto))
                .total(1)
                .page(1)
                .pageSize(10)
                .build();
        
        when(issueService.getIssues(projectId, 1, 10)).thenReturn(mockResponse);

        PaginatedResponseDto<IssueDto> response = issueController.getIssues(projectId, 1, 10);

        assertNotNull(response);
        assertEquals(1, response.getData().size());
        assertEquals("Test Issue", response.getData().get(0).getTitle());
    }

    @Test
    void getIssue_WhenExists_ShouldReturnIssue() {
        String issueId = "1";
        IssueDto issueDto = IssueDto.builder().id(issueId).title("Test Issue").build();
        when(issueService.getIssueById(issueId)).thenReturn(Optional.of(issueDto));

        ResponseEntity<IssueDto> response = issueController.getIssue(issueId);

        assertTrue(response.getStatusCode().is2xxSuccessful());
        assertNotNull(response.getBody());
        assertEquals("Test Issue", response.getBody().getTitle());
    }

    @Test
    void getIssue_WhenNotExists_ShouldReturnNotFound() {
        String issueId = "nonexistent";
        when(issueService.getIssueById(issueId)).thenReturn(Optional.empty());

        ResponseEntity<IssueDto> response = issueController.getIssue(issueId);

        assertTrue(response.getStatusCode().is4xxClientError());
    }
}
