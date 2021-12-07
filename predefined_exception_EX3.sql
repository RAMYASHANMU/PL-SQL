DECLARE
v_department_id job_history.department_id%type:=90;
v_start_date job_history.start_date%type;
v_end_date job_history.end_date%type;
v_job_id job_history.job_id%type;

BEGIN

select start_date,end_date,job_id into v_start_date,v_end_date,v_job_id from job_history where department_id=v_department_id;

DBMS_OUTPUT.PUT_LINE('department ID:' || v_department_id );
DBMS_OUTPUT.PUT_LINE('Start_date: ' || v_start_date );
DBMS_OUTPUT.PUT_LINE('End date: ' || v_end_date );
DBMS_OUTPUT.PUT_LINE('Job History: ' || v_job_id );

EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('department with '||v_department_id||' doesnt have job history');

WHEN TOO_MANY_ROWS THEN
select * into v_department_id,v_start_date,v_end_date,v_job_id from (select department_id,start_date, end_date, job_id  
from JOB_HISTORY where department_id =v_department_id order by end_date desc)where rownum= 1 ;

DBMS_OUTPUT.PUT_LINE('department ID:' || v_department_id );
DBMS_OUTPUT.PUT_LINE('Start_date: ' || v_start_date );
DBMS_OUTPUT.PUT_LINE('End date: ' || v_end_date );
DBMS_OUTPUT.PUT_LINE('Job History: ' || v_job_id );

END;
