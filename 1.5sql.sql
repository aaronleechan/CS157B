CREATE TABLE School
(
  School_Name INT NOT NULL,
  SchoolID INT NOT NULL,
  PRIMARY KEY (SchoolID)
);

CREATE TABLE User
(
  UserID INT NOT NULL,
  UserName INT NOT NULL,
  Email INT NOT NULL,
  password INT NOT NULL,
  PRIMARY KEY (UserID)
);

CREATE TABLE Professor
(
  ProfessorID INT NOT NULL,
  last_name INT NOT NULL,
  first_name INT NOT NULL,
  PRIMARY KEY (ProfessorID)
);

CREATE TABLE Department
(
  DepartmentID INT NOT NULL,
  DepartmenCode INT NOT NULL,
  SchoolID INT NOT NULL,
  PRIMARY KEY (DepartmentID),
  FOREIGN KEY (SchoolID) REFERENCES School(SchoolID)
);

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

CREATE TABLE CLASS
(
  ClassID INT NOT NULL,
  Class_Name INT NOT NULL,
  DepartmentID INT NOT NULL,
  ProfessorID INT NOT NULL,
  PRIMARY KEY (ClassID),
  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
  FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID)
);

CREATE TABLE NoteBook
(
  NoteBookID INT NOT NULL,
  NotebookName INT NOT NULL,
  UserID INT NOT NULL,
  ClassID INT NOT NULL,
  PRIMARY KEY (NoteBookID),
  FOREIGN KEY (UserID) REFERENCES User(UserID),
  FOREIGN KEY (ClassID) REFERENCES CLASS(ClassID)
);

CREATE TABLE Note
(
  Definition INT,
  Term INT NOT NULL,
  NoteID INT NOT NULL,
  NoteBookID INT NOT NULL,
  PRIMARY KEY (NoteID),
  FOREIGN KEY (NoteBookID) REFERENCES NoteBook(NoteBookID)
);

CREATE TABLE Vote
(
  User_Rating INT NOT NULL,
  NoteBookID INT NOT NULL,
  UserID INT NOT NULL,
  PRIMARY KEY (NoteBookID, UserID),
  FOREIGN KEY (NoteBookID) REFERENCES NoteBook(NoteBookID),
  FOREIGN KEY (UserID) REFERENCES User(UserID)
);