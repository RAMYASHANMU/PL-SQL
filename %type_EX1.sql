DECLARE
  v_max_marks NUMBER(3) := 100;
  --variables anchor declared to v_max_marks, 
  --v_maths_marks and v_physics_marks will have the same datatype as v_max_marks
  v_maths_marks v_max_marks%type;
  v_physics_marks v_max_marks%type;
BEGIN
  v_maths_marks   := 75;
  v_physics_marks := 80;
  DBMS_OUTPUT.put_line (v_maths_marks);
  DBMS_OUTPUT.put_line (v_physics_marks);
END;
