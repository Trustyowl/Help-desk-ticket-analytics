import pandas as pd
import matplotlib.pyplot as plt

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

print("\nMissing values by column:")
print(tickets.isnull().sum())

print("\nAverage resolution time by department:")
print(
    tickets.groupby("department")["resolution_time_hours"]
    .mean()
    .sort_values(ascending=False)
)

print("\nAverage resolution time by priority:")
print(
    tickets.groupby("priority")["resolution_time_hours"]
    .mean()
    .sort_values(ascending=False)
)

print("\nAverage satisfaction by technician:")
print(
    tickets.groupby("technician")["satisfaction_score"]
    .mean()
    .sort_values(ascending=False)
)

priority_counts = tickets["priority"].value_counts()

priority_counts.plot(
    kind="bar",
    title="Help Desk Tickets by Priority"
)

plt.xlabel("Priority")
plt.ylabel("Number of Tickets")
plt.tight_layout()

plt.savefig(
    r"C:\Help-Desk-Ticket-Analytics\screenshots\tickets_by_priority.png"
)

plt.show()

sla_counts = tickets["sla_status"].value_counts()

sla_counts.plot(
    kind="bar",
    title="SLA Performance"
)

plt.xlabel("SLA Status")
plt.ylabel("Number of Tickets")
plt.tight_layout()

plt.savefig(
    r"C:\Help-Desk-Ticket-Analytics\screenshots\sla_performance.png"
)

plt.close()

department_counts = tickets["department"].value_counts()

department_counts.plot(
    kind="bar",
    title="Help Desk Tickets by Department"
)

plt.xlabel("Department")
plt.ylabel("Number of Tickets")
plt.tight_layout()

plt.savefig(
    r"C:\Help-Desk-Ticket-Analytics\screenshots\tickets_by_department.png"
)

plt.close()

technician_resolution = (
    tickets.groupby("technician")["resolution_time_hours"]
    .mean()
    .sort_values()
)

technician_resolution.plot(
    kind="bar",
    title="Average Resolution Time by Technician"
)

plt.xlabel("Technician")
plt.ylabel("Average Resolution Time (Hours)")
plt.tight_layout()

plt.savefig(
    r"C:\Help-Desk-Ticket-Analytics\screenshots\technician_resolution_time.png"
)

plt.close()



