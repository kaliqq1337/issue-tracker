package com.issue_tracker.issue_tracker_backend.security;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.test.util.ReflectionTestUtils;

import java.util.Date;

import static org.junit.jupiter.api.Assertions.*;

class JwtUtilsTest {

    private JwtUtils jwtUtils;
    private final String secret = "9a4f2c3d5e6f7g8h9i0j1k2l3m4n5o6p7q8r9s0t1u2v3w4x5y6z7a8b9c0d1e2f";
    private final Long expiration = 3600000L; // 1 hour

    @BeforeEach
    void setUp() {
        jwtUtils = new JwtUtils();
        ReflectionTestUtils.setField(jwtUtils, "secret", secret);
        ReflectionTestUtils.setField(jwtUtils, "expiration", expiration);
    }

    @Test
    void generateToken_ShouldReturnValidToken() {
        String email = "test@example.com";
        String name = "Test User";
        String userId = "123";

        String token = jwtUtils.generateToken(email, name, userId);

        assertNotNull(token);
        assertEquals(email, jwtUtils.extractUsername(token));
    }

    @Test
    void validateToken_ShouldReturnTrueForValidToken() {
        String email = "test@example.com";
        String name = "Test User";
        String userId = "123";
        String token = jwtUtils.generateToken(email, name, userId);

        assertTrue(jwtUtils.validateToken(token, email));
    }

    @Test
    void validateToken_ShouldReturnFalseForInvalidEmail() {
        String email = "test@example.com";
        String name = "Test User";
        String userId = "123";
        String token = jwtUtils.generateToken(email, name, userId);

        assertFalse(jwtUtils.validateToken(token, "wrong@example.com"));
    }

    @Test
    void extractUsername_ShouldReturnCorrectEmail() {
        String email = "test@example.com";
        String token = jwtUtils.generateToken(email, "Name", "1");

        assertEquals(email, jwtUtils.extractUsername(token));
    }

    @Test
    void extractExpiration_ShouldReturnFutureDate() {
        String token = jwtUtils.generateToken("test@example.com", "Name", "1");
        Date expirationDate = jwtUtils.extractExpiration(token);

        assertTrue(expirationDate.after(new Date()));
    }
}
