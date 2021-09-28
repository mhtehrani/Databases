--Query 1: Retrieve all employees whose address is in Elgin,IL
SELECT * FROM employees
WHERE address LIKE '%Elgin,IL';

--Query 2: Retrieve all employees who were born during the 1970's.
SELECT * FROM employees
WHERE b_date LIKE  '197%';

--Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT * FROM employees
WHERE dep_id = 5 AND salary BETWEEN 60000 AND 70000;

--Query 4A: Retrieve a list of employees ordered by department ID. 
SELECT * FROM employees
ORDER BY dep_id;

--Query 4B: Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
SELECT * FROM employees
ORDER BY dep_id DESC, l_name DESC;

--Query 5A: For each department ID retrieve the number of employees in the department.
SELECT dep_id, COUNT(*) FROM employees
GROUP BY dep_id;
SELECT dep_id, COUNT(*) AS num_of_employees FROM employees
GROUP BY dep_id;

--Query 5B: For each department retrieve the number of employees in the department, and the average employees salary in the department.
SELECT dep_id, COUNT(*), AVG(salary) FROM employees
GROUP BY dep_id;

--Query 5C: Label the computed columns in the result set of Query 5B as NUM_EMPLOYEES and AVG_SALARY.
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
group by DEP_ID;

--Query 5D: In Query 5C order the result set by Average Salary.
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
group by DEP_ID
order by AVG_SALARY

--Query 5E: In Query 5D limit the result to departments with fewer than 4 employees.
select DEP_ID, NUM_EMPLOYEES, AVG_SALARY from
  ( select DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY from EMPLOYEES group by DEP_ID)
  where NUM_EMPLOYEES < 4
order by AVG_SALARY

--Query 6: Similar to 4B but instead of department ID use department name. Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name.
select D.DEP_NAME , E.F_NAME, E.L_NAME
from EMPLOYEES as E, DEPARTMENTS as D
where E.DEP_ID = D.DEPT_ID_DEP
order by D.DEP_NAME, E.L_NAME desc
