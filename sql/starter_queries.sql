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

