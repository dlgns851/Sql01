--1
select first_name||' '||last_name as 이름 , salary as 월급 ,phone_number as 전화번호,hire_date as 입사일
from employees
order by hire_date;

--2
select job_title, max_salary
from jobs
order by MAX_SALARY desc;

--3
select first_name,manager_id,commission_pct,salary
from employees
where salary>3000 AND commission_pct is null  AND manager_id is not null ;

--4
select job_title, max_salary
from JOBS
where max_salary>=10000
order by max_salary desc;

--5
select first_name, salary, case 
when commission_pct is null then 0 else COMMISSION_PCT end commission_pct
from EMPLOYEES
where salary>=10000 AND salary < 14000
order by salary desc 

--6
select first_name,salary,to_char(to_date(hire_date),'yyyy-mm'),department_id
from employees
where department_id in(10,90,100);


--7
select first_name,salary
from employees
where first_name like '%s%' OR
      first_name like '%S%';

--8
select *
from departments
order by LENGTH(department_name) desc;


--9
select upper(country_name)
from countries
order by country_name;

--10
select first_name,
        salary,
        REPLACE(phone_number,'.','-'),
        hire_date
from employees
where hire_date < '03/12/31';

