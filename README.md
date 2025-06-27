
#  Task 4 – Aggregate Functions and Grouping (SQL Developer Internship)

This project demonstrates the use of SQL aggregate functions and grouping techniques to summarize data from a student payment system. It includes calculations such as total payments, averages, group-level filtering with `HAVING`, and more.

---

# Tables Used

- **Students**: Basic student information.
- **Payments**: Payment transactions made by students.

---

# Key Concepts Demonstrated

- `SUM()` – Total of numeric values
- `AVG()` – Average values
- `COUNT()` – Count records and distinct entries
- `MAX()`, `MIN()` – Highest/lowest values
- `GROUP BY` – Categorize data by student or attribute
- `HAVING` – Filter grouped results
- `ROUND()` – Format results to specific decimals

---

# How to Run

1. Open MySQL Workbench or any SQL tool.
2. Run the table creation and `INSERT` statements for `Students` and `Payments`.
3. Execute the aggregate queries one by one to analyze grouped data.

---

# Example Queries

- Total paid by each student:
```sql
SELECT student_id, SUM(amount) AS total_paid
FROM Payments
GROUP BY student_id;
```

- Students who paid more than ₹7,000:
```sql
SELECT student_id, SUM(amount) AS total_paid
FROM Payments
GROUP BY student_id
HAVING SUM(amount) > 7000;
```

- Average payment (rounded to 2 decimal places):
```sql
SELECT ROUND(AVG(amount), 2) AS avg_payment
FROM Payments;

---

#🧑‍💻 Author

Ritesh Ghongde – Intern, SQL Developer Program

---

## 📂 Folder Structure

```

