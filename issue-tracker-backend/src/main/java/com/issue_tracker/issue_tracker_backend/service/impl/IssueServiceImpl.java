package com.issue_tracker.issue_tracker_backend.service.impl;

import com.issue_tracker.issue_tracker_backend.dto.IssueDto;
import com.issue_tracker.issue_tracker_backend.dto.PaginatedResponseDto;
import com.issue_tracker.issue_tracker_backend.entity.Activity;
import com.issue_tracker.issue_tracker_backend.entity.Issue;
import com.issue_tracker.issue_tracker_backend.mapper.EntityMapper;
import com.issue_tracker.issue_tracker_backend.repository.ActivityRepository;
import com.issue_tracker.issue_tracker_backend.repository.IssueRepository;
import com.issue_tracker.issue_tracker_backend.service.IssueService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class IssueServiceImpl implements IssueService {

    private final IssueRepository issueRepository;
    private final ActivityRepository activityRepository;
    private final EntityMapper entityMapper;
    private final SimpMessagingTemplate messagingTemplate;

    @Override
    @Transactional(readOnly = true)
    public PaginatedResponseDto<IssueDto> getIssues(String projectId, int page, int pageSize) {
        int zeroBased = Math.max(0, page - 1);
        PageRequest pr = PageRequest.of(zeroBased, pageSize);
        
        if (projectId != null && !projectId.isEmpty()) {
            List<Issue> filtered = issueRepository.findByProjectId(projectId);
            int total = filtered.size();
            List<IssueDto> data = filtered.stream()
                    .skip((long) zeroBased * pageSize)
                    .limit(pageSize)
                    .map(entityMapper::toDto)
                    .collect(Collectors.toList());
                    
            return PaginatedResponseDto.<IssueDto>builder()
                    .data(data)
                    .total(total)
                    .page(page)
                    .pageSize(pageSize)
                    .build();
        } else {
            Page<Issue> issuePage = issueRepository.findAll(pr);
            List<IssueDto> data = issuePage.getContent().stream()
                    .map(entityMapper::toDto)
                    .collect(Collectors.toList());
                    
            return PaginatedResponseDto.<IssueDto>builder()
                    .data(data)
                    .total((int) issuePage.getTotalElements())
                    .page(page)
                    .pageSize(pageSize)
                    .build();
        }
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<IssueDto> getIssueById(String id) {
        return issueRepository.findById(id).map(entityMapper::toDto);
    }

    @Override
    @Transactional
    public IssueDto updateIssue(String id, IssueDto issueDto) {
        Issue issue = issueRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Issue not found"));
        
        StringBuilder details = new StringBuilder();
        if (issueDto.getTitle() != null && !issueDto.getTitle().equals(issue.getTitle())) {
            details.append("Title changed. ");
            issue.setTitle(issueDto.getTitle());
        }
        if (issueDto.getDescription() != null && !issueDto.getDescription().equals(issue.getDescription())) {
            details.append("Description changed. ");
            issue.setDescription(issueDto.getDescription());
        }
        if (issueDto.getStatus() != null && issueDto.getStatus() != issue.getStatus()) {
            details.append("Status changed from ").append(issue.getStatus()).append(" to ").append(issueDto.getStatus()).append(". ");
            issue.setStatus(issueDto.getStatus());
        }
        if (issueDto.getPriority() != null && issueDto.getPriority() != issue.getPriority()) {
            details.append("Priority changed from ").append(issue.getPriority()).append(" to ").append(issueDto.getPriority()).append(". ");
            issue.setPriority(issueDto.getPriority());
        }
        
        issue.setUpdatedAt(java.time.LocalDateTime.now());
        
        Issue saved = issueRepository.save(issue);
        
        if (details.length() > 0) {
            Activity activity = Activity.builder()
                    .id(UUID.randomUUID().toString())
                    .issueId(id)
                    .action("UPDATE")
                    .details(details.toString().trim())
                    .createdAt(java.time.LocalDateTime.now())
                    .build();
            activityRepository.save(activity);
        }

        IssueDto result = entityMapper.toDto(saved);
        
        messagingTemplate.convertAndSend("/topic/issues/" + id, result);
        messagingTemplate.convertAndSend("/topic/issues", result);
        
        return result;
    }
}
