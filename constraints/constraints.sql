
-- UNIQUE
-- NOT NULL
-- PRIMARY KEY (UNIQUE + NOT NULL)
-- FOREIGN KEY
-- CHECK ( Check(Age>=18) )
-- DEFAULT ( if null provided, add DEFAULT value )

create table student(
    S_id int primary key,
    S_name varchar(255) NOT NULL,
    Age int NOT NULL,
    Fees int default 10000,
    Check(Age>=18)
);