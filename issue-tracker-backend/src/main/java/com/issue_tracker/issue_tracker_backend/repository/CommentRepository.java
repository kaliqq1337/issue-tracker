package com.issue_tracker.issue_tracker_backend.repository;

import com.issue_tracker.issue_tracker_backend.entity.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentRepository extends JpaRepository<Comment, String> {
    List<Comment> findByIssueId(String issueId);
}
