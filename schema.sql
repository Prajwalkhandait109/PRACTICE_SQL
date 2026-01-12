CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE
);

CREATE TABLE employee_projects (
    employee_id INT,
    project_id INT,
    hours_worked INT,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);
