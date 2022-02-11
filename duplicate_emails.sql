SELECT Sub.Email 
FROM (SELECT Email, count(*) NumAdds
      FROM Person
      GROUP BY Email
      HAVING NumAdds > 1) Sub
