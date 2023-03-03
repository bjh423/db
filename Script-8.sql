SELECT upper(ENAME) FROM EMP

SELECT LENGTH(ename) FROM emp

SELECT empno || ':' || ename FROM emp

SELECT NVL(comm, 0), sal+NVL(comm,0) FROM EMP

--정리문제

SELECT LENGTH(ename) FROM EMP

SELECT LENGTH(ename) FROM emp WHERE job = 'MANAGER'

SELECT ename, job FROM emp WHERE comm = NULL --x

SELECT ename, job FROM emp WHERE comm IS  NULL

SELECT hiredate FROM emp WHERE NOT comm = NULL --x

SELECT hiredate FROM emp WHERE comm IS NOT  NULL

SELECT substr(ename,2) FROM EMP

SELECT REPLACE(ENAME, 'K', 'P') FROM EMP

select empno || '번은 ' || ename || '입니다' AS x FROM EMP

SELECT hiredate, TO_CHAR(hiredate, 'mm'), TO_CHAR(hiredate, 'day') AS DAY FROM emp 

SELECT job,
CASE JOB
WHEN 'MANAGER'THEN 'level1'
WHEN 'SALESMAN' THEN 'level2'
ElSE 'level3' END
AS level_result FROM EMP

SELECT * FROM EMP

SELECT count(ename) FROM emp --전체 항목 수

SELECT count(ename) FROM emp WHERE DEPTNO = 20 OR MGR <= 7700

SELECT min(sal),max(sal),sum(sal) FROM EMP --최소,최대,합 sal

SELECT deptno, AVG(sal) FROM EMP GROUP BY DEPTNO --deptno별 sal 평균

SELECT deptno, AVG(sal) FROM EMP GROUP BY DEPTNO ORDER BY DEPTNO DESC --deptno별 sal 평균 오름차순

SELECT deptno, AVG(sal) FROM EMP GROUP BY DEPTNO HAVING AVG(sal)>=2000 ORDER BY DEPTNO DESC --조건은 having으로

SELECT count(ename),avg(sal) FROM emp WHERE job = 'MANAGER'

SELECT count(ename) FROM emp WHERE ENAME LIKE '%S%'

SELECT count(ename) FROM emp WHERE SAL >= 3000 AND COMM IS NOT NULL ORDER BY SAL DESC 

SELECT * FROM emp,dept WHERE emp.DEPTNO = dept.DEPTNO ORDER BY EMPNO 

SELECT *
FROM "MEMBER" m 
LEFT OUTER JOIN BBS b 
on (m.ID = b.WRITER)

SELECT *
FROM "MEMBER" m 
RIGHT OUTER JOIN BBS b 
on (m.ID = b.WRITER)

SELECT *
FROM EMP e 
LEFT OUTER JOIN DEPT d 
on (e.DEPTNO =d.DEPTNO)

SELECT *
FROM BBS b 
LEFT OUTER JOIN "MEMBER" m
ON (m.ID = b.WRITER)

SELECT * FROM emp

CREATE table company (
id varchar2(200) PRIMARY KEY,
name varchar2(200),
addr varchar2(200),
tel varchar2(200)
)

INSERT INTO company VALUES ('c100','good','seoul','011')

INSERT INTO company VALUES ('c200','joa','busan','012')

INSERT INTO company VALUES ('c300','maria','ulsan','013')

INSERT INTO company VALUES ('c400','my','kwagnju','014')

SELECT * FROM COMPANY c 
INNER JOIN PRODUCT p
ON (c.ID=p.COMPANY)

SELECT * FROM COMPANY c 
LEFT outer JOIN PRODUCT p
ON (c.ID=p.COMPANY)

SELECT * FROM COMPANY c 
right outer JOIN PRODUCT p
ON (c.ID=p.COMPANY)