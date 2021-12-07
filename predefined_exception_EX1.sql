DECLARE
  v_employee_id employees.employee_id%TYPE := 21;
  v_first_name employees.first_name%TYPE;
  v_phone_number employees.phone_number%TYPE;
BEGIN
  --Values of employee with id 21 are retrieved and stored in the variables
  SELECT first_name,
    phone_number
  INTO v_first_name,
    v_phone_number
  FROM employees
  WHERE employee_id = v_employee_id;
  DBMS_OUTPUT.PUT_LINE ('Employee ID: ' || v_employee_id);
  DBMS_OUTPUT.PUT_LINE ('First Name: ' || v_first_name);
  DBMS_OUTPUT.PUT_LINE ('Contact Number: ' || v_phone_number);
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('EMPLOYEE WITH ID ' ||  v_employee_id || ' NOT FOUND');
END;
