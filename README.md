# Hostel Accommodation Management System

This project demonstrates a simple **Hostel Accommodation Management Database** using MySQL.  
It allows management of students, hostel rooms, wardens, room allocations, and payments.With the help of these queries, we are able to manage student allocations,
check available hostel capacity, monitor pending payments,analyze admission trends, and update staff details efficiently.

## Database

**Database Name:** HostelAccommodationManagementDB

## Tables Overview

### 1. **Student**
Stores details of students living in the hostel.

| Column     | Type         | Description                |
|-----------|---------------|----------------------------|
| StudentID | INT (PK)      | Unique student identifier  |
| Name      | VARCHAR(100)  | Full name of the student   |
| DOB       | DATE          | Date of birth              |
| Phone     | VARCHAR(15)   | Contact number             |
| Email     | VARCHAR(100)  | Email address              |


### 2. **HostelRoom**
Stores information about hostel rooms.

| Column     | Type        | Description                     |
|-----------|--------------|---------------------------------|
| RoomNumber| INT (PK)     | Unique room number               |
| RoomType  | VARCHAR(20)  | Single / Double / Triple         |
| Capacity  | INT          | Maximum number of students       |
| Occupied  | INT          | Number of students currently in the room |


### 3. **Warden**
Stores information about hostel wardens.

| Column   | Type        | Description              |
|----------|-------------|--------------------------|
| WardenID | INT (PK)    | Unique warden ID         |
| Name     | VARCHAR(100)| Warden's full name       |
| Phone    | VARCHAR(15) | Contact number           |
| Email    | VARCHAR(100)| Email address            |


### 4. **Allocation**
Keeps track of which student is assigned to which room.

| Column       | Type   | Description                    |
|-------------|---------|---------------------------------|
| AllocationID| INT (PK)| Unique allocation identifier    |
| StudentID   | INT     | References `Student(StudentID)`|
| RoomNumber  | INT     | References `HostelRoom(RoomNumber)`|
| Date        | DATE    | Allocation date                 |


### 5. **Payment**
Tracks payments made by students.

| Column      | Type         | Description                  |
|------------|---------------|-------------------------------|
| PaymentID  | INT (PK)      | Unique payment identifier     |
| StudentID  | INT           | References `Student(StudentID)|
| Amount     | DECIMAL(10,2) | Payment amount                |
| PaymentDate| DATE          | Date of payment               |
| Status     | VARCHAR(20)   | Paid or Pending               |

1)To View student room allocations:
SELECT s.StudentID, s.Name, a.RoomNumber, r.RoomType
FROM Student s
JOIN Allocation a ON s.StudentID = a.StudentID
JOIN HostelRoom r ON a.RoomNumber = r.RoomNumber;

2)Check available rooms
SELECT COUNT(*) AS RoomsWithVacancy, SUM(Capacity - Occupied) AS TotalAvailableBeds
FROM HostelRoom
WHERE Occupied < Capacity;

3)Students with pending payments
SELECT s.StudentID, s.Name, p.Amount, p.Status
FROM Student s
JOIN Payment p ON s.StudentID = p.StudentID
WHERE p.Status = 'Pending';

4)Update warden information
UPDATE Warden
SET Name = 'Mrs. Anita Sharma',
    Phone = '9876500010',
    Email = 'anita.sharma@hostel.com'
WHERE WardenID = 2;

5)Count students joined in specific months
SELECT MONTH(Date) AS Month, COUNT(*) AS StudentsJoined
FROM Allocation
WHERE MONTH(Date) IN (7, 8)
GROUP BY MONTH(Date);

####Summary of Relationships
Student —< Payment (1–M)
Student — Allocation — HostelRoom (M–N, resolved via Allocation as weak entity)
Warden —< HostelRoom (1–M)


Features
-Manage student profiles and details.
-Track hostel room availability and occupancy.
-Allocate rooms to students with allocation dates.
-Track payment status for each student.
-Manage warden information.

Notes
-All tables use Primary Keys and Foreign Keys to maintain relationships.
-Ensure that Occupied does not exceed the Capacity of a room.
-Payment statuses are tracked as Paid or Pending.
-This database is ideal for beginners to practice SQL, joins, and relational database concepts in a practical hostel management scenario.



