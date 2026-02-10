package com.issue_tracker.issue_tracker_backend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class
IssueTrackerBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(IssueTrackerBackendApplication.class, args);
	}

}
