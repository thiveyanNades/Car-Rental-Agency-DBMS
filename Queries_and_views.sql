/* Simple Queries */

SELECT*from INSURANCE;

SELECT *
FROM Employee
ORDER BY employee_id_number DESC;

select customer_id
from customer_chooses_vehicle;

select employee_id_number
from employee_reserves_for_customer;

select customer_phonenumber
from customer
order by customer_phonenumber asc;

SELECT *
FROM Rental_Reciept
ORDER BY RECIEPT_NUMBER desc;

SELECT*
From Rental_Agency

SELECT*
FROM Transactions
where Reciept_number = 3424432423;

SELECT*
FROM Rental_Agency_Rents_Out
WHERE Rental_Agency_Name = '123 Rental';

SELECT Employee_ID_Number,Rental_Agency_Name
FROM Employee_Works_For
ORDER BY Employee_ID_Number DESC;

SELECT*
FROM Vehicle_Has_Insurance
WHERE Vehicle_VIN_Number = 4213432;

SELECT  *
FROM Vehicle
WHERE Vehicle_Availability= 'UNAVAILABLE';

SELECT Vehicle_BodyType 
FROM VEHICLE 
GROUP BY Vehicle_BodyType;

