package com.issue_tracker.issue_tracker_backend.entity;

import com.issue_tracker.issue_tracker_backend.enums.IssuePriority;
import com.issue_tracker.issue_tracker_backend.enums.IssueStatus;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "issues")
public class Issue {
    @Id
    private String id;
    
    private String title;
    
    private String description;
    
    @Enumerated(EnumType.STRING)
    private IssueStatus status;
    
    @Enumerated(EnumType.STRING)
    private IssuePriority priority;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "issue_assignees",
        joinColumns = @JoinColumn(name = "issue_id"),
        inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    @Builder.Default
    private List<User> assignees = new ArrayList<>();
    
    @ElementCollection
    private List<String> tags;
    
    private LocalDateTime createdAt;
    
    private LocalDateTime updatedAt;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "project_id")
    private Project project;
    
    @OneToMany(mappedBy = "issue", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<Comment> comments = new ArrayList<>();
}
