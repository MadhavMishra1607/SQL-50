SELECT user_id, name, mail
FROM Users
where mail regexp '^[A-Z][A-Z0-9_.-]*[@]leetcode[.]com$';