import sqlite3

connection = sqlite3.connect(
    r"C:\Help-Desk-Ticket-Analytics\data\helpdesk.db"
)

cursor = connection.cursor()

print("All tickets:")
cursor.execute("SELECT * FROM tickets")

for row in cursor.fetchall():
    print(row)

print("\nHigh priority tickets:")
cursor.execute("""
SELECT ticket_id, department, category, priority
FROM tickets
WHERE priority = 'High'
""")

for row in cursor.fetchall():
    print(row)

connection.close()