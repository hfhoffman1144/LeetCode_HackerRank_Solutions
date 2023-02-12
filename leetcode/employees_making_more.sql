# Write your MySQL query statement below
SELECT T1.name AS Employee 
FROM Employee T1, Employee T2
WHERE T1.salary > T2.salary
AND T1.managerId = T2.id
