select e.empln 'Employee',sum(t.traincost) 'Cost'
from employee e, training t
where e.empid=t.empid
group by e.empln
having sum(t.traincost)>1500
order by sum(t.traincost);

SELECT employee.empfn 'First' , employee.empln 'Last' , count(empprojects.projid)  'No. of projects'
FROM ((empprojects
INNER JOIN project ON empprojects.projid = project.projid)
INNER JOIN employee ON empprojects.empid = employee.empid)
where employee.empid=empprojects.empid
group by employee.empln
having count(empprojects.empid)>1;

drop table ages;