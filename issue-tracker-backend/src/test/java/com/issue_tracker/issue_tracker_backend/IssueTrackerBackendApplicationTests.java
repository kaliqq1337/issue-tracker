package com.issue_tracker.issue_tracker_backend;

import com.issue_tracker.issue_tracker_backend.repository.ProjectRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class IssueTrackerBackendApplicationTests {

	@Autowired
	private ProjectRepository projectRepository;

	@Test
	void contextLoads() {
	}

	@Test
	void testDataIsSeeded() {
		long count = projectRepository.count();
		assertThat(count).isEqualTo(20);
	}

}
