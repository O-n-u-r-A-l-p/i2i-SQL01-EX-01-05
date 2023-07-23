SELECT 
    e.employee_id, 
    e.first_name, 
    d.department_name 
FROM 
    HR.EMPLOYEES e 
INNER JOIN 
    HR.DEPARTMENTS d ON e.department_id = d.department_id