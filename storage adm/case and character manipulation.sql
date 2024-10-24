-- Case and Character Manipulation in SQL

-- Convert text to lower case
SELECT LOWER('HELLO WORLD') AS lower_case_text;

-- Convert text to upper case
SELECT UPPER('hello world') AS upper_case_text;

-- Convert text to initcap (capitalize first letter of each word)
SELECT INITCAP('hello world') AS initcap_text;

-- Concatenate two strings
SELECT CONCAT('Hello', ' World') AS concatenated_text;

-- Extract a substring from a string
SELECT SUBSTR('Hello World', 1, 5) AS substring_text;

-- Get the length of a string
SELECT LENGTH('Hello World') AS length_of_text;

-- Find the position of a substring within a string
SELECT INSTR('Hello World', 'World') AS position_of_substring;

-- Left-pad a string with a specified character
SELECT LPAD('Hello', 10, '*') AS left_padded_text;

-- Right-pad a string with a specified character
SELECT RPAD('Hello', 10, '*') AS right_padded_text;

-- Trim leading and trailing spaces from a string
SELECT TRIM('   Hello World   ') AS trimmed_text;

-- Replace occurrences of a substring within a string
SELECT REPLACE('Hello World', 'World', 'SQL') AS replaced_text;

-- Using substitution variables
-- Note: This example assumes the use of a tool that supports substitution variables, like SQL*Plus
-- You would be prompted to enter a value for the variable when the query is executed
SELECT '&input_text' AS user_input FROM dual;