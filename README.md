# parks-and-recreation-sql-analysis
SQL project analyzing employee and department data from a Parks and Recreation database.

How many employees work in eah department?

USE parks_and_recreation;

SELECT pd.department_id,
       pd.department_name,
        COUNT(ed.employee_id) AS employee_count
       
FROM employee_demographics ed
JOIN employee_salary es
      ON ed.employee_id = es.employee_id

JOIN parks_departments pd
      ON es.dept_id = pd.department_id
 
 GROUP BY pd.department_id;

 
