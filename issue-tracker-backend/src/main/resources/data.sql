-- Insert Users first
INSERT INTO users (id, email, name) VALUES ('u1', 'john@example.com', 'John Doe');
INSERT INTO users (id, email, name) VALUES ('u2', 'jane@example.com', 'Jane Smith');

-- Insert 20 Projects (with user_id foreign key)
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p1', 'Project Alpha', 'This is the first sample project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p2', 'Project Beta', 'This is the second sample project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p3', 'Project Gamma', 'This is the third sample project.', 'u2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p4', 'Project Delta', 'This is the fourth sample project.', 'u2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p5', 'Project Epsilon', 'This is the fifth sample project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p6', 'Project Zeta', 'This is the sixth sample project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p7', 'Project Eta', 'Seventh seeded project.', 'u2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p8', 'Project Theta', 'Eighth seeded project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p9', 'Project Iota', 'Ninth seeded project.', 'u2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p10', 'Project Kappa', 'Tenth seeded project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p11', 'Project Lambda', 'Eleventh seeded project.', 'u2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p12', 'Project Mu', 'Twelfth seeded project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p13', 'Project Nu', 'Thirteenth seeded project.', 'u2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p14', 'Project Xi', 'Fourteenth seeded project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p15', 'Project Omicron', 'Fifteenth seeded project.', 'u2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p16', 'Project Pi', 'Sixteenth seeded project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p17', 'Project Rho', 'Seventeenth seeded project.', 'u2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p18', 'Project Sigma', 'Eighteenth seeded project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p19', 'Project Tau', 'Nineteenth seeded project.', 'u2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO projects (id, name, description, user_id, created_at, updated_at) VALUES ('p20', 'Project Upsilon', 'Twentieth seeded project.', 'u1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert 25 Issues (with project_id foreign key)
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i1', 'Bug in login', 'Users cannot login with special characters', 'OPEN', 'HIGH', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i2', 'Add dark mode', 'Implement dark mode feature', 'IN_PROGRESS', 'MEDIUM', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i3', 'Performance issue', 'Page loads slowly', 'OPEN', 'LOW', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i4', 'Improve caching', 'Optimize API caching layer', 'IN_PROGRESS', 'HIGH', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i5', 'Fix navbar', 'Navbar overlaps content on mobile', 'DONE', 'LOW', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i6', 'Refactor services', 'Split monolithic service into modules', 'IN_PROGRESS', 'MEDIUM', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i7', 'Security headers', 'Add missing security headers', 'OPEN', 'HIGH', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i8', 'A11y pass', 'Accessibility pass on forms', 'IN_PROGRESS', 'MEDIUM', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i9', 'Update deps', 'Update Angular and Spring versions', 'OPEN', 'LOW', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i10', 'DB index', 'Add indexes to slow queries', 'IN_PROGRESS', 'HIGH', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i11', 'CI pipeline', 'Add unit test coverage gate', 'DONE', 'MEDIUM', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i12', 'Theme switcher', 'Add theme toggle to header', 'OPEN', 'LOW', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i13', 'Audit logs', 'Log admin actions', 'IN_PROGRESS', 'HIGH', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i14', 'Onboarding tour', 'Add product tour', 'OPEN', 'MEDIUM', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i15', 'Notification center', 'Unify notifications', 'DONE', 'LOW', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i16', 'Search relevance', 'Tune search ranking', 'IN_PROGRESS', 'MEDIUM', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i17', 'Rate limiting', 'Protect APIs from abuse', 'OPEN', 'HIGH', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i18', 'Docs site', 'Publish API docs', 'DONE', 'LOW', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i19', 'ETL job', 'Batch import data nightly', 'IN_PROGRESS', 'MEDIUM', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i20', 'Uptime monitor', 'Add health checks', 'OPEN', 'LOW', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i21', 'Email templates', 'Revamp transactional emails', 'IN_PROGRESS', 'MEDIUM', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i22', 'Log rotation', 'Rotate server logs', 'DONE', 'LOW', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i23', 'S3 cleanup', 'Prune old artifacts', 'OPEN', 'MEDIUM', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i24', 'Latency spikes', 'Investigate latency spikes', 'IN_PROGRESS', 'HIGH', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i25', 'Test flakiness', 'Stabilize flaky tests', 'OPEN', 'HIGH', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Assign users to issues (many-to-many join table)
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i1', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i2', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i3', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i4', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i5', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i6', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i7', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i8', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i9', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i10', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i11', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i12', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i13', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i14', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i15', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i16', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i17', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i18', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i19', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i20', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i21', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i22', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i23', 'u2');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i24', 'u1');
INSERT INTO issue_assignees (issue_id, user_id) VALUES ('i25', 'u2');

-- Optional: a few comments
INSERT INTO comments (id, user_id, text, issue_id, created_at) VALUES ('c1', 'u1', 'I can reproduce this issue.', 'i1', CURRENT_TIMESTAMP);
INSERT INTO comments (id, user_id, text, issue_id, created_at) VALUES ('c2', 'u2', 'Working on a fix now.', 'i1', CURRENT_TIMESTAMP);
INSERT INTO comments (id, user_id, text, issue_id, created_at) VALUES ('c3', 'u1', 'Dark mode design is ready.', 'i2', CURRENT_TIMESTAMP);
-- End of file


-- Additional auto-generated Issues: +10 per project (p1..p20)
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i26', 'Auto Issue P1 #1', 'Seeded extra issue 1 for project p1', 'OPEN', 'LOW', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i27', 'Auto Issue P1 #2', 'Seeded extra issue 2 for project p1', 'IN_PROGRESS', 'MEDIUM', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i28', 'Auto Issue P1 #3', 'Seeded extra issue 3 for project p1', 'DONE', 'HIGH', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i29', 'Auto Issue P1 #4', 'Seeded extra issue 4 for project p1', 'OPEN', 'LOW', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i30', 'Auto Issue P1 #5', 'Seeded extra issue 5 for project p1', 'IN_PROGRESS', 'MEDIUM', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i31', 'Auto Issue P1 #6', 'Seeded extra issue 6 for project p1', 'DONE', 'HIGH', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i32', 'Auto Issue P1 #7', 'Seeded extra issue 7 for project p1', 'OPEN', 'LOW', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i33', 'Auto Issue P1 #8', 'Seeded extra issue 8 for project p1', 'IN_PROGRESS', 'MEDIUM', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i34', 'Auto Issue P1 #9', 'Seeded extra issue 9 for project p1', 'DONE', 'HIGH', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i35', 'Auto Issue P1 #10', 'Seeded extra issue 10 for project p1', 'OPEN', 'LOW', 'p1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p2
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i36', 'Auto Issue P2 #1', 'Seeded extra issue 1 for project p2', 'IN_PROGRESS', 'MEDIUM', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i37', 'Auto Issue P2 #2', 'Seeded extra issue 2 for project p2', 'DONE', 'HIGH', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i38', 'Auto Issue P2 #3', 'Seeded extra issue 3 for project p2', 'OPEN', 'LOW', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i39', 'Auto Issue P2 #4', 'Seeded extra issue 4 for project p2', 'IN_PROGRESS', 'MEDIUM', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i40', 'Auto Issue P2 #5', 'Seeded extra issue 5 for project p2', 'DONE', 'HIGH', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i41', 'Auto Issue P2 #6', 'Seeded extra issue 6 for project p2', 'OPEN', 'LOW', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i42', 'Auto Issue P2 #7', 'Seeded extra issue 7 for project p2', 'IN_PROGRESS', 'MEDIUM', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i43', 'Auto Issue P2 #8', 'Seeded extra issue 8 for project p2', 'DONE', 'HIGH', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i44', 'Auto Issue P2 #9', 'Seeded extra issue 9 for project p2', 'OPEN', 'LOW', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i45', 'Auto Issue P2 #10', 'Seeded extra issue 10 for project p2', 'IN_PROGRESS', 'MEDIUM', 'p2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p3
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i46', 'Auto Issue P3 #1', 'Seeded extra issue 1 for project p3', 'DONE', 'HIGH', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i47', 'Auto Issue P3 #2', 'Seeded extra issue 2 for project p3', 'OPEN', 'LOW', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i48', 'Auto Issue P3 #3', 'Seeded extra issue 3 for project p3', 'IN_PROGRESS', 'MEDIUM', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i49', 'Auto Issue P3 #4', 'Seeded extra issue 4 for project p3', 'DONE', 'HIGH', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i50', 'Auto Issue P3 #5', 'Seeded extra issue 5 for project p3', 'OPEN', 'LOW', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i51', 'Auto Issue P3 #6', 'Seeded extra issue 6 for project p3', 'IN_PROGRESS', 'MEDIUM', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i52', 'Auto Issue P3 #7', 'Seeded extra issue 7 for project p3', 'DONE', 'HIGH', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i53', 'Auto Issue P3 #8', 'Seeded extra issue 8 for project p3', 'OPEN', 'LOW', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i54', 'Auto Issue P3 #9', 'Seeded extra issue 9 for project p3', 'IN_PROGRESS', 'MEDIUM', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i55', 'Auto Issue P3 #10', 'Seeded extra issue 10 for project p3', 'DONE', 'HIGH', 'p3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p4
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i56', 'Auto Issue P4 #1', 'Seeded extra issue 1 for project p4', 'OPEN', 'LOW', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i57', 'Auto Issue P4 #2', 'Seeded extra issue 2 for project p4', 'IN_PROGRESS', 'MEDIUM', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i58', 'Auto Issue P4 #3', 'Seeded extra issue 3 for project p4', 'DONE', 'HIGH', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i59', 'Auto Issue P4 #4', 'Seeded extra issue 4 for project p4', 'OPEN', 'LOW', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i60', 'Auto Issue P4 #5', 'Seeded extra issue 5 for project p4', 'IN_PROGRESS', 'MEDIUM', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i61', 'Auto Issue P4 #6', 'Seeded extra issue 6 for project p4', 'DONE', 'HIGH', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i62', 'Auto Issue P4 #7', 'Seeded extra issue 7 for project p4', 'OPEN', 'LOW', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i63', 'Auto Issue P4 #8', 'Seeded extra issue 8 for project p4', 'IN_PROGRESS', 'MEDIUM', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i64', 'Auto Issue P4 #9', 'Seeded extra issue 9 for project p4', 'DONE', 'HIGH', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i65', 'Auto Issue P4 #10', 'Seeded extra issue 10 for project p4', 'OPEN', 'LOW', 'p4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p5
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i66', 'Auto Issue P5 #1', 'Seeded extra issue 1 for project p5', 'IN_PROGRESS', 'MEDIUM', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i67', 'Auto Issue P5 #2', 'Seeded extra issue 2 for project p5', 'DONE', 'HIGH', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i68', 'Auto Issue P5 #3', 'Seeded extra issue 3 for project p5', 'OPEN', 'LOW', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i69', 'Auto Issue P5 #4', 'Seeded extra issue 4 for project p5', 'IN_PROGRESS', 'MEDIUM', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i70', 'Auto Issue P5 #5', 'Seeded extra issue 5 for project p5', 'DONE', 'HIGH', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i71', 'Auto Issue P5 #6', 'Seeded extra issue 6 for project p5', 'OPEN', 'LOW', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i72', 'Auto Issue P5 #7', 'Seeded extra issue 7 for project p5', 'IN_PROGRESS', 'MEDIUM', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i73', 'Auto Issue P5 #8', 'Seeded extra issue 8 for project p5', 'DONE', 'HIGH', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i74', 'Auto Issue P5 #9', 'Seeded extra issue 9 for project p5', 'OPEN', 'LOW', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i75', 'Auto Issue P5 #10', 'Seeded extra issue 10 for project p5', 'IN_PROGRESS', 'MEDIUM', 'p5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p6
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i76', 'Auto Issue P6 #1', 'Seeded extra issue 1 for project p6', 'DONE', 'HIGH', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i77', 'Auto Issue P6 #2', 'Seeded extra issue 2 for project p6', 'OPEN', 'LOW', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i78', 'Auto Issue P6 #3', 'Seeded extra issue 3 for project p6', 'IN_PROGRESS', 'MEDIUM', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i79', 'Auto Issue P6 #4', 'Seeded extra issue 4 for project p6', 'DONE', 'HIGH', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i80', 'Auto Issue P6 #5', 'Seeded extra issue 5 for project p6', 'OPEN', 'LOW', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i81', 'Auto Issue P6 #6', 'Seeded extra issue 6 for project p6', 'IN_PROGRESS', 'MEDIUM', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i82', 'Auto Issue P6 #7', 'Seeded extra issue 7 for project p6', 'DONE', 'HIGH', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i83', 'Auto Issue P6 #8', 'Seeded extra issue 8 for project p6', 'OPEN', 'LOW', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i84', 'Auto Issue P6 #9', 'Seeded extra issue 9 for project p6', 'IN_PROGRESS', 'MEDIUM', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i85', 'Auto Issue P6 #10', 'Seeded extra issue 10 for project p6', 'DONE', 'HIGH', 'p6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p7
-- ... truncated for brevity in this message generation ...

-- p7
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i86', 'Auto Issue P7 #1', 'Seeded extra issue 1 for project p7', 'OPEN', 'LOW', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i87', 'Auto Issue P7 #2', 'Seeded extra issue 2 for project p7', 'IN_PROGRESS', 'MEDIUM', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i88', 'Auto Issue P7 #3', 'Seeded extra issue 3 for project p7', 'DONE', 'HIGH', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i89', 'Auto Issue P7 #4', 'Seeded extra issue 4 for project p7', 'OPEN', 'LOW', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i90', 'Auto Issue P7 #5', 'Seeded extra issue 5 for project p7', 'IN_PROGRESS', 'MEDIUM', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i91', 'Auto Issue P7 #6', 'Seeded extra issue 6 for project p7', 'DONE', 'HIGH', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i92', 'Auto Issue P7 #7', 'Seeded extra issue 7 for project p7', 'OPEN', 'LOW', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i93', 'Auto Issue P7 #8', 'Seeded extra issue 8 for project p7', 'IN_PROGRESS', 'MEDIUM', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i94', 'Auto Issue P7 #9', 'Seeded extra issue 9 for project p7', 'DONE', 'HIGH', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i95', 'Auto Issue P7 #10', 'Seeded extra issue 10 for project p7', 'OPEN', 'LOW', 'p7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p8
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i96', 'Auto Issue P8 #1', 'Seeded extra issue 1 for project p8', 'IN_PROGRESS', 'MEDIUM', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i97', 'Auto Issue P8 #2', 'Seeded extra issue 2 for project p8', 'DONE', 'HIGH', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i98', 'Auto Issue P8 #3', 'Seeded extra issue 3 for project p8', 'OPEN', 'LOW', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i99', 'Auto Issue P8 #4', 'Seeded extra issue 4 for project p8', 'IN_PROGRESS', 'MEDIUM', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i100', 'Auto Issue P8 #5', 'Seeded extra issue 5 for project p8', 'DONE', 'HIGH', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i101', 'Auto Issue P8 #6', 'Seeded extra issue 6 for project p8', 'OPEN', 'LOW', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i102', 'Auto Issue P8 #7', 'Seeded extra issue 7 for project p8', 'IN_PROGRESS', 'MEDIUM', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i103', 'Auto Issue P8 #8', 'Seeded extra issue 8 for project p8', 'DONE', 'HIGH', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i104', 'Auto Issue P8 #9', 'Seeded extra issue 9 for project p8', 'OPEN', 'LOW', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i105', 'Auto Issue P8 #10', 'Seeded extra issue 10 for project p8', 'IN_PROGRESS', 'MEDIUM', 'p8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p9
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i106', 'Auto Issue P9 #1', 'Seeded extra issue 1 for project p9', 'DONE', 'HIGH', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i107', 'Auto Issue P9 #2', 'Seeded extra issue 2 for project p9', 'OPEN', 'LOW', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i108', 'Auto Issue P9 #3', 'Seeded extra issue 3 for project p9', 'IN_PROGRESS', 'MEDIUM', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i109', 'Auto Issue P9 #4', 'Seeded extra issue 4 for project p9', 'DONE', 'HIGH', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i110', 'Auto Issue P9 #5', 'Seeded extra issue 5 for project p9', 'OPEN', 'LOW', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i111', 'Auto Issue P9 #6', 'Seeded extra issue 6 for project p9', 'IN_PROGRESS', 'MEDIUM', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i112', 'Auto Issue P9 #7', 'Seeded extra issue 7 for project p9', 'DONE', 'HIGH', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i113', 'Auto Issue P9 #8', 'Seeded extra issue 8 for project p9', 'OPEN', 'LOW', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i114', 'Auto Issue P9 #9', 'Seeded extra issue 9 for project p9', 'IN_PROGRESS', 'MEDIUM', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i115', 'Auto Issue P9 #10', 'Seeded extra issue 10 for project p9', 'DONE', 'HIGH', 'p9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p10
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i116', 'Auto Issue P10 #1', 'Seeded extra issue 1 for project p10', 'OPEN', 'LOW', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i117', 'Auto Issue P10 #2', 'Seeded extra issue 2 for project p10', 'IN_PROGRESS', 'MEDIUM', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i118', 'Auto Issue P10 #3', 'Seeded extra issue 3 for project p10', 'DONE', 'HIGH', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i119', 'Auto Issue P10 #4', 'Seeded extra issue 4 for project p10', 'OPEN', 'LOW', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i120', 'Auto Issue P10 #5', 'Seeded extra issue 5 for project p10', 'IN_PROGRESS', 'MEDIUM', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i121', 'Auto Issue P10 #6', 'Seeded extra issue 6 for project p10', 'DONE', 'HIGH', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i122', 'Auto Issue P10 #7', 'Seeded extra issue 7 for project p10', 'OPEN', 'LOW', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i123', 'Auto Issue P10 #8', 'Seeded extra issue 8 for project p10', 'IN_PROGRESS', 'MEDIUM', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i124', 'Auto Issue P10 #9', 'Seeded extra issue 9 for project p10', 'DONE', 'HIGH', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i125', 'Auto Issue P10 #10', 'Seeded extra issue 10 for project p10', 'OPEN', 'LOW', 'p10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p11
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i126', 'Auto Issue P11 #1', 'Seeded extra issue 1 for project p11', 'IN_PROGRESS', 'MEDIUM', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i127', 'Auto Issue P11 #2', 'Seeded extra issue 2 for project p11', 'DONE', 'HIGH', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i128', 'Auto Issue P11 #3', 'Seeded extra issue 3 for project p11', 'OPEN', 'LOW', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i129', 'Auto Issue P11 #4', 'Seeded extra issue 4 for project p11', 'IN_PROGRESS', 'MEDIUM', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i130', 'Auto Issue P11 #5', 'Seeded extra issue 5 for project p11', 'DONE', 'HIGH', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i131', 'Auto Issue P11 #6', 'Seeded extra issue 6 for project p11', 'OPEN', 'LOW', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i132', 'Auto Issue P11 #7', 'Seeded extra issue 7 for project p11', 'IN_PROGRESS', 'MEDIUM', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i133', 'Auto Issue P11 #8', 'Seeded extra issue 8 for project p11', 'DONE', 'HIGH', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i134', 'Auto Issue P11 #9', 'Seeded extra issue 9 for project p11', 'OPEN', 'LOW', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i135', 'Auto Issue P11 #10', 'Seeded extra issue 10 for project p11', 'IN_PROGRESS', 'MEDIUM', 'p11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p12
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i136', 'Auto Issue P12 #1', 'Seeded extra issue 1 for project p12', 'DONE', 'HIGH', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i137', 'Auto Issue P12 #2', 'Seeded extra issue 2 for project p12', 'OPEN', 'LOW', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i138', 'Auto Issue P12 #3', 'Seeded extra issue 3 for project p12', 'IN_PROGRESS', 'MEDIUM', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i139', 'Auto Issue P12 #4', 'Seeded extra issue 4 for project p12', 'DONE', 'HIGH', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i140', 'Auto Issue P12 #5', 'Seeded extra issue 5 for project p12', 'OPEN', 'LOW', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i141', 'Auto Issue P12 #6', 'Seeded extra issue 6 for project p12', 'IN_PROGRESS', 'MEDIUM', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i142', 'Auto Issue P12 #7', 'Seeded extra issue 7 for project p12', 'DONE', 'HIGH', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i143', 'Auto Issue P12 #8', 'Seeded extra issue 8 for project p12', 'OPEN', 'LOW', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i144', 'Auto Issue P12 #9', 'Seeded extra issue 9 for project p12', 'IN_PROGRESS', 'MEDIUM', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i145', 'Auto Issue P12 #10', 'Seeded extra issue 10 for project p12', 'DONE', 'HIGH', 'p12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p13
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i146', 'Auto Issue P13 #1', 'Seeded extra issue 1 for project p13', 'OPEN', 'LOW', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i147', 'Auto Issue P13 #2', 'Seeded extra issue 2 for project p13', 'IN_PROGRESS', 'MEDIUM', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i148', 'Auto Issue P13 #3', 'Seeded extra issue 3 for project p13', 'DONE', 'HIGH', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i149', 'Auto Issue P13 #4', 'Seeded extra issue 4 for project p13', 'OPEN', 'LOW', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i150', 'Auto Issue P13 #5', 'Seeded extra issue 5 for project p13', 'IN_PROGRESS', 'MEDIUM', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i151', 'Auto Issue P13 #6', 'Seeded extra issue 6 for project p13', 'DONE', 'HIGH', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i152', 'Auto Issue P13 #7', 'Seeded extra issue 7 for project p13', 'OPEN', 'LOW', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i153', 'Auto Issue P13 #8', 'Seeded extra issue 8 for project p13', 'IN_PROGRESS', 'MEDIUM', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i154', 'Auto Issue P13 #9', 'Seeded extra issue 9 for project p13', 'DONE', 'HIGH', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i155', 'Auto Issue P13 #10', 'Seeded extra issue 10 for project p13', 'OPEN', 'LOW', 'p13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p14
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i156', 'Auto Issue P14 #1', 'Seeded extra issue 1 for project p14', 'IN_PROGRESS', 'MEDIUM', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i157', 'Auto Issue P14 #2', 'Seeded extra issue 2 for project p14', 'DONE', 'HIGH', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i158', 'Auto Issue P14 #3', 'Seeded extra issue 3 for project p14', 'OPEN', 'LOW', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i159', 'Auto Issue P14 #4', 'Seeded extra issue 4 for project p14', 'IN_PROGRESS', 'MEDIUM', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i160', 'Auto Issue P14 #5', 'Seeded extra issue 5 for project p14', 'DONE', 'HIGH', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i161', 'Auto Issue P14 #6', 'Seeded extra issue 6 for project p14', 'OPEN', 'LOW', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i162', 'Auto Issue P14 #7', 'Seeded extra issue 7 for project p14', 'IN_PROGRESS', 'MEDIUM', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i163', 'Auto Issue P14 #8', 'Seeded extra issue 8 for project p14', 'DONE', 'HIGH', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i164', 'Auto Issue P14 #9', 'Seeded extra issue 9 for project p14', 'OPEN', 'LOW', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i165', 'Auto Issue P14 #10', 'Seeded extra issue 10 for project p14', 'IN_PROGRESS', 'MEDIUM', 'p14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p15
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i166', 'Auto Issue P15 #1', 'Seeded extra issue 1 for project p15', 'DONE', 'HIGH', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i167', 'Auto Issue P15 #2', 'Seeded extra issue 2 for project p15', 'OPEN', 'LOW', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i168', 'Auto Issue P15 #3', 'Seeded extra issue 3 for project p15', 'IN_PROGRESS', 'MEDIUM', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i169', 'Auto Issue P15 #4', 'Seeded extra issue 4 for project p15', 'DONE', 'HIGH', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i170', 'Auto Issue P15 #5', 'Seeded extra issue 5 for project p15', 'OPEN', 'LOW', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i171', 'Auto Issue P15 #6', 'Seeded extra issue 6 for project p15', 'IN_PROGRESS', 'MEDIUM', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i172', 'Auto Issue P15 #7', 'Seeded extra issue 7 for project p15', 'DONE', 'HIGH', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i173', 'Auto Issue P15 #8', 'Seeded extra issue 8 for project p15', 'OPEN', 'LOW', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i174', 'Auto Issue P15 #9', 'Seeded extra issue 9 for project p15', 'IN_PROGRESS', 'MEDIUM', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i175', 'Auto Issue P15 #10', 'Seeded extra issue 10 for project p15', 'DONE', 'HIGH', 'p15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p16
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i176', 'Auto Issue P16 #1', 'Seeded extra issue 1 for project p16', 'OPEN', 'LOW', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i177', 'Auto Issue P16 #2', 'Seeded extra issue 2 for project p16', 'IN_PROGRESS', 'MEDIUM', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i178', 'Auto Issue P16 #3', 'Seeded extra issue 3 for project p16', 'DONE', 'HIGH', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i179', 'Auto Issue P16 #4', 'Seeded extra issue 4 for project p16', 'OPEN', 'LOW', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i180', 'Auto Issue P16 #5', 'Seeded extra issue 5 for project p16', 'IN_PROGRESS', 'MEDIUM', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i181', 'Auto Issue P16 #6', 'Seeded extra issue 6 for project p16', 'DONE', 'HIGH', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i182', 'Auto Issue P16 #7', 'Seeded extra issue 7 for project p16', 'OPEN', 'LOW', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i183', 'Auto Issue P16 #8', 'Seeded extra issue 8 for project p16', 'IN_PROGRESS', 'MEDIUM', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i184', 'Auto Issue P16 #9', 'Seeded extra issue 9 for project p16', 'DONE', 'HIGH', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i185', 'Auto Issue P16 #10', 'Seeded extra issue 10 for project p16', 'OPEN', 'LOW', 'p16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p17
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i186', 'Auto Issue P17 #1', 'Seeded extra issue 1 for project p17', 'IN_PROGRESS', 'MEDIUM', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i187', 'Auto Issue P17 #2', 'Seeded extra issue 2 for project p17', 'DONE', 'HIGH', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i188', 'Auto Issue P17 #3', 'Seeded extra issue 3 for project p17', 'OPEN', 'LOW', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i189', 'Auto Issue P17 #4', 'Seeded extra issue 4 for project p17', 'IN_PROGRESS', 'MEDIUM', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i190', 'Auto Issue P17 #5', 'Seeded extra issue 5 for project p17', 'DONE', 'HIGH', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i191', 'Auto Issue P17 #6', 'Seeded extra issue 6 for project p17', 'OPEN', 'LOW', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i192', 'Auto Issue P17 #7', 'Seeded extra issue 7 for project p17', 'IN_PROGRESS', 'MEDIUM', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i193', 'Auto Issue P17 #8', 'Seeded extra issue 8 for project p17', 'DONE', 'HIGH', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i194', 'Auto Issue P17 #9', 'Seeded extra issue 9 for project p17', 'OPEN', 'LOW', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i195', 'Auto Issue P17 #10', 'Seeded extra issue 10 for project p17', 'IN_PROGRESS', 'MEDIUM', 'p17', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p18
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i196', 'Auto Issue P18 #1', 'Seeded extra issue 1 for project p18', 'DONE', 'HIGH', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i197', 'Auto Issue P18 #2', 'Seeded extra issue 2 for project p18', 'OPEN', 'LOW', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i198', 'Auto Issue P18 #3', 'Seeded extra issue 3 for project p18', 'IN_PROGRESS', 'MEDIUM', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i199', 'Auto Issue P18 #4', 'Seeded extra issue 4 for project p18', 'DONE', 'HIGH', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i200', 'Auto Issue P18 #5', 'Seeded extra issue 5 for project p18', 'OPEN', 'LOW', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i201', 'Auto Issue P18 #6', 'Seeded extra issue 6 for project p18', 'IN_PROGRESS', 'MEDIUM', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i202', 'Auto Issue P18 #7', 'Seeded extra issue 7 for project p18', 'DONE', 'HIGH', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i203', 'Auto Issue P18 #8', 'Seeded extra issue 8 for project p18', 'OPEN', 'LOW', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i204', 'Auto Issue P18 #9', 'Seeded extra issue 9 for project p18', 'IN_PROGRESS', 'MEDIUM', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i205', 'Auto Issue P18 #10', 'Seeded extra issue 10 for project p18', 'DONE', 'HIGH', 'p18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p19
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i206', 'Auto Issue P19 #1', 'Seeded extra issue 1 for project p19', 'OPEN', 'LOW', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i207', 'Auto Issue P19 #2', 'Seeded extra issue 2 for project p19', 'IN_PROGRESS', 'MEDIUM', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i208', 'Auto Issue P19 #3', 'Seeded extra issue 3 for project p19', 'DONE', 'HIGH', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i209', 'Auto Issue P19 #4', 'Seeded extra issue 4 for project p19', 'OPEN', 'LOW', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i210', 'Auto Issue P19 #5', 'Seeded extra issue 5 for project p19', 'IN_PROGRESS', 'MEDIUM', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i211', 'Auto Issue P19 #6', 'Seeded extra issue 6 for project p19', 'DONE', 'HIGH', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i212', 'Auto Issue P19 #7', 'Seeded extra issue 7 for project p19', 'OPEN', 'LOW', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i213', 'Auto Issue P19 #8', 'Seeded extra issue 8 for project p19', 'IN_PROGRESS', 'MEDIUM', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i214', 'Auto Issue P19 #9', 'Seeded extra issue 9 for project p19', 'DONE', 'HIGH', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i215', 'Auto Issue P19 #10', 'Seeded extra issue 10 for project p19', 'OPEN', 'LOW', 'p19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- p20
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i216', 'Auto Issue P20 #1', 'Seeded extra issue 1 for project p20', 'IN_PROGRESS', 'MEDIUM', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i217', 'Auto Issue P20 #2', 'Seeded extra issue 2 for project p20', 'DONE', 'HIGH', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i218', 'Auto Issue P20 #3', 'Seeded extra issue 3 for project p20', 'OPEN', 'LOW', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i219', 'Auto Issue P20 #4', 'Seeded extra issue 4 for project p20', 'IN_PROGRESS', 'MEDIUM', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i220', 'Auto Issue P20 #5', 'Seeded extra issue 5 for project p20', 'DONE', 'HIGH', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i221', 'Auto Issue P20 #6', 'Seeded extra issue 6 for project p20', 'OPEN', 'LOW', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i222', 'Auto Issue P20 #7', 'Seeded extra issue 7 for project p20', 'IN_PROGRESS', 'MEDIUM', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i223', 'Auto Issue P20 #8', 'Seeded extra issue 8 for project p20', 'DONE', 'HIGH', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i224', 'Auto Issue P20 #9', 'Seeded extra issue 9 for project p20', 'OPEN', 'LOW', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO issues (id, title, description, status, priority, project_id, created_at, updated_at) VALUES ('i225', 'Auto Issue P20 #10', 'Seeded extra issue 10 for project p20', 'IN_PROGRESS', 'MEDIUM', 'p20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
