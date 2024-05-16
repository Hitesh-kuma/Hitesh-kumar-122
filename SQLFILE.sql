create database student_record;
use student_record;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Address VARCHAR(255),
    Contact VARCHAR(20)
);

CREATE TABLE CourseEnrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    CreditHours INT,
    Department VARCHAR(100)
);
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade VARCHAR(2),
    ExamDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    AttendanceDate DATE,
    AttendanceStatus VARCHAR(10),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
CREATE TABLE LibraryLoans (
    LoanID INT PRIMARY KEY,
    StudentID INT,
    BookID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
CREATE TABLE ExtracurricularActivities (
    ActivityID INT PRIMARY KEY,
    StudentID INT,
    ActivityName VARCHAR(100),
    DateJoined DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
CREATE TABLE Guardian (
    GuardianID INT PRIMARY KEY,
    StudentID INT,
    GuardianName VARCHAR(100),
    Relationship VARCHAR(50),
    Contact VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
CREATE TABLE FinancialRecords (
    TransactionID INT PRIMARY KEY,
    StudentID INT,
    TransactionType VARCHAR(20),
    Amount DECIMAL(10, 2),
    TransactionDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
CREATE TABLE HealthRecords (
    HealthRecordID INT PRIMARY KEY,
    StudentID int,
);