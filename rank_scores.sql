SELECT score, dense_rank() 
OVER (order by score desc ) 
AS 'rank' FROM Scores;
