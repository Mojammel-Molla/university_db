# PostgreSQL Interview Questions

1. **What is PostgreSQL?**

   - PostgreSQL is a free and open database system used to store and manage
     data.

2. **What is the purpose of a database schema in PostgreSQL?**

   - A schema helps organize tables and other objects in a database, keeping
     everything structured and separate.

3. **Explain the primary key and foreign key concepts in PostgreSQL.**

   - **Primary Key**: A unique ID for each row in a table.
   - **Foreign Key**: A link between two tables to maintain relationships.

4. **What is the difference between the VARCHAR and CHAR data types?**

   - **VARCHAR**: Stores text with flexible length.
   - **CHAR**: Stores text with fixed length, filling any extra space.

5. **Explain the purpose of the WHERE clause in a SELECT statement.**

   - The `WHERE` clause is used to filter rows based on certain conditions.

6. **What are the LIMIT and OFFSET clauses used for?**

   - `LIMIT` controls how many rows are shown, and `OFFSET` skips a number of
     rows.

7. **How can you perform data modification using UPDATE statements?**

   - Use `UPDATE` to change existing data in a table, usually with a `WHERE`
     clause to target specific rows.

8. **What is the significance of the JOIN operation, and how does it work in
   PostgreSQL?**

   - `JOIN` combines data from two or more tables by matching related columns.

9. **Explain the GROUP BY clause and its role in aggregation operations.**

   - `GROUP BY` is used to group rows with the same values, often used with
     aggregate functions like `COUNT` or `SUM`.

10. **How can you calculate aggregate functions like COUNT, SUM, and AVG in
    PostgreSQL?**

    - Use `COUNT` to count rows, `SUM` to add up values, and `AVG` to find the
      average of values.

11. **What is the purpose of an index in PostgreSQL, and how does it optimize
    query performance?**

    - An index makes searching for data faster by organizing it in a way that
      speeds up lookups.

12. **Explain the concept of a PostgreSQL view and how it differs from a
    table.**
    - A view is like a saved query that shows data from a table, but it doesn’t
      store the data itself.
