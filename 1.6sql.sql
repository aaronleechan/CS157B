use cs157b;

CREATE TABLE School
(
  SchoolName INT NOT NULL,
  SchoolID int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (SchoolID)
);
ALTER table School  auto_increment = 1000;

CREATE TABLE User
(
  UserID int NOT NULL AUTO_INCREMENT,
  UserName INT NOT NULL,
  Email INT NOT NULL,
  password INT NOT NULL,
  PRIMARY KEY (UserID)
);
ALTER table User auto_increment = 10000;

CREATE TABLE Professor
(
  ProfessorID int NOT NULL AUTO_INCREMENT, 
  LastName INT NOT NULL,
  FirstName INT NOT NULL,
  PRIMARY KEY (ProfessorID)
);
ALTER table Professor auto_increment = 1;

CREATE TABLE Department
(
  DepartmentID int NOT NULL AUTO_INCREMENT,
  DepartmenCode INT NOT NULL,
  DepartmentName VARCHAR(50),
  SchoolID INT NOT NULL,
  PRIMARY KEY (DepartmentID),
  FOREIGN KEY (SchoolID) REFERENCES School(SchoolID)
);
ALTER table Department auto_increment = 100;

CREATE TABLE TeachAt
(
  ProfessorID INT NOT NULL,
  SchoolID INT NOT NULL,
  PRIMARY KEY (ProfessorID, SchoolID),
  FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID),
  FOREIGN KEY (SchoolID) REFERENCES School(SchoolID)
);

CREATE TABLE Professor_Phone
(
  Phone INT NOT NULL,
  ProfessorID INT NOT NULL,
  PRIMARY KEY (Phone, ProfessorID),
  FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID)
);

CREATE TABLE Professor_Email
(
  Email INT NOT NULL,
  ProfessorID INT NOT NULL,
  PRIMARY KEY (Email, ProfessorID),
  FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID)
);

CREATE TABLE Class
(
  ClassID int NOT NULL AUTO_INCREMENT, 
  ClassName INT NOT NULL,
  DepartmentID INT NOT NULL,
  ProfessorID INT NOT NULL,
  PRIMARY KEY (ClassID),
  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
  FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID)
);
ALTER table Class auto_increment = 10;

CREATE TABLE NoteBook
(
  NotebookID int NOT NULL AUTO_INCREMENT,
  NotebookName INT NOT NULL,
  UserID INT NOT NULL,
  ClassID INT NOT NULL,
  PRIMARY KEY (NoteBookID),
  FOREIGN KEY (UserID) REFERENCES User(UserID),
  FOREIGN KEY (ClassID) REFERENCES CLASS(ClassID)
);
ALTER table Notebook auto_increment = 1000;

CREATE TABLE Note
(
  Definition INT,
  Term INT NOT NULL,
  NoteID INT NOT NULL AUTO_INCREMENT,
  NoteBookID INT NOT NULL,
  PRIMARY KEY (NoteID),
  FOREIGN KEY (NoteBookID) REFERENCES NoteBook(NoteBookID)
);

CREATE TABLE Vote
(
  UserRating INT NOT NULL,
  NoteBookID INT NOT NULL,
  UserID INT NOT NULL,
  PRIMARY KEY (NoteBookID, UserID),
  FOREIGN KEY (NoteBookID) REFERENCES NoteBook(NoteBookID),
  FOREIGN KEY (UserID) REFERENCES User(UserID)
);