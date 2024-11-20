Here’s a quick breakdown of **Grp 2** topics and their practical questions with solutions.

---

### **Grp 2 Topics**
1. **Cross Joins and Natural Joins**
2. **Join Clauses (INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN)**
3. **Inner vs. Outer Joins**
4. **Self Joins and Hierarchical Queries**

---

### **Practical Questions for Grp 2**

#### **6-1: Cross Joins and Natural Joins**
**Scenario**: Consider the tables:

**Employees**  
| EmployeeID | Name       | DepartmentID |
|------------|------------|--------------|
| 1          | John Smith | 101          |
| 2          | Jane Doe   | 102          |

**Departments**  
| DepartmentID | DepartmentName |
|--------------|----------------|
| 101          | HR             |
| 102          | IT             |

**Task 1**: Write a query to create a **CROSS JOIN** of `Employees` and `Departments`.

**Task 2**: Write a query to perform a **NATURAL JOIN** on `Employees` and `Departments`.

---

#### **6-2: Join Clauses**
Using the same tables:

**Task 3**: Write a query to display the names of employees along with their department names using an **INNER JOIN**.

---

#### **6-3: Inner vs. Outer Joins**
Consider these new rows in **Employees**:

| EmployeeID | Name         | DepartmentID |
|------------|--------------|--------------|
| 3          | Alice Green  | NULL         |

**Task 4**: Write a query to display all employees and their department names using a **LEFT OUTER JOIN**.

**Task 5**: Write a query to display all departments and the employees in them using a **RIGHT OUTER JOIN**.

---

#### **6-4: Self Joins and Hierarchical Queries**
Consider the table **EmployeesWithManager**:

| EmployeeID | Name       | ManagerID |
|------------|------------|-----------|
| 1          | John Smith | NULL      |
| 2          | Jane Doe   | 1         |
| 3          | Bob Brown  | 1         |
| 4          | Alice Green| 2         |

**Task 6**: Write a query to display employees and their manager names using a **SELF JOIN**.

**Task 7**: Write a query to display the hierarchy of employees reporting to managers using a **CONNECT BY PRIOR** clause.

---

### **Solutions for Grp 2**

#### **6-1: Cross Joins and Natural Joins**

**Solution 1**: **CROSS JOIN**
```sql
SELECT Employees.Name AS EmployeeName, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments;
```

**Solution 2**: **NATURAL JOIN**
```sql
SELECT Name, DepartmentName
FROM Employees
NATURAL JOIN Departments;
```
*(Works if both tables have a column with the same name, e.g., `DepartmentID`.)*

---

#### **6-2: Join Clauses**

**Solution 3**: **INNER JOIN**
```sql
SELECT Employees.Name AS EmployeeName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

---

#### **6-3: Inner vs. Outer Joins**

**Solution 4**: **LEFT OUTER JOIN**
```sql
SELECT Employees.Name AS EmployeeName, Departments.DepartmentName
FROM Employees
LEFT OUTER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

**Solution 5**: **RIGHT OUTER JOIN**
```sql
SELECT Employees.Name AS EmployeeName, Departments.DepartmentName
FROM Employees
RIGHT OUTER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

---

#### **6-4: Self Joins and Hierarchical Queries**

**Solution 6**: **SELF JOIN**
```sql
SELECT E1.Name AS EmployeeName, E2.Name AS ManagerName
FROM EmployeesWithManager E1
LEFT JOIN EmployeesWithManager E2
ON E1.ManagerID = E2.EmployeeID;
```

**Solution 7**: **Hierarchy with `CONNECT BY PRIOR`**
*(Oracle-specific syntax)*:
```sql
SELECT EmployeeID, Name, ManagerID, LEVEL
FROM EmployeesWithManager
CONNECT BY PRIOR EmployeeID = ManagerID
START WITH ManagerID IS NULL;
```

---

### **Key Notes**
- **CROSS JOIN**: Combines every row from the first table with every row from the second.
- **NATURAL JOIN**: Matches columns with the same names automatically.
- **INNER JOIN**: Fetches rows that match in both tables.
- **LEFT/RIGHT OUTER JOIN**: Includes unmatched rows from the left/right table respectively.
- **SELF JOIN**: Joins a table to itself (useful for hierarchical data).
- **CONNECT BY PRIOR**: Used in Oracle to navigate parent-child relationships.

Let me know if you'd like further explanation! 😊