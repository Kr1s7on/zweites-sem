### **Sections 1 and 2: Basics of SELECT and WHERE**
#### **Topics Covered**
1. **SELECT**: Extract data from one or more columns.
2. **WHERE**: Filter rows based on conditions.

---

### **Practical Questions**
#### **1. Basic SELECT**
Consider the table **Employees**:
| EmployeeID | Name        | Department | Salary  |
|------------|-------------|------------|---------|
| 101        | John Smith  | HR         | 5000    |
| 102        | Jane Doe    | IT         | 7000    |
| 103        | Alice Green | Finance    | 8000    |
| 104        | Bob Brown   | IT         | 7500    |

**Task:**
- Write an SQL query to retrieve the `Name` and `Salary` of all employees.

---

#### **2. Using WHERE to Filter Data**
Using the same **Employees** table:

**Task:**
- Retrieve details of employees working in the **IT** department.

---

#### **3. Filtering with Multiple Conditions**
Using the same **Employees** table:

**Task:**
- Retrieve the names and salaries of employees whose salary is greater than **6000** and are in the **IT** department.

---

#### **4. Using WHERE with Text Matching**
Using the same **Employees** table:

**Task:**
- Retrieve details of employees whose name starts with the letter "J".

---

#### **5. Advanced Filtering**
Consider a table **Orders**:
| OrderID | CustomerName | OrderDate  | TotalAmount |
|---------|--------------|------------|-------------|
| 1       | Alice Green  | 2023-11-01 | 250.75      |
| 2       | Bob Brown    | 2023-11-03 | 180.50      |
| 3       | John Smith   | 2023-11-05 | 320.00      |
| 4       | Jane Doe     | 2023-11-10 | 150.00      |

**Task:**
- Retrieve all orders placed on or after **2023-11-03**.

---

#### **Bonus Question: Combining Conditions**
Using the **Orders** table:

**Task:**
- Retrieve the `CustomerName` and `TotalAmount` for orders where the total amount is greater than **200**, or the customer name contains "Green".

---
