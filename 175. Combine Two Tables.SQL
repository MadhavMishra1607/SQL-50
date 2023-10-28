SELECT Person.firstname,Person.lastname,Address.city,Address.state FROM Person left join Address 
ON Person.personId = Address.personId;