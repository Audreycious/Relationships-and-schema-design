1)  SELECT 
        COUNT (e.employee_id) AS NumberOfEmployees,
        d.dept_name as Department
    FROM
        employee e 
        JOIN
        department d 
        ON e.department = d.dept_id
    WHERE d.dept_name = 'Sales';  

2)  SELECT 
        e.emp_name as Employee_name,
        p.project_name as project
    FROM
        employee e
        JOIN
        employee_project ep
        ON e.id = ep.emp_id
        JOIN
        project p 
        ON ep.project_id = p.id 
    WHERE p.project_name = 'Plan Christmas party';

3)  SELECT
        e.emp_name as Employee_name,
        d.dept_name as Department,
        p.project_name as Project 
    FROM
        employee e 
        JOIN 
        department d 
        ON e.department = d.id 
        JOIN
        employee_project ep 
        ON e.id = ep.emp_id 
        JOIN 
        project p
        ON p.id = project_id 
    WHERE 
        d.dept_name = 'Warehouse'
        AND
        p.project_name = 'Watch paint dry';

4)  SELECT
        e.emp_name as Employee_name,
        d.dept_name as Department,
        p.project_name as Project
    FROM 
        employee e 
        JOIN 
        department d 
        ON e.department = d.id 
        JOIN
        employee_project ep 
        ON e.id = ep.emp_id 
        JOIN 
        project p
        ON p.id = ep.project_id 
    WHERE d.dept_name = 'Sales';

5)  SELECT
        e.emp_name as Manager, 
        p.project_name as Project
    FROM 
        employee e 
        JOIN 
        department d 
        ON e.department = d.id 
        JOIN
        employee_project ep 
        ON e.id = ep.emp_id 
        JOIN 
        project p
        ON p.id = ep.project_id 
    WHERE p.project_name = 'Watch paint dry';