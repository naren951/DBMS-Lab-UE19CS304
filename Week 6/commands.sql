select salary*1.1 from employee where ssn in (select essn from works_on where pno = (select pnumber from project where pname = 'ProductX'));

select sum(salary) from employee where dno = (select dnumber from department where dname = 'Research');
select max(salary) from employee where dno = (select dnumber from department where dname = 'Research');
select min(salary) from employee where dno = (select dnumber from department where dname = 'Research');
select avg(salary) from employee where dno = (select dnumber from department where dname = 'Research');

select count(distinct(salary)) from employee;

select fname, lname from employee, dependent where employee.ssn = dependent.essn group by employee.ssn having count(ssn) >= 2;

select dname, dnumber, count(employee.ssn), avg(employee.salary) from department, employee where employee.dno = department.dnumber group by dname, dnumber;

select * from 
(
select fname, salary - min(salary) over () as salary_diff
from employee
group by salary, fname
) as innerTable
where salary_diff >= 10000
;

select fname, lname, dno from employee where employee.dno = (select dno from employee where salary = (select max(salary) from employee));

select department.dname, count(employee.ssn) from employee, department where employee.salary > 40000 group by department.dname;
