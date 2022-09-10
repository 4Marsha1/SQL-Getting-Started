-- ADD COLUMN 
alter table student add address varchar(255);

-- REMOVE COLUMN
alter table student drop column address;

-- MODIFY COLUMN DATATYPE & LENGTH
alter table student modify StudentID varChar(255);

-- RENAME COLUMN NAME
alter table student rename column StudentID to ScholarID;

-- RENAME TABLE
alter table student rename  to college;

-- MODIFY CONSTRAINTS
alter table college add primary key (ScholarID);
