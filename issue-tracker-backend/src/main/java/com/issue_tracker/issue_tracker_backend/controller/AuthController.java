package com.issue_tracker.issue_tracker_backend.controller;

import com.issue_tracker.issue_tracker_backend.dto.AuthResponseDto;
import com.issue_tracker.issue_tracker_backend.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthService authService;

    @PostMapping("/login")
    public AuthResponseDto login(@RequestBody Map<String, String> credentials) {
        return authService.login(credentials);
    }
}
