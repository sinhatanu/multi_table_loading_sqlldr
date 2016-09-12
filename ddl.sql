CREATE TABLE students
  (
    stdno           NUMBER(4) NOT NULL,
    sname           VARCHAR2(10),
    date_addmission DATE
  );
CREATE TABLE std_courses
  (
    stdno    NUMBER(4) NOT NULL,
    courseno VARCHAR2(3)NOT NULL
  );
  
  /*Script Output 
  table STUDENTS created.
  table STD_COURSES created.

  