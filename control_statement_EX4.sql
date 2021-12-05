--select * from employees where employee_id=110;

DECLARE
V_COUNT_OF_EMP PLS_INTEGER;
V_EMPLOYEE_ID NUMBER(3) := 110;
V_PHONE_NO VARCHAR2(30) := '515.124.5845';
BEGIN
SELECT COUNT(EMPLOYEE_ID) INTO V_COUNT_OF_EMP FROM EMPLOYEES WHERE EMPLOYEE_ID = V_EMPLOYEE_ID;
IF (V_COUNT_OF_EMP = 0) THEN
DBMS_OUTPUT.PUT_LINE(V_EMPLOYEE_ID || '   NOT EXIST');
ELSE
UPDATE EMPLOYEES SET PHONE_NUMBER=V_PHONE_NO WHERE EMPLOYEE_ID=V_EMPLOYEE_ID;
DBMS_OUTPUT.PUT_LINE(V_EMPLOYEE_ID || '   PHONE_NUMBER UPDATED SUCCESSFULLY');
END IF;
END;
