-- CREATE TABLE employees (
--     emp_id INT PRIMARY KEY AUTO_INCREMENT,
--     email VARCHAR(150) UNIQUE,
--     name VARCHAR(100) NOT NULL,
--     age INT CHECK (age >= 18),
--     department VARCHAR(50) DEFAULT 'General',
--     salary DECIMAL(10,2) CHECK (salary > 0),
--     joining_date DATE DEFAULT (CURRENT_DATE)
-- );


-- add a constaint to name column 
-- ALTER TABLE employees ADD UNIQUE (name);


-- INSERT INTO employees (email, name, age, salary)
-- VALUES ('rahulkhan@company.com', 'Rahul Khan', 26, 30000);

-- SELECT * FROM employees;


-- main constaint are : unique, not null, default, check, etc 