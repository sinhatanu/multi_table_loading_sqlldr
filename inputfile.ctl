 -- Loads STUDENTS records from first 15 characters
   -- Creates and loads COURSES records for each COURSE listed
   -- for each stdno 
   LOAD DATA
   INFILE 'inputfile.txt'
   BADFILE 'inputfile.bad'
   DISCARDFILE 'inputfile.dsc'
    REPLACE
     INTO TABLE students
   (stdno   POSITION(1:4)     INTEGER EXTERNAL,
   sname    POSITION(6:15)    CHAR
   ) 
     INTO TABLE std_courses
   -- courses has two columns, both not null: STDNO and COURSENO
     WHEN courseno != '   '
   (stdno   POSITION(1:4)     INTEGER EXTERNAL,
    courseno   POSITION(16:18)   INTEGER EXTERNAL)   -- 1st course
     INTO TABLE std_courses
     WHEN courseno != '   '
   (stdno    POSITION(1:4)     INTEGER EXTERNAL,
    courseno   POSITION(20:22)    INTEGER EXTERNAL)   -- 2nd course
     INTO TABLE std_courses
     WHEN courseno != '   '
   (stdno   POSITION(1:4)    INTEGER EXTERNAL,
    courseno  POSITION(24:26)  INTEGER EXTERNAL)   -- 3rd course