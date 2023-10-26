INSERT INTO Rental_Agency
VALUES('ABC Rental','1234 Rental Avenue', '416-123-4567','ABCRental@gmail.com');

INSERT INTO Rental_Agency
VALUES('123 Rental','New-york 45th street', '416-343-3213','123_Rental@gmail.com');

INSERT INTO Employee
VALUES('Drake Sean','Salesperson','4567435');

INSERT INTO Employee
VALUES('Kendrick Lamar','Car Cleaner','4567436');

INSERT INTO Employee
VALUES('John Green','Salesperson','4567437');

INSERT INTO Customer(Customer_Name, Customer_email, Customer_PhoneNumber, Customer_LicenceNumber, Customer_ID, Customer_CardNumber)
VALUES('LeBron Thomas', 'lebronthomas@gmail.com','(647) 987-2345','N0101-54394-54984','64245675','3455-4698-4275-6297');

INSERT INTO Customer(Customer_Name, Customer_email, Customer_PhoneNumber, Customer_LicenceNumber, Customer_ID, Customer_CardNumber)
VALUES('Pascal Siakam', 'psiakam@gmail.com','(647) 986-2245','N0101-54394-54985','64245676','3455-4509-4265-1132');

INSERT INTO Vehicle
VALUES('50', 'CAJA410','10','AVAILABLE','4324234','blue','toyota','SLIM','2001','532','400', 'sedan','no damage','no additional features');

INSERT INTO Vehicle
VALUES('40','BARA531','11','UNAVAILABLE','4213432','green','toyota', 'LIMO','2003','678','200','sedan','no damage','No additional features');

INSERT INTO Vehicle
VALUES('40','BARA431','12','UNAVAILABLE','4213232','green','toyota', 'LIMO','2003','678','200','truck','no damage','No additional features');

INSERT INTO Vehicle
VALUES('40','BARA532','13','UNAVAILABLE','4213435','green','toyota', 'LIMO','2003','678','200','sedan','minor damage','No additional features');

INSERT INTO Vehicle
VALUES('40','BARA533','14','AVAILABLE','4213436','green','toyota', 'LIMO','2003','678','200','suv','minor damage','No additional features');

INSERT INTO Insurance(Insurance_Name, Insurance_Company_ID, Insurance_ID)
VALUES('Best_Auto','777-777-777','666-666-666');

INSERT INTO Insurance
VALUES('Second_Best_Auto', 'second greatest insurance in the world',  '423-242-423','543-423-243');

INSERT INTO Rental_Reciept
VALUES('dent','$10','2023-09-02','6:00pm','4990','2023-10-02','4:00 PM','2023-09-30','4:00 pm','10','3424432423');

INSERT INTO Rental_Reciept
VALUES('scratch on door','$50','2023-08-02','6:00pm','$4420','2023-8-12','4:00 PM','2023-08-30','7:00 pm','10','5234356725');

INSERT INTO Transactions
VALUES('64245675','3424432423');

INSERT INTO Transactions
VALUES('64245676','5234356725');

INSERT INTO Rental_Agency_Rent_Out
VALUES('ABC Rental','64245675','4567435','4324234');

INSERT INTO Rental_Agency_Rents_Out
VALUES('ABC Rental','4324234');

INSERT INTO Rental_Agency_Rents_Out
VALUES('123 Rental','4213432');

INSERT INTO Employee_Works_For
VALUES('4567435','ABC Rental');

INSERT INTO Employee_Works_For
VALUES('4567436','ABC Rental');

INSERT INTO Employee_Works_For
VALUES('4567437','123 Rental');

insert into customer_chooses_vehicle
values('64245675', '4324234');

insert into customer_chooses_vehicle
values('64245676', '4213432');

INSERT INTO Vehicle_Has_Insurance
VALUES('4324234','666-666-666');

INSERT INTO Vehicle_Has_Insurance
VALUES('4213432','543-423-243');

insert into employee_reserves_for_customer
values('4567435', '64245675');

insert into employee_reserves_for_customer
values('4567435', '64245676');
