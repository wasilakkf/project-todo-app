CREATE TABLE task (
	task_id INT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	description VARCHAR(300),
	due_date DATE,
	priority INT NOT NULL DEFAULT 1,
	completed BIT NOT NULL DEFAULT 0,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	project_id INT,
	FOREIGN KEY(project_id) REFERENCES project(project_id) ON DELETE CASCADE
);