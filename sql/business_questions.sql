-- Which departments submit the most tickets?

SELECT
    department,
    COUNT(*) AS ticket_count
FROM tickets
GROUP BY department
ORDER BY ticket_count DESC;


-- Which ticket categories take the longest to resolve?

SELECT
    category,
    AVG(resolution_time_hours) AS avg_resolution_time
FROM tickets
GROUP BY category
ORDER BY avg_resolution_time DESC;


-- Which categories have the lowest customer satisfaction?

SELECT
    category,
    AVG(satisfaction_score) AS avg_satisfaction
FROM tickets
GROUP BY category
ORDER BY avg_satisfaction ASC;


-- Which departments have the most SLA misses?

SELECT
    department,
    COUNT(*) AS missed_sla_tickets
FROM tickets
WHERE sla_status = 'Missed'
GROUP BY department
ORDER BY missed_sla_tickets DESC;

SELECT
    technician,
    COUNT(*) AS total_tickets,
    SUM(CASE WHEN sla_status = 'Met' THEN 1 ELSE 0 END) AS sla_met,
    SUM(CASE WHEN sla_status = 'Missed' THEN 1 ELSE 0 END) AS sla_missed
FROM tickets
GROUP BY technician
ORDER BY sla_met DESC;

SELECT
    priority,
    COUNT(*) AS ticket_count,
    AVG(resolution_time_hours) AS avg_resolution_time
FROM tickets
GROUP BY priority
ORDER BY avg_resolution_time DESC;

SELECT
    opened_date,
    COUNT(*) AS tickets_opened
FROM tickets
GROUP BY opened_date
ORDER BY opened_date;