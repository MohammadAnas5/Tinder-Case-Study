-- 2. Write a query to print the name and details of all the one user to whom a particular user has sent request.
SELECT * 
FROM users 
WHERE uid IN (
              SELECT reciever   
              FROM right_swapping   
              WHERE SENDER  = 1) 

--SELECT SENDER,COUNT(*) 
FROM right_swapping 
GROUP BY SENDER 
ORDER BY COUNT(*) DESC
LIMIT 1,1

-- then apply join for name
SELECT u.name,COUNT(SENDER) 
FROM right_swapping s 
JOIN users u ON u.uid=s.SENDER 
GROUP BY s.SENDER 
ORDER BY COUNT(SENDER) DESC 
LIMIT 1,1 ) 
