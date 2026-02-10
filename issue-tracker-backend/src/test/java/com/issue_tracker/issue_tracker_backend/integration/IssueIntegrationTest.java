package com.issue_tracker.issue_tracker_backend.integration;

import com.issue_tracker.issue_tracker_backend.repository.IssueRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import static org.hamcrest.Matchers.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@Transactional
public class IssueIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private IssueRepository issueRepository;

    @Test
    void shouldGetAllIssuesWithPagination() throws Exception {
        // data.sql seeds 25 issues
        mockMvc.perform(get("/api/issues")
                        .param("page", "1")
                        .param("pageSize", "10"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data", hasSize(10)))
                .andExpect(jsonPath("$.total", is(25)))
                .andExpect(jsonPath("$.page", is(1)))
                .andExpect(jsonPath("$.pageSize", is(10)));
    }

    @Test
    void shouldGetIssuesFilteredByProject() throws Exception {
        // Project p1 has 2 issues: i1, i2
        mockMvc.perform(get("/api/issues")
                        .param("projectId", "p1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data", hasSize(2)))
                .andExpect(jsonPath("$.data[0].projectId", is("p1")))
                .andExpect(jsonPath("$.data[1].projectId", is("p1")));
    }

    @Test
    void shouldGetIssueById() throws Exception {
        // i1 is seeded in data.sql
        mockMvc.perform(get("/api/issues/i1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is("i1")))
                .andExpect(jsonPath("$.title", is("Bug in login")));
    }

    @Test
    void shouldReturnNotFoundForNonExistentIssue() throws Exception {
        mockMvc.perform(get("/api/issues/nonexistent"))
                .andExpect(status().isNotFound());
    }
}
