# Write your MySQL query statement below
with high_earners as (

 select id,
        name,
        salary,
        departmentId, 
        dense_rank() over(partition by departmentId order by salary desc) rn
from employee

)
select d.name as Department,
       he.name as Employee,
       he.salary as Salary
from high_earners he
join department d on d.id = he.departmentId
where he.rn <= 3
