DECLARE
  v_employee_id employees.employee_id%TYPE := 105;
  v_salary employees.salary%TYPE;
  e_home_loan_eligibility EXCEPTION;
BEGIN
  SELECT salary INTO v_salary FROM employees WHERE employee_id = v_employee_id;
  IF v_salary < 8000 THEN
    RAISE e_home_loan_eligibility;
  END IF;
  DBMS_OUTPUT.PUT_LINE ('Employee with id '|| v_employee_id ||' is eligible for home loan');
EXCEPTION
WHEN e_home_loan_eligibility THEN
  DBMS_OUTPUT.PUT_LINE ('Employee with id '|| v_employee_id ||' is not eligible for home loan');
WHEN OTHERS THEN
  DBMS_OUTPUT.PUT_LINE ('Something went wrong!!');
  DBMS_OUTPUT.PUT_LINE ('Error Code: ' || SQLCODE);
  DBMS_OUTPUT.PUT_LINE ('Error Message: ' || SQLERRM);
END;
