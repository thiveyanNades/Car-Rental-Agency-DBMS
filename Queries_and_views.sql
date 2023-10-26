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

/* Advanced Queries and Views */

Select Customer_name
from customer c, employee_reserves_for_customer er, employee e
where e.employee_id_number = 4567435
and er.employee_id_number = e.employee_id_number
and c.customer_id = er.customer_id;


SELECT Customer_Name, Customer.Customer_ID, TotalCost
From Customer, Transactions, Rental_Reciept
WHERE Customer_email = 'lebronthomas@gmail.com'
      AND Returned_Time = '4:00 pm'
      AND Transactions.Customer_ID = Customer.Customer_ID;
      
SELECT Customer.Customer_Name, Employee.Employee_Name
FROM Employee, Customer, Rental_Agency_Rent_Out
WHERE Employee.Employee_ID_Number = 4567435
and Rental_Agency_Rent_Out.Employee_ID = Employee.Employee_ID_Number
  AND Customer.Customer_ID = 64245675
  and Rental_Agency_Rent_Out.Customer_ID = Customer.Customer_ID
  AND Rental_Agency_Rent_Out.Vehicle_VIN_Number = 4324234;

CREATE VIEW Sedan_Vehicle AS
    (SELECT * 
    FROM Vehicle
    WHERE Vehicle_BodyType = 'sedan');

Create view Salesperson As
    (SELECT*
    from employee
    where employee_job = 'Salesperson');
    
    Create view Salespersons As
    (SELECT*
    from employee
    where employee_job = 'salesperson');
    
Create view Salespeople As
    (SELECT*
    from employee
    where employee_job = 'Salesperson');

CREATE VIEW Rental_Reciept_HighCost AS
SELECT *
FROM Rental_Reciept
WHERE TotalCost > '100';

/* Advanced Queries for Assignment 5*/
    
(SELECT Vehicle_VIN_Number, Vehicle_MakeModel, Vehicle_Availability 
FROM Vehicle)
MINUS
(SELECT Vehicle_VIN_Number, Vehicle_MakeModel, Vehicle_Availability 
FROM Vehicle
WHERE Vehicle_Availability = 'UNAVAILABLE');

SELECT Vehicle_BodyType, AVG(Vehicle_Mileage)
FROM VEHICLE 
GROUP BY Vehicle_BodyType
HAVING AVG(Vehicle_Mileage) > 250;

select vehicle_vin_number
from vehicle
where exists(select vehicle_inventory_id_number from vehicle v where v.vehicle_inventory_id_number > 12);

select vehicle_vin_number from vehicle where vehicle.vehicle_bodytype = 'sedan'
union
select vehicle_vin_number from vehicle where vehicle.vehicle_bodytype = 'truck';

SELECT Employee_Job , COUNT(*) AS EmpCount
FROM Employee
GROUP BY Employee_Job;

SELECT Vehicle_BodyType AS BodyType, COUNT(*) AS AvailableCarCount
FROM Vehicle
WHERE Vehicle_Availability = 'AVAILABLE'
GROUP BY Vehicle_BodyType;

SELECT v.Vehicle_VIN_Number
FROM Vehicle v
WHERE NOT EXISTS (
    SELECT *
    FROM Rental_Agency_Rents_Out r
    WHERE r.Vehicle_Vin_Number = v.vehicle_VIN_Number
)
UNION
SELECT v.Vehicle_VIN_Number
FROM Vehicle v
WHERE v.Vehicle_BodyType = 'Sedan' AND v.vehicle_Availability = 'Available';
