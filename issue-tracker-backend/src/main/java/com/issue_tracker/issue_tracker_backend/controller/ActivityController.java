package com.issue_tracker.issue_tracker_backend.controller;

import com.issue_tracker.issue_tracker_backend.dto.ActivityDto;
import com.issue_tracker.issue_tracker_backend.mapper.EntityMapper;
import com.issue_tracker.issue_tracker_backend.repository.ActivityRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/issues/{issueId}/activity")
@RequiredArgsConstructor
public class ActivityController {

    private final ActivityRepository activityRepository;
    private final EntityMapper entityMapper;

    @GetMapping
    public List<ActivityDto> getActivities(@PathVariable String issueId) {
        return activityRepository.findByIssueIdOrderByCreatedAtDesc(issueId).stream()
                .map(entityMapper::toDto)
                .collect(Collectors.toList());
    }
}
