package com.issue_tracker.issue_tracker_backend.controller;

import com.issue_tracker.issue_tracker_backend.dto.CommentDto;
import com.issue_tracker.issue_tracker_backend.entity.Activity;
import com.issue_tracker.issue_tracker_backend.entity.Comment;
import com.issue_tracker.issue_tracker_backend.repository.ActivityRepository;
import com.issue_tracker.issue_tracker_backend.repository.CommentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/issues/{issueId}/comments")
@RequiredArgsConstructor
public class CommentController {

    private final CommentRepository commentRepository;
    private final ActivityRepository activityRepository;

    @GetMapping
    public List<CommentDto> getComments(@PathVariable String issueId) {
        return commentRepository.findByIssueId(issueId).stream()
                .map(c -> CommentDto.builder()
                        .id(c.getId())
                        .issueId(c.getIssue().getId())
                        .userId(c.getUserId())
                        .text(c.getText())
                        .createdAt(c.getCreatedAt())
                        .build())
                .toList();
    }

    @PostMapping
    public CommentDto addComment(@PathVariable String issueId, @RequestBody CommentDto commentDto) {
        // Note: In a real app, we'd load the User and Issue entities properly.
        // For now, let's just record the activity.
        
        Activity activity = Activity.builder()
                .id(UUID.randomUUID().toString())
                .issueId(issueId)
                .action("COMMENT")
                .details("Added a new comment")
                .createdAt(LocalDateTime.now())
                .build();
        activityRepository.save(activity);

        commentDto.setIssueId(issueId);
        commentDto.setCreatedAt(LocalDateTime.now());
        return commentDto;
    }
}
