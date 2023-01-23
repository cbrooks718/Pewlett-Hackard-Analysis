-- Deliverable 1

-- Creating retirement_titles table by joining employees and titles based on emp_no
-- SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
-- INTO retirement_titles
-- FROM titles as ti
-- INNER JOIN employees as e
-- ON (ti.emp_no = e.emp_no)
-- WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- ORDER BY emp_no;

-- Use Distinct with Orderby to remove duplicate rows & create unique titles csv
-- SELECT DISTINCT ON (emp_no) emp_no,
-- first_name,
-- last_name,
-- title

-- INTO unique_titles
-- FROM retirement_titles
-- WHERE to_date = '9999-01-01'
-- ORDER BY emp_no, to_date DESC;

-- Create retiring titles csv

SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT DESC;