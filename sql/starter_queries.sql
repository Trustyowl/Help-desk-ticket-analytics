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

SELECT department, COUNT(*) AS ticket_count
FROM tickets
GROUP BY department
ORDER BY ticket_count DESC;

SELECT category, COUNT(*) AS ticket_count
FROM tickets
GROUP BY category
ORDER BY ticket_count DESC;

SELECT department, AVG(resolution_time_hours) AS avg_resolution_time
FROM tickets
GROUP BY department
ORDER BY avg_resolution_time DESC;

SELECT *
FROM tickets
WHERE priority = 'High'
AND sla_status = 'Missed';

SELECT *
FROM tickets
WHERE department = 'HR'
OR department = 'Finance';

SELECT *
FROM tickets
WHERE priority IN ('High', 'Critical');

SELECT *
FROM tickets
WHERE opened_date >= '2026-09-03';

SELECT ticket_id, department, category, priority, resolution_time_hours
FROM tickets
WHERE priority IN ('High', 'Critical')
AND resolution_time_hours > 2
ORDER BY resolution_time_hours DESC;

SELECT
    ticket_id,
    category,
    resolution_time_hours,
    CASE
        WHEN resolution_time_hours <= 2 THEN 'Fast'
        WHEN resolution_time_hours <= 8 THEN 'Normal'
        ELSE 'Slow'
    END AS resolution_speed
FROM tickets;

SELECT
    sla_status,
    COUNT(*) AS ticket_count
FROM tickets
GROUP BY sla_status;

SELECT
    priority,
    COUNT(*) AS missed_sla_tickets
FROM tickets
WHERE sla_status = 'Missed'
GROUP BY priority
ORDER BY missed_sla_tickets DESC;
