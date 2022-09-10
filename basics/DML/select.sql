create table emp(
    E_id int,
    E_name varchar(255),
    Dept varchar(255),
    Salary int
);

insert into emp 
values
    (1,'Ram','HR',10000),
    (2,'Amrit','Marketing',20000),
    (3,'Ravi','HR',30000),
    (4,'Nitin','Marketing',40000),
    (5,'Varun','IT',50000);

-- NESTED QUERIES TO FIND MAX SALARY PERSON
select * from emp where salary = (
    select max(salary) from emp
);

-- 2nd HIGHEST SALARY
select max(salary) from emp where salary <> (
    select max(salary) from emp
);

-- NESTED QUERIES TO FIND 2ND MAX SALARY PERSON
select * from emp where salary=(
    select max(salary) from emp where salary <> (
        select max(salary) from emp
    )
);