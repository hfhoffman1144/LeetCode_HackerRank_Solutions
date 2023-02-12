CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      SELECT salary FROM Employee AS emp1   
      WHERE N-1 = (SELECT COUNT(DISTINCT salary) FROM Employee emp2   
      WHERE emp2.salary > emp1.salary) 
      LIMIT 1
  );
END
