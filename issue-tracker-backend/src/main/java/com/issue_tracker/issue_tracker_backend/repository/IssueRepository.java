package com.issue_tracker.issue_tracker_backend.repository;

import com.issue_tracker.issue_tracker_backend.entity.Issue;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IssueRepository extends JpaRepository<Issue, String> {
    List<Issue> findByProjectId(String projectId);
}
