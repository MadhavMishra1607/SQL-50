SELECT Employee.name as name,Bonus.bonus as bonus
FROM Employee 
LEFT JOIN Bonus 
ON Employee.empId = Bonus.empId 
WHERE Bonus.bonus<1000 OR Bonus.bonus is null