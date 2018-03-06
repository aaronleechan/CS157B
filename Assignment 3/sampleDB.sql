CREATE TABLE `Class` (
  'ClassID' int(11) NOT NULL,
  `ClassName` varchar(50) NOT NULL,
  `ClassCode` int(11),
  `Unit` VARCHAR(50) NOT NULL,
  PRIMARY KEY ('ClassID'),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


---
--- Table structure for table `Class`
---

INSERT INTO 'Class' ('ClassID', 'ClassName','ClassCode','Unit')VALUES
(100,'Object Oriented Design and Data Structure','CS 151',3),
(101,'Organic Chemistry','CHEM 133A',5),
(102,'THE LIVING WORLD','BIOL 010',4),
(103,'Software Engineering I','CMPE 131',3),
(104,'Software Engineering II','CMPE 133',3),
(105,'Calculus','Math 030',3)


-- ------------------------------------

--
-- Table structure for table 'Department'
--
CREATE TABLE 'Department'
(
'DepartmentID' int(11) NOT NULL,
'DepartmentCode' varchar(50) DEFAULT NULL,
'DepartmentName' varchar(50) NOT NULL,
PRIMARY KEY('DepartmentID'),
)

---
--- Table structure for table `Department`
---

INSERT INTO 'Department' ('DepartmentID','DepartmentCode','DepartmentName')VALUES
(1000,'SE','Software Engineering Department')
(1001,'CS','Computer Science Department')
(1002,'CE','Computer Engineering Department')
(1003,'Math','Mathematics Department')
(1004,'Bio','Biology Department')
(1005,'Chem','Chemistry Department')

-- ------------------------------------

--
-- Table structure for table 'School'
--
CREATE TABLE `School` (
  `SchoolName` varchar(50) NOT NULL,
  `SchoolID` int(11) NOT NULL,
  PRIMARY KEY ('SchoolID'),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `School`
--
INSERT INTO `School` (`SchoolName`, `SchoolID`) VALUES
('San Jose State University', 1000);

-- ------------------------------------

--
-- Table structure for table 'Student'
--
CREATE TABLE `Student` (
  `StudentID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  PRIMARY KEY('StudentID'),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO 'Student'('StudentID','FirstName','LastName')VALUES
(10112212,'Jason','Chong')
(10112213,'Alex','Chen')
(10112214,'Obama','Brack')
(10112215,'Donald','Trump')

-- --------------------------------------------------------

CREATE TABLE `Professor` (
  `ProfessorID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  'ProfessorEmail' varchar(50) DEFAULT NULL,
  'ProfessorPhone' varchar(50) DEFAULT NULL,
  PRIMARY KEY('StudentID'),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO 'Professor'('ProfessorID','FirstName','LastName','ProfessorEmail','ProfessorPhone')VALUES
(1,'Cay Horstmann','cay.horstmann@sjsu.edu','924-5085')
(2,'Suneuy Kim','suneuy.kim@sjsu.edu','924-5122')
(3,'Ron	Mak','ron.mak@sjsu.edu')	
(4,'Anna Meng','hsin-yi.meng@sjsu.edu')	
(5,'Frank Lin','frank.lin@sjsu.edu')	
(6,'Kong Lin','kong.li@sjsu.edu')	
(7,'Melody Esfandiari','melody.esfandiari@sjsu.edu','408-924-4973')
(8,'Marilyn	Blockus','marilyn.blockus@sjsu.edu','924-5115')

-- --------------------------------------------------------

--
-- Table structure for table `Has`
--
CREATE Table 'Has'(
	'ClassID' int(11),
	'DepartmentID' int(11),
	'ProfessorID',int(11),
	FOREIGN KEY('ClassID') REFERENCES Class ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY('DepartmentID') REFERENCES Department ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY('ProfessorID') REFERENCES Professor ON DELETE SET NULL ON UPDATE CASCADE,
)

-- --------------------------------------------------------

--
-- Table structure for table `Take`
--

CREATE Table 'Take'(
	'Status' bit DEFAULT 'FALSE',
	'ClassID' int(11),
	'StudentID',
	FOREIGN KEY('ClassID') REFERENCES Class ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY('ProfessorID') REFERENCES Professor ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY('StudentID') REFERENCES Student ON DELETE SET NULL ON UPDATE CASCADE,
)




