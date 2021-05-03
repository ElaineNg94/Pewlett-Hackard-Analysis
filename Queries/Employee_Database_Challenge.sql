SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS ce
INNER JOIN titles as ti
ON (ce.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY ce.emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
	emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
SELECT * FROM unique_titles

-- Make a retirement titles table.
SELECT employees.emp_no,
     employees.first_name,
     employees.last_name,
     titles.title,
     titles.from_date,
     titles.to_date
INTO retirement_titles
FROM employees
JOIN titles ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;
SELECT * FROM retirement_titles

CREATE TABLE retiring_titles 
	(emp_no int, 
	title VARCHAR(10));
SELECT DISTINCT emp_no, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY title DESC;

SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT (title) DESC;
SELECT * FROM retiring_titles;

-- Make a retiring_titles table
SELECT COUNT (title), title
FROM unique_titles
GROUP BY title
ORDER BY COUNT (title) DESC;

-- Create mentorship_eligibilty table
CREATE TABLE mentorship_eligibility 
	(emp_no int,
	title VARCHAR(10));

--Make a mentorship_eligibility table
SELECT employees.emp_no
	employees.emp_no
	employees.first_name
	employees.last_name
	employees.birth_date
	dept_emp.from_date
	dept_emp.to_date
	titles.title
INTO mentorship_eligibility
FROM titles JOIN employees ON employees.emp_no = titles.emp_no
JOIN dept_emp.emp_no = employees.emp_no
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31';
ORDER BY employees.emp_no