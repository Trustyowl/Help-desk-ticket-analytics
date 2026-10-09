SELECT * FROM tickets;

SELECT ticket_id, department, category, priority
FROM tickets;

SELECT *
FROM tickets
WHERE priority = 'High';

SELECT *
FROM tickets
ORDER BY resolution_time_hours DESC;