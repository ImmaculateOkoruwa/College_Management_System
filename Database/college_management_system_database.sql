-- Create schema college_management_system
CREATE DATABASE IF NOT EXISTS college_management_system;
USE college_management_system;

-- Definition of table `admin_announ`
DROP TABLE IF EXISTS admin_announ;
CREATE TABLE admin_announ (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  date DATE NOT NULL,
  announ TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- Definition of table `attendance`
DROP TABLE IF EXISTS attendance;
CREATE TABLE attendance (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  sdepart VARCHAR(45) NOT NULL,
  ssection VARCHAR(45) NOT NULL,
  stud_id VARCHAR(45) NOT NULL,
  sstatus VARCHAR(45) NOT NULL,
  sdate DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- Definition of table `depart`
DROP TABLE IF EXISTS depart;
CREATE TABLE depart (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  did VARCHAR(45) NOT NULL,
  dname VARCHAR(45) NOT NULL,
  yoc YEAR NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- Definition of table `mark`
DROP TABLE IF EXISTS mark;
CREATE TABLE mark (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  depart VARCHAR(45) NOT NULL,
  section VARCHAR(45) NOT NULL,
  studid VARCHAR(45) NOT NULL,
  mark1 INT UNSIGNED NOT NULL,
  mark2 INT UNSIGNED NOT NULL,
  mark3 INT UNSIGNED NOT NULL,
  mark4 INT UNSIGNED NOT NULL,
  practical INT UNSIGNED NOT NULL,
  avg INT UNSIGNED NOT NULL,
  total INT UNSIGNED NOT NULL,
  grade VARCHAR(45) NOT NULL,
  remark VARCHAR(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- Definition of table `report`
DROP TABLE IF EXISTS report;
CREATE TABLE report (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  departments VARCHAR(45) NOT NULL,
  sections VARCHAR(45) NOT NULL,
  staffidd VARCHAR(45) NOT NULL,
  datee DATE NOT NULL,
  subj VARCHAR(45) NOT NULL,
  year YEAR NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- Definition of table `section`
DROP TABLE IF EXISTS section;
CREATE TABLE section (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cname VARCHAR(45) NOT NULL,
  sectionid VARCHAR(45) NOT NULL,
  seats INT UNSIGNED NOT NULL,
  yocc YEAR NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO section (cname, sectionid, seats, yocc) VALUES
('B.A. History', 'A01', 45, 2015),
('B.A. History', 'A02', 50, 2015),
('B.Sc. Mathematics', 'A01', 45, 2015),
('B.Sc. Mathematics', 'A02', 50, 2015),
('B.Sc. Physics', 'A01', 50, 2015),
('B.Sc. Physics', 'A02', 50, 2015),
('B.Sc. Chemistry', 'A01', 50, 2015),
('B.Sc. Chemistry', 'A02', 50, 2015),
('B.Sc. Computer Science', 'A01', 50, 2015),
('B.Sc. Computer Science', 'A02', 50, 2015),
('B.C.A. Computer Application', 'A01', 50, 2015),
('B.C.A. Computer Application', 'A02', 50, 2015),
('B.Sc. - A.I.', 'A01', 50, 2024),
('B.Sc. - A.I.', 'A02', 50, 2024);

-- Definition of table `staff`
DROP TABLE IF EXISTS staff;
CREATE TABLE staff (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  staffid VARCHAR(45) NOT NULL,
  staffname VARCHAR(45) NOT NULL,
  jdate DATE NOT NULL,
  email VARCHAR(45) NOT NULL,
  phone VARCHAR(45) NOT NULL,
  secretkey VARCHAR(45) NOT NULL,
  photo LONGBLOB NOT NULL,
  pass VARCHAR(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- Definition of table `staff_announ`
DROP TABLE IF EXISTS staff_announ;
CREATE TABLE staff_announ (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  department VARCHAR(45) NOT NULL,
  section VARCHAR(45) NOT NULL,
  announ TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- Definition of table `stud`
DROP TABLE IF EXISTS stud;
CREATE TABLE stud (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  sname VARCHAR(45) NOT NULL,
  lname VARCHAR(45) NOT NULL,
  fname VARCHAR(45) NOT NULL,
  dob DATE NOT NULL,
  scity VARCHAR(45) NOT NULL,
  scountry VARCHAR(45) NOT NULL,
  scode VARCHAR(45) NOT NULL,
  snumber VARCHAR(45) NOT NULL,
  jcource VARCHAR(45) NOT NULL,
  semail VARCHAR(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- Definition of table `stud_info`
DROP TABLE IF EXISTS stud_info;
CREATE TABLE stud_info (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  sid VARCHAR(45) NOT NULL,
  sname VARCHAR(45) NOT NULL,
  dob DATE NOT NULL,
  email VARCHAR(45) NOT NULL,
  depart VARCHAR(45) NOT NULL,
  section VARCHAR(45) NOT NULL,
  phone VARCHAR(45) NOT NULL,
  street VARCHAR(45) NOT NULL,
  state VARCHAR(45) NOT NULL,
  country VARCHAR(45) NOT NULL,
  Secretkey VARCHAR(45) NOT NULL,
  photo LONGBLOB NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- Definition of table `timetable`
DROP TABLE IF EXISTS timetable;
CREATE TABLE timetable (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  depart1 VARCHAR(45) NOT NULL,
  section1 VARCHAR(45) NOT NULL,
  day VARCHAR(45) NOT NULL,
  ihours TIME NOT NULL,
  iihours TIME NOT NULL,
  iiihours TIME NOT NULL,
  ivhours TIME NOT NULL,
  vhours TIME NOT NULL,
  vihours TIME NOT NULL,
  viihours TIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
