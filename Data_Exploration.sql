# 2. Write a query to print the name and details of all the one user to whom a particular user has sent request.
SELECT * 
FROM users 
WHERE uid IN (
              SELECT reciever   
              FROM right_swapping   
              WHERE SENDER  = 1) 
          
