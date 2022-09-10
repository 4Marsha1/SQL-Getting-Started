
-- DEPT NAMES HAVING 2 EMPLOYEES 
select dept, count(dept) from emp group by dept having count(dept)=2;

-- EMPLOYEE DETAILS WHO ARE PRESENT IN LESS THAN 2 DEPT
select * from emp where dept in(
    select dept from emp group by dept having count(dept)<2
);
