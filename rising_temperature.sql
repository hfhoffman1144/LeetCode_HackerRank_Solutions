# Write your MySQL query statement below
SELECT id FROM
(SELECT id, temperature as Today, LAG(temperature, 1) OVER() as Yesterday,
 DATEDIFF(recordDate, LAG(recordDate, 1) OVER()) as NumDaysPassed
    FROM Weather
    ORDER BY recordDate) Sub
WHERE Sub.Today > Sub.Yesterday
AND Sub.NumDaysPassed = 1
