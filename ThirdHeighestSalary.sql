select * from 
(select row_number() over(order by sal) rows1, sal from
(select distinct(SAL) sal from EMP)a)b
where b.rows1 = 3
