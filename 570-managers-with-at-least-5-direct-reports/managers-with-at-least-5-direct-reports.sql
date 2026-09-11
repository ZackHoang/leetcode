# Write your MySQL query statement below

SELECT Employee.name FROM Employee INNER JOIN Employee AS Manager ON Employee.id = Manager.managerId GROUP BY Manager.managerId HAVING COUNT(Manager.managerId) >= 5;