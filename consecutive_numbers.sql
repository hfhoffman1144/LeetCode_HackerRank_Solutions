# Write your MySQL query statement below
SELECT DISTINCT Tmp.num AS ConsecutiveNums
FROM (SELECT id,
             num,
             LAG(num,1) OVER() AS l1,
             LAG(num,2) OVER() AS l2
      FROM Logs
      ) Tmp
      
WHERE Tmp.num = Tmp.l1
AND Tmp.l1 = Tmp.l2
