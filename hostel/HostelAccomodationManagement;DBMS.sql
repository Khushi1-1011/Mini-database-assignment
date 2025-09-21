USE HostelaccomodationmanagementDB;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    DOB DATE,
    Phone VARCHAR(15),
    Email VARCHAR(100)
    );
    CREATE TABLE HostelRoom (
    RoomNumber INT PRIMARY KEY,
    RoomType VARCHAR(20),
    Capacity INT,
    Occupied INT
);
CREATE TABLE Warden (
    WardenID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);
CREATE TABLE Allocation (
    AllocationID INT PRIMARY KEY,
    StudentID INT,
    RoomNumber INT,
	Date DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (RoomNumber) REFERENCES HostelRoom(RoomNumber)
);
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    StudentID INT,
    Amount DECIMAL(10,2),
    PaymentDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
INSERT INTO Student VALUES (1, 'Diya Sharma', '2006-03-12', '9876543210', 'diya1201@gmail.com');
INSERT INTO Student VALUES (2, 'Rohan Verma', '2005-07-21', '9812345678', 'rohanv21@gmail.com');
INSERT INTO Student VALUES (3, 'Aditi Nair', '2004-11-03', '9823456789', 'aditinair03@gmail.com');
INSERT INTO Student VALUES (4, 'Kunal Mehta', '2005-01-15', '9834567890', 'kunalmehta15@gmail.com');
INSERT INTO Student VALUES (5, 'Sneha Iyer', '2006-09-25', '9845678901', 'snehaiyer25@gmail.com');
INSERT INTO Student VALUES (6, 'Aryan Gupta', '2004-05-09', '9856789012', 'aryangupta09@gmail.com');
INSERT INTO Student VALUES (7, 'Priya Reddy', '2005-03-18', '9867890123', 'priyareddy18@gmail.com');
INSERT INTO Student VALUES (8, 'Manav Joshi', '2006-12-28', '9878901234', 'manavjoshi28@gmail.com');
INSERT INTO Student VALUES (9, 'Neha Kapoor', '2005-06-14', '9889012345', 'nehakapoor14@gmail.com');
INSERT INTO Student VALUES (10, 'Aditya Rao', '2004-02-22', '9890123456', 'adityarao22@gmail.com');
INSERT INTO Student VALUES (11, 'Meera Patel', '2006-04-19', '9901234567', 'meerapatel19@gmail.com');
INSERT INTO Student VALUES (12, 'Kabir Khan', '2005-08-30', '9912345678', 'kabirkhan30@gmail.com');
INSERT INTO Student VALUES (13, 'Ananya Singh', '2004-10-05', '9923456789', 'ananyasingh05@gmail.com');
INSERT INTO Student VALUES (14, 'Siddharth Jain', '2006-01-12', '9934567890', 'siddjain12@gmail.com');
INSERT INTO Student VALUES (15, 'Tanya Deshmukh', '2005-11-27', '9945678901', 'tanyadesh27@gmail.com');
INSERT INTO Student VALUES (16, 'Varun Malhotra', '2004-07-08', '9956789012', 'varunmal08@gmail.com');
INSERT INTO Student VALUES (17, 'Ishita Bansal', '2006-02-03', '9967890123', 'ishitab03@gmail.com');
INSERT INTO Student VALUES (18, 'Rahul Chatterjee', '2005-09-16', '9978901234', 'rahulchat16@gmail.com');
INSERT INTO Student VALUES (19, 'Pooja Das', '2004-12-07', '9989012345', 'poojadas07@gmail.com');
INSERT INTO Student VALUES (20, 'Arjun Kulkarni', '2006-06-11', '9990123456', 'arjunkul11@gmail.com');
INSERT INTO HostelRoom VALUES (101, 'Single', 1, 1);
INSERT INTO HostelRoom VALUES (102, 'Single', 1, 1);
INSERT INTO HostelRoom VALUES (103, 'Single', 1, 1);
INSERT INTO HostelRoom VALUES (104, 'Single', 1, 1);
INSERT INTO HostelRoom VALUES (105, 'Single', 1, 1);
INSERT INTO HostelRoom VALUES (106, 'Single', 1, 1);
INSERT INTO HostelRoom VALUES (107, 'Single', 1, 0);
INSERT INTO HostelRoom VALUES (108, 'Single', 1, 1);
INSERT INTO HostelRoom VALUES (109, 'Double', 2, 1);
INSERT INTO HostelRoom VALUES (110, 'Double', 2, 1);
INSERT INTO HostelRoom VALUES (111, 'Double', 2, 1);
INSERT INTO HostelRoom VALUES (112, 'Double', 2, 1);
INSERT INTO HostelRoom VALUES (113, 'Double', 2, 1);
INSERT INTO HostelRoom VALUES (114, 'Double', 2, 1);
INSERT INTO HostelRoom VALUES (115, 'Double', 2, 1);
INSERT INTO HostelRoom VALUES (116, 'Double', 2, 1);
INSERT INTO HostelRoom VALUES (121, 'Double', 2, 2);
INSERT INTO HostelRoom VALUES (122, 'Double', 2, 2);
INSERT INTO HostelRoom VALUES (123, 'Double', 2, 1);
INSERT INTO HostelRoom VALUES (117, 'Triple', 3, 0);
INSERT INTO HostelRoom VALUES (118, 'Triple', 3, 0);
INSERT INTO HostelRoom VALUES (119, 'Triple', 3, 0);
INSERT INTO HostelRoom VALUES (120, 'Triple', 3, 0);
INSERT INTO Warden VALUES (1, 'Mrs. Naina Jain', '9876500087', 'jainn@hostel.com');
INSERT INTO Warden VALUES (2, 'Ms. Kavita Choudhary', '9876546001', 'kavita@hostel.com');
INSERT INTO Allocation VALUES (001, 1, 101, '2025-07-01');
INSERT INTO Allocation VALUES (002, 2, 102, '2025-07-03');
INSERT INTO Allocation VALUES (003, 3, 103, '2025-07-05');
INSERT INTO Allocation VALUES (004, 4, 104, '2025-07-06');
INSERT INTO Allocation VALUES (005, 5, 105, '2025-07-07'); 
INSERT INTO Allocation VALUES (006, 6, 106, '2025-07-10');
INSERT INTO Allocation VALUES (007, 7, 108, '2025-07-12'); 
INSERT INTO Allocation VALUES (008, 8, 109, '2025-07-14');
INSERT INTO Allocation VALUES (009, 9, 110, '2025-07-17');
INSERT INTO Allocation VALUES (010, 10, 111, '2025-07-19');
INSERT INTO Allocation VALUES (011, 11, 112, '2025-07-21');
INSERT INTO Allocation VALUES (012, 12, 113, '2025-07-23');
INSERT INTO Allocation VALUES (013, 13, 114, '2025-08-01');
INSERT INTO Allocation VALUES (014, 14, 115, '2025-08-02'); 
INSERT INTO Allocation VALUES (015, 15, 116, '2025-08-03'); 
INSERT INTO Allocation VALUES (016, 16, 121, '2025-08-05');
INSERT INTO Allocation VALUES (017, 17, 121, '2025-08-07');
INSERT INTO Allocation VALUES (018, 18, 122, '2025-08-09');
INSERT INTO Allocation VALUES (019, 19, 122, '2025-08-12');
INSERT INTO Allocation VALUES (020, 20, 123, '2025-08-15');
INSERT INTO Payment VALUES (801, 1, 100000, '2025-07-01', 'Paid');
INSERT INTO Payment VALUES (802, 2, 100000, '2025-07-03', 'Pending');
INSERT INTO Payment VALUES (803, 3, 100000, '2025-07-05', 'Paid');
INSERT INTO Payment VALUES (804, 4, 100000, '2025-07-07', 'Pending');
INSERT INTO Payment VALUES (805, 5, 100000, '2025-07-09', 'Paid');
INSERT INTO Payment VALUES (806, 6, 100000, '2025-07-11', 'Paid');
INSERT INTO Payment VALUES (807, 7, 100000, '2025-07-13', 'Paid');
INSERT INTO Payment VALUES (808, 8, 100000, '2025-07-15', 'Pending');
INSERT INTO Payment VALUES (809, 9, 100000, '2025-07-17', 'Paid');
INSERT INTO Payment VALUES (810, 10, 100000, '2025-07-19', 'Paid');
INSERT INTO Payment VALUES (811, 11, 100000, '2025-07-21', 'Pending');
INSERT INTO Payment VALUES (812, 12, 100000, '2025-07-23', 'Paid');
INSERT INTO Payment VALUES (813, 13, 100000, '2025-07-25', 'Pending');
INSERT INTO Payment VALUES (814, 14, 100000, '2025-07-27', 'Paid');
INSERT INTO Payment VALUES (815, 15, 100000, '2025-07-29', 'Pending');
INSERT INTO Payment VALUES (816, 16, 100000, '2025-08-01', 'Paid');
INSERT INTO Payment VALUES (817, 17, 100000, '2025-08-03', 'Pending');
INSERT INTO Payment VALUES (818, 18, 100000, '2025-08-05', 'Paid');
INSERT INTO Payment VALUES (819, 19, 100000, '2025-08-07', 'Paid');
INSERT INTO Payment VALUES (820, 20, 100000, '2025-08-09', 'Pending');
SELECT s.StudentID, s.Name, a.RoomNumber, r.RoomType
FROM Student s
JOIN Allocation a ON s.StudentID = a.StudentID
JOIN HostelRoom r ON a.RoomNumber = r.RoomNumber
ORDER BY a.RoomNumber;
SELECT 
    COUNT(*) AS RoomsWithVacancy,
    SUM(Capacity - Occupied) AS TotalAvailableBeds
FROM HostelRoom
WHERE Occupied < Capacity;
SELECT 
    s.StudentID, 
    s.Name, 
    p.Amount, 
    p.Status
FROM Student s
JOIN Payment p ON s.StudentID = p.StudentID
WHERE p.Status = 'Pending';
SELECT 
    MONTH(Date) AS Month, 
    COUNT(*) AS StudentsJoined
FROM Allocation
WHERE MONTH(Date) IN (7, 8)
GROUP BY MONTH(Date);
UPDATE Warden
SET Name = 'Mrs. Kavita Sharma',
    Phone = '9876500010',
    Email = 'kavita.sharma@hostel.com'
WHERE WardenID = 2;













