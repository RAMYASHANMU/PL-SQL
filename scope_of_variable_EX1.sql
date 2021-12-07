/*Qualifying Identifier for outer block*/
<<outer_block>>
DECLARE
    v_tax_per NUMBER;
BEGIN
    v_tax_per := 7;
    /*Qualifying Identifier for inner block*/
    <<inner_block>>
    DECLARE
       v_tax_per NUMBER;
    BEGIN
       v_tax_per := 3;
       /*though variable declared in inner and outer block,
       variables can be differentiated using Qualifying Identifier*/
       DBMS_OUTPUT.PUT_LINE('in inner block v_tax_per: '||outer_block.v_tax_per);
       DBMS_OUTPUT.PUT_LINE('in inner block v_tax_per: '||inner_block.v_tax_per);
    END;
    /* we can not access the variable beyond the scope, even with the Qualifying Identifier*/
    DBMS_OUTPUT.PUT_LINE('in inner block v_tax_per: '||outer_block.v_tax_per);
    --   DBMS_OUTPUT.PUT_LINE('in inner block v_tax_per: '||inner_block.v_tax_per);
END;
