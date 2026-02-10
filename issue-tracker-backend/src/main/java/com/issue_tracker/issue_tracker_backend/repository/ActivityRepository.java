package com.issue_tracker.issue_tracker_backend.repository;

import com.issue_tracker.issue_tracker_backend.entity.Activity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ActivityRepository extends JpaRepository<Activity, String> {
    List<Activity> findByIssueIdOrderByCreatedAtDesc(String issueId);
}
