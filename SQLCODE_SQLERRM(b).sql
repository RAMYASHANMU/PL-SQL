DECLARE
V_EMP_ID JOB_HISTORY.EMPLOYEE_ID%TYPE := 103;
V_START_DATE JOB_HISTORY.START_DATE%TYPE;
V_END_DATE JOB_HISTORY.END_DATE%TYPE;
BEGIN
SELECT START_DATE,END_DATE INTO V_START_DATE,V_END_DATE FROM JOB_HISTORY WHERE EMPLOYEE_ID=V_EMP_ID;
EXCEPTION 
WHEN NO_DATA_FOUND THEN 
DBMS_OUTPUT.PUT_LINE('NO DATA FOUND');
WHEN TOO_MANY_ROWS THEN 
DBMS_OUTPUT.PUT_LINE('TOO MANY ROWS FETCHING');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('ERROR CODE' || SQLCODE);
DBMS_OUTPUT.PUT_LINE('ERROR MESSAGE' || SQLERRM);
END;


