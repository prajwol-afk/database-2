CREATE OR REPLACE procedure check_user(vc_username VARCHAR2, vc_password
VARCHAR2) IS
CURSOR cur_staff IS
SELECT username, password
FROM staff;
BEGIN
FOR rec_cur_staff IN cur_staff LOOP
IF rec_cur_staff.username = vc_username
AND
rec_cur_staff.password = vc_password
THEN
DBMS_OUTPUT.PUT_LINE('USER EXISTS');
END IF;
END LOOP;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE(SQLERRM);
END check_user;
/