package com.issue_tracker.issue_tracker_backend.integration;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.issue_tracker.issue_tracker_backend.dto.ProjectDto;
import com.issue_tracker.issue_tracker_backend.repository.ProjectRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import static org.hamcrest.Matchers.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@Transactional
public class ProjectIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ProjectRepository projectRepository;

    @Autowired
    private ObjectMapper objectMapper;

    @Test
    void shouldGetAllProjectsWithPagination() throws Exception {
        // data.sql seeds 20 projects
        mockMvc.perform(get("/api/projects")
                        .param("page", "1")
                        .param("pageSize", "5"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data", hasSize(5)))
                .andExpect(jsonPath("$.total", is(20)))
                .andExpect(jsonPath("$.page", is(1)))
                .andExpect(jsonPath("$.pageSize", is(5)));
    }

    @Test
    void shouldGetProjectById() throws Exception {
        // p1 is seeded in data.sql
        mockMvc.perform(get("/api/projects/p1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is("p1")))
                .andExpect(jsonPath("$.name", is("Project Alpha")));
    }

    @Test
    void shouldReturnNotFoundForNonExistentProject() throws Exception {
        mockMvc.perform(get("/api/projects/nonexistent"))
                .andExpect(status().isNotFound());
    }

    @Test
    void shouldCreateProject() throws Exception {
        ProjectDto newProject = ProjectDto.builder()
                .id("new-p")
                .name("Integration Test Project")
                .description("Created during integration test")
                .build();

        mockMvc.perform(post("/api/projects")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(newProject)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is("new-p")))
                .andExpect(jsonPath("$.name", is("Integration Test Project")));

        // Verify it's actually in the database
        assert projectRepository.findById("new-p").isPresent();
    }
}
