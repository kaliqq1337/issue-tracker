package com.issue_tracker.issue_tracker_backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "activities")
public class Activity {
    @Id
    private String id;
    
    private String issueId;
    
    private String userId;
    
    private String action;
    
    private String details;
    
    private LocalDateTime createdAt;
}
