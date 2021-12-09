select * from employees_9 e;


--1) ������� ���� ���������� ��� �������� ���� � ����, ������ � ��
SELECT employee_name , monthly_salary
FROM employees_9 JOIN
employees_salary_9
ON employees_9.id = id_employees_9
JOIN salary_9
ON id_employees_salary_9 = salary_9.id;




--2)������� ���� ���������� � ������� �� < 2000

select employee_name , monthly_salary from 
employees_9 join employees_salary_9
on employees_9.id = id_employees_9
join salary_9
ON id_employees_salary_9 = salary_9.id 
where salary_9.monthly_salary  < 2000;



--3)  ������� �� ��� �������� �� ��������

SELECT monthly_salary,employee_name
FROM employees_salary_9 JOIN
salary_9
ON salary_9.id = id_employees_salary_9
LEFT JOIN employees_9
ON employees_9.id = id_employees_9
WHERE employee_name IS NULL;

--4) ������� ��� ���������� �������  ������ 2000 �� ��������
-- �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.) 
SELECT monthly_salary,employee_name
FROM employees_salary_9 JOIN
salary_9
ON salary_9.id = id_employees_salary_9
LEFT JOIN employees_9
ON employees_9.id = id_employees_9
WHERE employee_name IS NULL AND salary_9.monthly_salary  < 2000;


--5) ����� ���� ���������� ���� �� ��������� ��.
SELECT monthly_salary,employee_name
FROM employees_9
left JOIN employees_salary_9
ON employees_9.id = id_employees_9
LEFT JOIN salary_9
ON salary_9.id = id_employees_salary_9
WHERE monthly_salary IS null;

--6) ������� ���� ���������� � ���������� �� ���������.

SELECT employee_name, role_name
FROM employees_9
JOIN roles_employee
ON employees_9.id = roles_employee.employee_id
JOIN roles
ON roles.id = role_id; 

-- 7)������� ����� � ��������� ������ Java �������������
SELECT employee_name, role_name
FROM employees_9
JOIN roles_employee
ON employees_9.id = roles_employee.employee_id
JOIN roles
ON roles.id = role_id
WHERE role_name like'%Java%'; 

--8)  ������� ����� � ��������� ������ Python �������������.

SELECT employee_name, role_name
FROM employees_9
JOIN roles_employee
ON employees_9.id = roles_employee.employee_id
JOIN roles
ON roles.id = role_id
WHERE role_name like'%Python%'; 

--9)������� ����� � ��������� ���� QA ���������.

SELECT employee_name, role_name
FROM employees_9
JOIN roles_employee
ON employees_9.id = roles_employee.employee_id
JOIN roles
ON roles.id = role_id
WHERE role_name like'%QA%'; 

--10)  ������� ����� � ��������� ������ QA ���������

SELECT employee_name, role_name
FROM employees_9
JOIN roles_employee
ON employees_9.id = roles_employee.employee_id
JOIN roles
ON roles.id = role_id
WHERE role_name like'%Manual%QA%'; 

--11) ������� ����� � ��������� ��������������� QA

SELECT employee_name, role_name
FROM employees_9
JOIN roles_employee
ON employees_9.id = roles_employee.employee_id
JOIN roles
ON roles.id = role_id
WHERE role_name like'%Automation%QA%'; 

--12) ������� ����� � �������� Junior ������������



SELECT employee_name, monthly_salary, role_name
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Junior%';

--13) ������� ����� � �������� Middle ������������

SELECT employee_name, monthly_salary, role_name
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Middle%';

--14)  ������� ����� � �������� Senior ������������

SELECT employee_name, monthly_salary, role_name
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Senior%';

--15) ������� �������� Java �������������

SELECT employee_name, monthly_salary, role_name
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Java%';

--16)  ������� �������� Python �������������

SELECT employee_name, monthly_salary, role_name
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Python%';

--17) ������� ����� � �������� Junior Python �������������

SELECT employee_name, monthly_salary, role_name
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Junior%Python%';

--18) ������� ����� � �������� Middle JS �������������

SELECT employee_name, monthly_salary, role_name
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Middle%JavaScript%';

--19)  ������� ����� � �������� Senior Java �������������

SELECT employee_name, monthly_salary, role_name
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Senior%JavaScript%';

--20)  ������� �������� Junior QA ���������

SELECT employee_name, monthly_salary, role_name
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Junior%QA%';

--21) ������� ������� �������� ���� Junior ������������

SELECT  avg(monthly_salary) AS AVGSalary
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Junior%';

--22)  ������� ����� ������� JS �������������

SELECT  avg(monthly_salary) AS AVGSalary
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%JavaScript%';

--23) ������� ����������� �� QA ���������

SELECT  min(monthly_salary) AS MINQA
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%QA%';

--24)  ������� ������������ �� QA ���������

SELECT  max(monthly_salary) AS MINQA
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%QA%';

--25) ������� ���������� QA ���������
SELECT count(employee_name)
FROM employees_9
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%QA%';

--26) ������� ���������� Middle ������������.

SELECT count(employee_name)
FROM employees_9
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%Middle%';

--27) ������� ���������� �������������

SELECT count(employee_name)
FROM employees_9
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%developer%';

--28) ������� ���� (�����) �������� �������������.

SELECT sum(monthly_salary) AS sum_salary_developer
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE role_name like'%developer%';

--29) ������� �����, ��������� � �� ���� ������������ �� �����������

SELECT role_name, employee_name, monthly_salary
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
ORDER BY monthly_salary;

--30) ������� �����, ��������� � �� ���� ������������ �� �����������
-- � ������������ � ������� �� �� 1700 �� 2300

SELECT role_name, employee_name, monthly_salary
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE monthly_salary BETWEEN 1700 AND 2300
ORDER BY monthly_salary;

 --31) ������� �����, ��������� � �� ���� ������������ �� ����������� 
  --� ������������ � ������� �� ������ 2300

SELECT role_name, employee_name, monthly_salary
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE monthly_salary < 2300;

--32) 32. ������� �����, ��������� � �� ���� ������������
-- �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

SELECT role_name, employee_name, monthly_salary
FROM employees_9
JOIN employees_salary_9 ON employees_9.id = employees_salary_9.id_employees_9
JOIN salary_9 ON id_employees_salary_9 = salary_9.id
JOIN roles_employee ON employees_9.id = roles_employee.employee_id
JOIN roles ON roles.id = role_id
WHERE monthly_salary IN(1100,1500,2000)
ORDER BY monthly_salary;




--GROUP BY role_name; 

--role_name, monthly_salary,--
--JOIN roles_employee
--ON employees_9.id = roles_employee.employee_id
--JOIN roles
--ON roles.id = role_id;


--LEFT JOIN roles_employee ON employees_9.id = roles_employee.employee_id
--JOIN employees_salary_9 ON employees_9.id = id_employees_9
--JOIN roles_employee ON employees_9.id = roles_employee.employee_id
--JOIN roles ON roles.id = role_id
--JOIN employees_salary_9 ON employees_9.id = id_employees_9;

--WHERE role_name like'%Junior%'; 





