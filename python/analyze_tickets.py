import pandas as pd

csv_path = r"C:\Help-Desk-Ticket-Analytics\data\helpdesk_tickets.csv"

tickets = pd.read_csv(csv_path)

print("First 5 rows:")
print(tickets.head())

print("\nDataset information:")
print(tickets.info())

print("\nTotal tickets:")
print(len(tickets))