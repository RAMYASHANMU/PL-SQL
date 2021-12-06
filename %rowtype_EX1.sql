--select * from employees where employee_id = 100;
DECLARE
   /* %type anchors to a column,likewise here we are creating a variable 
      by anchoring it to entire row of employees table using %rowtype */
   rec_emp_detail employees%rowtype;
   v_employee_id employees.employee_id%type:=100; 
BEGIN
   /*Fetching entire row of employees table into %rowtype anchored variable (Record)*/
   SELECT  * INTO  rec_emp_detail FROM employees WHERE employee_id = v_employee_id;
   /*Individual fields in fetched record rec_emp_detail, can be retrieved
   using record_name.field_name as follows */
   /*Names of the fields in the %rowtype record will be same as column name in table*/
   DBMS_OUTPUT.PUT_LINE ('EMPLOYEE ID=' || rec_emp_detail.employee_id);
   DBMS_OUTPUT.PUT_LINE ('FIRST NAME=' || rec_emp_detail.first_name);
   DBMS_OUTPUT.PUT_LINE ('LAST NAME=' || rec_emp_detail.last_name);
   DBMS_OUTPUT.PUT_LINE ('EMAIL=' || rec_emp_detail.email);
   DBMS_OUTPUT.PUT_LINE ('PHONE NUMBER=' || rec_emp_detail.phone_number);
   DBMS_OUTPUT.PUT_LINE ('HIRE DATE=' || rec_emp_detail.hire_date);
   DBMS_OUTPUT.PUT_LINE ('JOB ID=' || rec_emp_detail.job_id);
   DBMS_OUTPUT.PUT_LINE ('SALARY=' || rec_emp_detail.salary);
   DBMS_OUTPUT.PUT_LINE ('COMMISSION PERCENTAGE=' || rec_emp_detail.commission_pct);
   DBMS_OUTPUT.PUT_LINE ('DEPARTMENT ID=' || rec_emp_detail.department_id);
END;
