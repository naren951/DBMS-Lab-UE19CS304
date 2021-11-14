--1
select distinct pnumber from project as p, employee as e, works_on as w where e.lname='Smith' and p.pnumber = w.pno and e.ssn = w.essn
union
select distinct pnumber from project as p, employee as e, department as d where e.lname = 'Smith' and d.mgr_ssn = e.ssn and p.dnum = d.dnumber;

--2
select fname, lname from employee where not exists ( select * from dependent where ssn = essn );

--3
select ssn from employee where dno = 5 union select super_ssn from employee where dno = 5;

--4
select distinct pname from project where pnumber in ( select distinct pno from works_on where essn = '123456789')
intersect
select distinct pname from project where dnum = 5;

--5
select ssn from employee where dno = 5 except ( select ssn from works_on, project, employee where ssn = essn and pno = pnumber and plocation = 'Bellaire' );

--6
select fname from employee intersect select dependent_name from dependent;