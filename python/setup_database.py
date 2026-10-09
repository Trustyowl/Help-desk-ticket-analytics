import sqlite3
import csv

database_path = r"C:\Help-Desk-Ticket-Analytics\data\helpdesk.db"
csv_path = r"C:\Help-Desk-Ticket-Analytics\data\helpdesk_tickets.csv"

connection = sqlite3.connect(database_path)
cursor = connection.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS tickets (
    ticket_id INTEGER PRIMARY KEY,
    opened_date TEXT,
    closed_date TEXT,
    department TEXT,
    category TEXT,
    priority TEXT,
    technician TEXT,
    status TEXT,
    resolution_time_hours REAL,
    sla_status TEXT,
    satisfaction_score INTEGER
)
""")

with open(csv_path, newline="", encoding="utf-8") as file:
    reader = csv.DictReader(file)

    for row in reader:
        cursor.execute("""
        INSERT OR REPLACE INTO tickets (
            ticket_id,
            opened_date,
            closed_date,
            department,
            category,
            priority,
            technician,
            status,
            resolution_time_hours,
            sla_status,
            satisfaction_score
        )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, (
            int(row["ticket_id"]),
            row["opened_date"],
            row["closed_date"],
            row["department"],
            row["category"],
            row["priority"],
            row["technician"],
            row["status"],
            float(row["resolution_time_hours"]),
            row["sla_status"],
            int(row["satisfaction_score"])
        ))

connection.commit()
connection.close()

print("Database created and ticket data imported successfully.")