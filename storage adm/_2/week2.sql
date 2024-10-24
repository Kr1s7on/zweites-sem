-- ======================================================================================


-- Week 2 Practical Work by Kr1s7on

-- **please UNINDENT the code
-- ======================================================================================


-- 4.1 Case and Character Manipulation


-- Q1: three separate words “Oracle,” “Internet,” and “Academy,” use one command to produce the following output: “Oracle Internet Academy”?
    select concat(concat('Oracle ',' Internet'),' Academy') 
    from dual;


-- Q2: string “Oracle Internet Academy” to produce the following output: “The net”?
    select substr('Oracle Internet Academy', 13, 3) as "The net" from dual;


-- Q3: length of the string “Oracle Internet Academy”?
    select length('Oracle Internet Academy') as "Length" from dual;


-- Q4: position of “I” in “Oracle Internet Academy”?
    select instr('Oracle Internet Academy', 'I') as "Position" from dual;


-- Q5: pad the all 3 words with **** left and right
    select LPAD('Oracle',10,'*') || LPAD('Internet',12,'*') || LPAD('Academy',12,'*') || LPAD('Academy',12,'*') 
    from dual;


-- Q6: Write a query that returns all the employee data depending on the month of their hire date. Use
-- the EMPLOYEES table. The statement should return the month part of the hiredate which is then
-- compared to an abbreviated month (JAN, FEB, MAR) passed into the query via a substitution
-- variable.
    select * from employees where upper(substr(hire_date, 4, 3)) = upper(:report_month);

    -- or this: this way you can use the query without the substitution variable
    select * from employees where upper(substr(hire_date, 4, 3)) = 'JAN';


-- ======================================================================================


-- 4.2 Numeric Functions


--  Q1: Display Oracle database employee last_name and salary for employee_ids between 100 and 102.
-- Include a third column that divides each salary by 1.55 and rounds the result to two decimal
-- places.
    select last_name, salary, round(salary/1.55, 2) as "Salary Calculation" 
    from employees where EMPLOYEE_ID between 100 and 102;


-- Q2: Display employee last_name and salary for those employees who work in department 80. Give
-- each of them a raise of 5.333% and truncate the result to two decimal places.
    select last_name, salary, trunc(salary * 1.05333, 2) as "Salary with Raise"
    from employees where department_id = 80;


--  Q3: Divide each employee's salary by 3. Display only those employees' last names and salaries who
-- earn a salary that is a multiple of 3.
    select last_name, salary from employees where mod(salary, 3) = 0;


-- ======================================================================================


-- 4.3 Date Functions


-- Q1: For DJs on Demand, display the number of months between the event_date of the Vigil 
-- wedding and today's date. Round to the nearest month

    --  This is the query to get the event_date of the Vigil wedding
    select round(months_between(sysdate, event_date)) from d_events where ID = 105;

    -- This is the query to get the number of months between the event_date of the Vigil wedding and today's date. Round to the nearest month
    select round(months_between(event_date, sysdate)) from d_events where ID = 105;

    -- This is the query to get the number of months between the event_date of the Vigil wedding and today's date. Round to the nearest month
    select round((sysdate-event_date) / 365.25 * 12) from d_events where ID = 105;


-- Q2: Display the number of years between the Global Fast Foods employee Bob Miller's birthday 
-- and today. Round to the nearest year
    select round((sysdate-birthdate)/365.25) from f_staffs where id = 9;


-- Q3: Your next appointment with the dentist is six months from today. On what day will you go to 
-- the dentist? Name the output, “Appointment.”
    select add_months(sysdate, 6) as "Appointment" from dual;

    select round(to_date('05-Sep-2004') - to_date('15-Jan-2004')) from dual;
    select round(months_between('05-Sep-2004' - '15-Jan-2004')*30.5) from dual;

    select * from nls_session_parameters;


-- ======================================================================================


--  5.1: Conversion Functions Practice Activities


-- Q1: List the last names and birthdays of Global Fast Food Employees. Convert the birth dates to 
-- character data in the Month DD, YYYY format. Suppress any leading zeros using fm.
    select last_name, to_char(birthdate, 'Month fmDD, YYYY') from f_staffs;


-- Q2: Format a query from the Global Fast Foods f_promotional_menus table to print out the start_date 
-- of promotional code 110 as: The promotion began on the tenth of February 2004.
    select 'The promotion began on the ' || to_char(start_date, 'ddspth "of" Month YYYY')
    from f_promotional_menus where code = 110;


-- Q3: List the ID, name, and salary for all Global Fast Foods employees. Display salary with a $ sign 
-- and two decimal places.
    select ID, first_name ||''|| last_name as "Name", to_char(salary, '$9999.99') as "Salary" from f_staffs;


-- ======================================================================================


--  5.2: NULL Functions


-- Q1: Create a report that shows the Global Fast Foods promotional name, start date, and end date 
-- from the f_promotional_menus table. If there is an end date, temporarily replace it with “end in two 
-- weeks.” If there is no end date, replace it with today's date.
    select name, start_date, nvl2(end_date, 'end in two weeks', sysdate)
    from f_promotional_menus;

-- Q2: the manager of Global Fast Foods has decided to give all staff who currently do not earn 
-- overtime an overtime rate of $5.00. Construct a query that displays the last names and the 
-- overtime rate for each staff member, substituting $5.00 for each null overtime value. 
    select last_name, to_char(nvl(overtime_rate, 5), '$99.99') as "Overtime Rate" from f_staffs;


-- Q3:  Not all Global Fast Foods staff members have a manager. Create a query that displays the 
-- employee last name and 9999 in the manager ID column for these employees. 
    select last_name, nvl(manager_id, 9999) as "Manager" from f_staffs;


-- Q4: 
    -- a.  Create a report listing the first and last names and month of hire for all employees in the 
    -- EMPLOYEES table (use TO_CHAR to convert hire_date to display the month).  
    select first_name, last_name, to_char(hire_date, 'Month') from employees;

    -- b.  Modify the report to display null if the month of hire is September. Use the NULLIF function.
    select first_name, last_name, nullif(to_char(hire_date, 'Month'), 'September') from employees;


-- Q5: Display the first name, last name, manager ID, and commission percentage of all employees in departments 80 and 90. In a 5th column called “Review”, again display the manager ID. 
    -- If they don't have a manager, display the commission percentage. 
    -- If they don't have a commission, display 99999.
    select first_name, last_name, MANAGER_ID, COMMISSION_PCT, 
    COALESCE(MANAGER_ID, COMMISSION_PCT, 99999) 
    from employees where department_id in (80, 90);


-- ======================================================================================


--  5.3: Conditional Expressions (Do it yourself)


-- Q1: rom the DJs on Demand d_songs table, create a query that replaces the 2-minute songs with
-- “shortest” and the 10-minute songs with “longest”. Label the output column “Play Times”.


--  Q2: use the Oracle database employees table and CASE expression to decode the department id.
-- Display the department id, last name, salary, and a column called “New Salary” whose value is
-- based on the following conditions:
    -- If the department id is 10 then 1.25 * salary 
    -- If the department id is 90 then 1.5 * salary 
    -- If the department id is 130 then 1.75 * salary 
    --  Otherwise, display the old salary.


-- ======================================================================================
