CREATE TABLE Rental_Agency(
    Rental_Agency_Name VARCHAR(100) Primary Key,
    Rental_Agency_Address VARCHAR(100),
    Rental_Agency_PhoneNumber VARCHAR(15), 
    Rental_Agency_email VARCHAR(100)
);

CREATE TABLE Employee(
    Employee_Name VARCHAR(100) NOT NULL,
    Employee_Job VARCHAR(100) NOT NULL,
    Employee_ID_Number NUMBER NOT NULL UNIQUE
);

CREATE TABLE Customer(
    Customer_Name VARCHAR(100) NOT NULL,
    Customer_email VARCHAR(100),
    Customer_PhoneNumber VARCHAR(15),
    Customer_Address VARCHAR(100),
    Customer_LicenceNumber VARCHAR(50) NOT NULL,
    Customer_ID INTEGER PRIMARY KEY,
    Customer_CardNumber VARCHAR(30) NOT NULL
);

CREATE TABLE Vehicle(
    Vehicle_RentalRate VARCHAR(50),
    Vehicle_LicencePlateNumber VARCHAR(50) NOT NULL,
    Vehicle_Inventory_ID_Number VARCHAR(50) NOT NULL,
    Vehicle_Availability VARCHAR(25) DEFAULT 'AVAILABLE',
    Vehicle_VIN_Number VARCHAR(50) PRIMARY KEY,
    Vehicle_Colour VARCHAR(25),
    Vehicle_MakeModel VARCHAR(100) NOT NULL,
    Vehicle_Trim VARCHAR(25),
    Vehicle_Year NUMBER CHECK (Vehicle_Year BETWEEN 2000 AND 2024),
    Vehicle_Drivetrain VARCHAR(3),
    Vehicle_Mileage INTEGER NOT NULL,
    Vehicle_BodyType VARCHAR(25) NOT NULL,
    Vehicle_NoteOfDamageOrScratch VARCHAR(500),
    Vehicle_Additional_Features VARCHAR(500)
);

CREATE TABLE Insurance(
    Insurance_Name VARCHAR(100) NOT NULL,
    Insurance_Coverage_Info VARCHAR(500),
    Insurance_Company_ID VARCHAR(12) NOT NULL,
    Insurance_ID VARCHAR(12) PRIMARY KEY
);

CREATE TABLE Rental_Reciept(
    Charges_Description VARCHAR(500) NOT NULL,
    Charges_Cost VARCHAR(25) NOT NULL,
    Transaction_Date VARCHAR(10) NOT NULL,
    Transaction_Time VARCHAR(8) NOT NULL,
    TotalCost VARCHAR(10) NOT NULL,
    Departed_Date VARCHAR(10) NOT NULL,
    Departed_Time VARCHAR(8) NOT NULL,
    Returned_Date VARCHAR(10) NOT NULL,
    Returned_Time VARCHAR(8) NOT NULL,
    Miles_Driven VARCHAR(10) NOT NULL,
    RECIEPT_NUMBER VARCHAR(25) PRIMARY KEY
);

CREATE TABLE Transactions(
     Customer_ID    INTEGER REFERENCES Customer(Customer_ID),
     RECIEPT_NUMBER VARCHAR(25) REFERENCES Rental_Reciept(RECIEPT_NUMBER),
     PRIMARY KEY(Customer_ID, RECIEPT_NUMBER)
);

CREATE TABLE Rental_Agency_Rent_Out(
     Rental_Agency_Name VARCHAR(100) REFERENCES Rental_Agency(Rental_Agency_Name),
     Customer_ID INTEGER REFERENCES Customer(Customer_ID), Employee_ID NUMBER REFERENCES Employee(Employee_ID_Number),
     Vehicle_VIN_Number VARCHAR(50) REFERENCES Vehicle(Vehicle_VIN_Number),
     PRIMARY KEY(Rental_Agency_Name, Vehicle_VIN_Number)
);

CREATE TABLE Employee_Works_For(
  	 Employee_ID_Number NUMBER REFERENCES Employee(Employee_ID_Number),
	 Rental_Agency_Name VARCHAR(100) REFERENCES Rental_Agency(Rental_Agency_Name),
     PRIMARY KEY(Employee_ID_Number, Rental_Agency_Name)
);

CREATE TABLE Customer_Chooses_Vehicle(
  	Customer_ID INTEGER REFERENCES Customer(Customer_ID),
  	Vehicle_VIN_Number VARCHAR(50) REFERENCES Vehicle(Vehicle_VIN_Number),
    PRIMARY KEY(Customer_ID, Vehicle_VIN_Number)
);

CREATE TABLE Vehicle_Has_Insurance(
  	Vehicle_VIN_Number VARCHAR(50) REFERENCES Vehicle(Vehicle_VIN_Number),
	Insurance_ID VARCHAR(12) REFERENCES Insurance(Insurance_ID),
    PRIMARY KEY(Vehicle_VIN_Number, Insurance_ID)
);

CREATE Table Employee_Reserves_For_Customer(
    Employee_ID_Number NUMBER REFERENCES Employee(Employee_ID_Number),
	Customer_ID INTEGER REFERENCES Customer(Customer_ID),
    PRIMARY KEY(Employee_ID_Number,Customer_ID)
);

