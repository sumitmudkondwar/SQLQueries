with CTE(ranks, empno, ename)as
(select row_number() over(partition by empno, ename order by ename asc) as ranks, empno, ename from emp) 

delete from CTE where ranks > 1
