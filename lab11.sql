-- Assignments for a Specific Course 
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMP1234%'
ORDER BY due_date;

-- Earliest Assignment Due Date
SELECT min(due_date) FROM assignments;

-- Latest Assignment Due Date
SELECT max(due_date) FROM assignments;

-- Assignments Due on a Specific Date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- Find All Assignments Due in October
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- Find the Most Recent Completed Assignment
SELECT max(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';

-- Additional Task 1
SELECT count(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';

-- Additional Task 2
