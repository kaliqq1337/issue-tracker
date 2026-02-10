package com.issue_tracker.issue_tracker_backend.service;

import com.issue_tracker.issue_tracker_backend.dto.AuthResponseDto;

import java.util.Map;

public interface AuthService {
    AuthResponseDto login(Map<String, String> credentials);
}
