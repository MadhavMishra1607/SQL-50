
Update Salary set sex = 
CASE sex
WHEN 'f' THEN 'm'
else 'f'
END;