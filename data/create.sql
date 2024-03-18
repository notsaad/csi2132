-- Hotel_Chain Table
CREATE TABLE Hotel_Chain (
    Central_Office_Address TEXT PRIMARY KEY,
    Num_Hotels INTEGER,
    Contact_Info TEXT
);

-- Supervisor Table
CREATE TABLE Supervisor (
    Supervisor_ID INTEGER PRIMARY KEY,
    Hotel_Chain TEXT,
    Full_Name TEXT,
    SIN TEXT,
    FOREIGN KEY (Hotel_Chain) REFERENCES Hotel_Chain(Central_Office_Address) 
);

-- Hotel Table
CREATE TABLE Hotel (
    Hotel_Address TEXT PRIMARY KEY,
    Supervisor_ID INTEGER,
    Star_Rating INTEGER,
    Num_Rooms INTEGER,
    Contact_Info TEXT,
    FOREIGN KEY (Supervisor_ID) REFERENCES Supervisor(Supervisor_ID) 
);

-- Employee Table
CREATE TABLE Employee (
    SIN TEXT PRIMARY KEY,
    Hotel_Address TEXT,
    Full_Name TEXT,
    Position TEXT,
    FOREIGN KEY (Hotel_Address) REFERENCES Hotel(Hotel_Address) 
);

-- Customer Table
CREATE TABLE Customer (
    Customer_ID INTEGER PRIMARY KEY,
    Full_Name TEXT,
    Address TEXT,
    System_Registration_Date DATE 
);

-- Hotel_Room Table
CREATE TABLE Hotel_Room (
    Hotel_Address TEXT,
    Room_Number TEXT,
    Capacity INTEGER,
    View_Type TEXT,
    Extendability TEXT,
    Price DECIMAL,
    Damages TEXT,
    Amenities TEXT,
    PRIMARY KEY (Hotel_Address, Room_Number), 
    FOREIGN KEY (Hotel_Address) REFERENCES Hotel(Hotel_Address) 
);

-- Reservation Table
CREATE TABLE Reservation (
    Customer_ID INTEGER,
    Hotel_Address TEXT,
    Room_Number TEXT,
    Check_In_Date DATE,
    Check_Out_Date DATE,
    Total_Price DECIMAL,
    PRIMARY KEY (Customer_ID, Hotel_Address, Room_Number), 
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Hotel_Address, Room_Number) REFERENCES Hotel_Room(Hotel_Address, Room_Number) 
);