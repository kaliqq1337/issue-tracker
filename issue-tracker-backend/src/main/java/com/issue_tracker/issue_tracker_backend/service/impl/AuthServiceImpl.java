package com.issue_tracker.issue_tracker_backend.service.impl;

import com.issue_tracker.issue_tracker_backend.dto.AuthResponseDto;
import com.issue_tracker.issue_tracker_backend.dto.UserDto;
import com.issue_tracker.issue_tracker_backend.security.JwtUtils;
import com.issue_tracker.issue_tracker_backend.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
@RequiredArgsConstructor
public class AuthServiceImpl implements AuthService {

    private final JwtUtils jwtUtils;

    @Override
    public AuthResponseDto login(Map<String, String> credentials) {
        String email = credentials.getOrDefault("email", "user@example.com");
        String name = "Sample User";
        String userId = "1";
        
        String token = jwtUtils.generateToken(email, name, userId);
        
        UserDto user = UserDto.builder()
                .id(userId)
                .email(email)
                .name(name)
                .build();
        
        return AuthResponseDto.builder()
                .token(token)
                .user(user)
                .build();
    }
}
