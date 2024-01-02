DECLARE

    TYPE typeARRAY is VARRAY(4) of VARCHAR2(15);
    myARRAY1 typeARRAY := typeARRAY('John', 'Peter', 'Jenny');
    myARRAY2 typeARRAY;

BEGIN

    myARRAY2 := myARRAY1;

    dbms_output.put_line (myARRAY2(1));
    dbms_output.put_line (myARRAY2(2));
    dbms_output.put_line (myARRAY2(3));

END;
/
---------------------------------------------------
DECLARE
    i NUMBER(1);
    TYPE typeARRAY is VARRAY(4) of VARCHAR2(15);
    myARRAY1 typeARRAY := typeARRAY('John', 'Peter', 'Jenny','Kyrylo');
    myARRAY2 typeARRAY;
    options CHAR(1);
BEGIN
    options := 'y';
    myARRAY2 := myARRAY1;

    IF options = 'y' THEN
        FOR i IN 1..3 LOOP
            dbms_output.put_line (myARRAY2(i));
        END LOOP;
    END IF;

END;
