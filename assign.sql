MySQL assisgnment 1
CREATE TABLE Empl (
    empno INT,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10,2),
    comm DECIMAL(10,2),
    deptno INT
);
1. SELECT ename, sal
FROM Empl
WHERE sal >= 2200;

2.SELECT *
FROM Empl
WHERE comm IS NULL OR comm = 0;

3.SELECT ename, sal
FROM Empl
WHERE sal NOT BETWEEN 2500 AND 4000;

4.SELECT ename, job, sal
FROM Empl
WHERE mgr IS NULL;
 
5.SELECT ename
FROM Empl
WHERE ename LIKE '%T';
   


 
