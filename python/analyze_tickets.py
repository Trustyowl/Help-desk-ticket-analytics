import pandas as pd

csv_path = r"C:\Help-Desk-Ticket-Analytics\data\helpdesk_tickets.csv"

tickets = pd.read_csv(csv_path)

print("First 5 rows:")
print(tickets.head())

print("\nDataset information:")
print(tickets.info())

print("\nTotal tickets:")
print(len(tickets))

print("\nAverage resolution time:")
print(tickets["resolution_time_hours"].mean())

print("\nAverage satisfaction score:")
print(tickets["satisfaction_score"].mean())

print("\nTickets by priority:")
print(tickets["priority"].value_counts())

print("\nTickets by department:")
print(tickets["department"].value_counts())