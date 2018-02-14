use CS157B_Database;

CREATE TABLE School(
    SchoolID int NOT NULL AUTO_INCREMENT,
    SchoolName VARCHAR(64) NOT NULL,
    PRIMARY KEY(SchoolID)
);
ALTER table School  auto_increment = 1000;

CREATE TABLE Department(
    DepartmentID int NOT NULL AUTO_INCREMENT,
    SchoolID int,
    DepartmentCode VARCHAR(64) NOT NULL,
    PRIMARY KEY (DepartmentID),
    FOREIGN KEY (SchoolID) REFERENCES School(SchoolID)
);
ALTER table Department auto_increment = 100;


CREATE TABLE Professor(
    ProfessorID int NOT NULL AUTO_INCREMENT, 
    LastName VARCHAR(64) NOT NULL,
    FirstName VARCHAR(64) NOT NULL,
    PRIMARY KEY (ProfessorID)
);
ALTER table Professor auto_increment = 1;

CREATE TABLE Professor_Phone(
	Phone VARCHAR(20) NOT NULL,
	ProfessorID int,
	PRIMARY KEY (phone),
	FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID)
);

CREATE TABLE Professor_Email(
	Email VARCHAR(64) NOT NULL,
	professorID int,
	PRIMARY KEY (Email),
	FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID)
);                                                                                                

CREATE TABLE Class(
    ClassID int NOT NULL AUTO_INCREMENT, 
    DepartmentID int,
    ProfessorID int,
    ClassName VARCHAR(64) NOT NULL,
    PRIMARY KEY (classID),
    FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY(ProfessorID) REFERENCES Professor(ProfessorID)
);
ALTER table Class auto_increment = 10;

CREATE TABLE User(
    UserID int NOT NULL AUTO_INCREMENT, 
    UserName VARCHAR(64) NOT NULL,
    Email VARCHAR(64) NOT NULL,
    passwords  VARCHAR(64) NOT NULL,
    PRIMARY KEY(UserID)
);
ALTER table User auto_increment = 10000;


CREATE TABLE Notebook(
    NotebookID int NOT NULL AUTO_INCREMENT, 
    UploaderID int,
    ClassID int,
    NotebookName VARCHAR(64) NOT NULL,
    PRIMARY KEY (NotebookID),
    FOREIGN KEY (UploaderID) REFERENCES User(UserID),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);
ALTER table Notebook auto_increment = 1000;


CREATE TABLE Owns(
	NoteBookID int,
	UserID int,
	FOREIGN KEY(NoteBookID) REFERENCES Notebook(NoteBookID),
	FOREIGN KEY(UserID) REFERENCES User(UserID)
);

CREATE TABLE Vote(
	NoteBookID int,
	UserID int,
	UserRating int,
	FOREIGN KEY(NoteBookID) REFERENCES Notebook(NotebookID),
	FOREIGN KEY(UserID) REFERENCES User(UserID)
);

CREATE TABLE Note(
	NoteID int,
	Definition text,
	Term VARCHAR(128),
	NoteBookID int,
	FOREIGN KEY(NoteBookID) REFERENCES Notebook(NotebookID)
);






