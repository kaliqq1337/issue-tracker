package com.issue_tracker.issue_tracker_backend.service;

import com.issue_tracker.issue_tracker_backend.dto.IssueDto;
import com.issue_tracker.issue_tracker_backend.dto.PaginatedResponseDto;
import com.issue_tracker.issue_tracker_backend.entity.Issue;
import com.issue_tracker.issue_tracker_backend.mapper.EntityMapper;
import com.issue_tracker.issue_tracker_backend.repository.ActivityRepository;
import com.issue_tracker.issue_tracker_backend.repository.IssueRepository;
import com.issue_tracker.issue_tracker_backend.service.impl.IssueServiceImpl;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.messaging.simp.SimpMessagingTemplate;

import java.util.Collections;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class IssueServiceTest {

    private IssueService issueService;

    @Mock
    private IssueRepository issueRepository;

    @Mock
    private ActivityRepository activityRepository;

    @Mock
    private SimpMessagingTemplate messagingTemplate;

    private EntityMapper entityMapper = new EntityMapper();

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        issueService = new IssueServiceImpl(issueRepository, activityRepository, entityMapper, messagingTemplate);
    }

    @Test
    void getIssues_WithoutProjectId_ShouldReturnAllIssues() {
        Issue issue = Issue.builder().id("1").title("Test Issue").build();
        Page<Issue> page = new PageImpl<>(Collections.singletonList(issue));
        when(issueRepository.findAll(any(PageRequest.class))).thenReturn(page);

        PaginatedResponseDto<IssueDto> result = issueService.getIssues(null, 1, 10);

        assertEquals(1, result.getData().size());
        assertEquals("Test Issue", result.getData().get(0).getTitle());
    }

    @Test
    void getIssues_WithProjectId_ShouldReturnFilteredIssues() {
        String projectId = "proj1";
        Issue issue = Issue.builder().id("1").title("Filtered Issue").build();
        when(issueRepository.findByProjectId(projectId)).thenReturn(Collections.singletonList(issue));

        PaginatedResponseDto<IssueDto> result = issueService.getIssues(projectId, 1, 10);

        assertEquals(1, result.getData().size());
        assertEquals("Filtered Issue", result.getData().get(0).getTitle());
    }

    @Test
    void getIssueById_WhenExists_ShouldReturnDto() {
        String id = "1";
        Issue issue = Issue.builder().id(id).title("Test Issue").build();
        when(issueRepository.findById(id)).thenReturn(Optional.of(issue));

        Optional<IssueDto> result = issueService.getIssueById(id);

        assertTrue(result.isPresent());
        assertEquals("Test Issue", result.get().getTitle());
    }

    @Test
    void updateIssue_ShouldUpdateAndNotify() {
        String id = "1";
        Issue issue = Issue.builder().id(id).title("Old Title").build();
        IssueDto updateDto = IssueDto.builder().title("New Title").build();
        
        when(issueRepository.findById(id)).thenReturn(Optional.of(issue));
        when(issueRepository.save(any(Issue.class))).thenAnswer(invocation -> invocation.getArgument(0));

        IssueDto result = issueService.updateIssue(id, updateDto);

        assertEquals("New Title", result.getTitle());
        verify(messagingTemplate).convertAndSend(org.mockito.ArgumentMatchers.eq("/topic/issues/" + id), any(IssueDto.class));
        verify(activityRepository).save(any());
    }
}
