CREATE TABLE tickets (
    ticket_id INTEGER PRIMARY KEY,
    opened_date DATE,
    closed_date DATE,
    department TEXT,
    category TEXT,
    priority TEXT,
    technician TEXT,
    status TEXT,
    resolution_time_hours REAL,
    sla_status TEXT,
    satisfaction_score INTEGER
);