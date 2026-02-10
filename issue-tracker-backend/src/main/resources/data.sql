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
