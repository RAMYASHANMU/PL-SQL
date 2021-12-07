DECLARE
  v_job_id jobs.job_id%TYPE       := 'FI_MGR';
  v_job_title jobs.job_title%TYPE := 'Finance Manager';
BEGIN
  --inserting new job details
  INSERT INTO jobs (job_id,job_title) VALUES(v_job_id,v_job_title);
  --Exception handling section
EXCEPTION
WHEN DUP_VAL_ON_INDEX THEN
  DBMS_OUTPUT.PUT_LINE ('Job ID '||v_job_id||' already exists');
END;
