SELECT 
    e.employee_id AS "Employee ID", 
    e.manager_id AS "Manager ID" 
FROM 
    HR.EMPLOYEES e 
JOIN 
    HR.EMPLOYEES m ON e.manager_id = m.employee_id