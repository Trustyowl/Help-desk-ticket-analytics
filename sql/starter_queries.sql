SELECT * FROM tickets;

SELECT ticket_id, department, category, priority
FROM tickets;

SELECT *
FROM tickets
WHERE priority = 'High';

SELECT *
FROM tickets
ORDER BY resolution_time_hours DESC;

SELECT ticket_id, category, resolution_time_hours
FROM tickets
WHERE resolution_time_hours > 5;

SELECT ticket_id, department, category, satisfaction_score
FROM tickets
ORDER BY satisfaction_score ASC
LIMIT 2;

SELECT ticket_id, category, technician, resolution_time_hours
FROM tickets
WHERE priority = 'High'
ORDER BY resolution_time_hours DESC
LIMIT 3;

SELECT COUNT(*) AS total_tickets
FROM tickets;

SELECT AVG(resolution_time_hours) AS average_resolution_time
FROM tickets;

SELECT MIN(resolution_time_hours) AS fastest_resolution
FROM tickets;

SELECT MAX(resolution_time_hours) AS slowest_resolution
FROM tickets;

SELECT priority, COUNT(*) AS ticket_count
FROM tickets
GROUP BY priority;
