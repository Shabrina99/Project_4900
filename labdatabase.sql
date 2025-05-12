
CREATE TABLE User (
    User_ID INT AUTO_INCREMENT PRIMARY KEY,
    email_address VARCHAR(100),
    User_password VARCHAR(100)
);

CREATE TABLE Computer (
    Computer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Computer_Name VARCHAR(100)
);

CREATE TABLE Operator (
    Operator_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Kit (
    Kit_ID INT AUTO_INCREMENT PRIMARY KEY,
    Kit_type VARCHAR(100),
    Date_opened DATE,
    Kit_owner VARCHAR(100),
    Number_preps_expected INT
);

CREATE TABLE Minion (
    Minion_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Device_purchasing_date DATE,
    notes TEXT
);

CREATE TABLE Run_Detail (
    Run_ID INT AUTO_INCREMENT PRIMARY KEY,
    Date_Run_Started DATE,
    TimeStamp TIMESTAMP,
    Minion_ID INT,
    Notes TEXT,
    Numbers_of_Samples INT,
    Kit_ID INT,
    Computer_ID INT,
    Operator_ID INT,
    Experiment_ID INT,
    FOREIGN KEY (Minion_ID) REFERENCES Minion(Minion_ID),
    FOREIGN KEY (Kit_ID) REFERENCES Kit(Kit_ID),
    FOREIGN KEY (Computer_ID) REFERENCES Computer(Computer_ID),
    FOREIGN KEY (Operator_ID) REFERENCES Operator(Operator_ID),
    FOREIGN KEY (Experiment_ID) REFERENCES Experiment_Detail(Experiment_ID)
);

CREATE TABLE Experiment_Detail (
    Experiment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Protocol_Link TEXT,
    Date_Experiment_Started DATE,
    TimeStamp TIMESTAMP,
    Description TEXT,
    Run_ID INT,
    FOREIGN KEY (Run_ID) REFERENCES Run_Detail(Run_ID)
);

CREATE TABLE Participants (
    Participant_ID INT AUTO_INCREMENT PRIMARY KEY,
    participant_Name VARCHAR(100),
    Experiment_ID INT,
    FOREIGN KEY (Experiment_ID) REFERENCES Experiment_Detail(Experiment_ID)
);

CREATE TABLE Flow_Cell (
    Unit_ID INT AUTO_INCREMENT PRIMARY KEY,
    Unit_Type VARCHAR(100),
    Unit_code VARCHAR(100),
    Pros_At_Start INT,
    Pros_After_First_Check INT,
    Date_Unit_Arrived DATE,
    Run_ID INT,
    FOREIGN KEY (Run_ID) REFERENCES Run_Detail(Run_ID)
);

CREATE TABLE Metadata (
    Metadata_ID INT AUTO_INCREMENT PRIMARY KEY,
    Sample_code VARCHAR(100),
    Date_collected DATE,
    Location_collected_name VARCHAR(100),
    Lat_collected DECIMAL(10,6),
    Long_collected DECIMAL(10,6),
    Time_collected TIME,
    Collection_method VARCHAR(100),
    Collection_notes TEXT,
    Experimenter_name VARCHAR(100),
    Experiment_ID INT,
    FOREIGN KEY (Experiment_ID) REFERENCES Experiment_Detail(Experiment_ID)
);

CREATE TABLE Barcode (
    Barcode VARCHAR(100) PRIMARY KEY,
    Sample_code VARCHAR(100),
    Run_ID INT,
    FOREIGN KEY (Sample_code) REFERENCES Metadata(Sample_code),
    FOREIGN KEY (Run_ID) REFERENCES Run_Detail(Run_ID)
);
