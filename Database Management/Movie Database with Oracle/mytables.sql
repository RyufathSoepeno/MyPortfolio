-- Table 1
-- Customer (CustomerID, Name, Street, City, State, Zipcode)
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR2(255) NOT NULL,
    Street VARCHAR2(255),
    City VARCHAR2(50),
    State VARCHAR2(20),
    Zipcode VARCHAR2(20)
);

-- Table 2
--  Film (FilmID, Title, RentalPrice, Kind)
CREATE TABLE Film (
    FilmID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR2(255) NOT NULL,
    RentalPrice DOUBLE NOT NULL,
    Kind VARCHAR2(50)
);

-- Table 3
-- Reserved (CustomerID, FilmID, ResDate)
CREATE TABLE Reserved (
    CustomerID INT,
    FilmID INT,
    ResDate DATE NOT NULL,
    PRIMARY KEY (CustomerID, FilmID, ResDate), -- Lists out all primary keys in this table
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE, -- Specify which column of CustomerID is a foreign Key
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID) ON DELETE CASCADE -- Specify which column of FilmID is a foreign Key
);
