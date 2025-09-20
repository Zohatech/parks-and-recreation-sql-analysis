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
 

 

      
new query