select fname from employee inner join (select essn, count(essn) from dependent group by essn) as t on t.essn = ssn where t.count>=2;

select fname from employee as e inner join (select dependent_name, gender, essn from dependent) as d on d.essn = e.ssn where d.dependent_name = e.fname and d.gender = e.gender;

select fname from employee where salary > (select max(salary) from employee where dno = 5);

select fname from employee where not exists (select * from dependent where essn = ssn);

select fname,lname from employee where exists (select * from dependent where essn = ssn) and exists (select * from department where mgr_ssn = ssn);

select fname, address from employee natural join (select dname, dnumber as dno from department) as d where d.dname = 'Research' ;