-- alter session set "_ORACLE_SCRIPT"=true;

--Drop user
Drop user dhqg cascade;

-- CREATE NEW USER
CREATE user  dhqg IDENTIFIED BY dhqg;

-- CREATE NEW ROLE
-- CREATE ROLE role_name;

-- https://www.techonthenet.com/oracle/roles.php
-- https://hoccomputer.com/oracle-quyen-role-grant-revoke.html


--GRANT PRIVILEGE TO ROLE
-- GRANT privileges ON object TO role_name


-- we want our books_admin user to have the ability to perform SELECT, UPDATE, INSERT, and DELETE capabilities on the books table

GRANT SELECT, INSERT, UPDATE, DELETE ON schema.books TO books_admin;

--schema (tên user tạo bảng)


-- GRANT ROLE TO USER
-- GRANT role_name TO user_name;

-- https://chartio.com/resources/tutorials/how-to-create-a-user-and-grant-permissions-in-oracle/


-- GRANT PRIVILEGE FOR NEW USER
GRANT CONNECT, RESOURCE TO dhqg;
GRANT UNLIMITED TABLESPACE TO dhqg;

--OEM_MONITOR

-- GRANT QUYỀN TẠO DATABASE LINK PUBLIC
GRANT CREATE PUBLIC DATABASE LINK to dhqg;

-- CREATE DATABASE LINK


--  Trỏ IP trong file host
192.168.x.x mayA
192.168.x.y mayB




--- Sửa file config
--Listener
-- đổi localhost thành mayB và đổi vị trí dòng này lên trên

-- tnsname
-- copy orcl đổi tên nó thành tên khác và đổi localhost thành máyB

--  sqlnet
--  đổi authen về NONE




--- Restart services (TNS listener và ORCL)
-- Run cmd admin
lsnrctl status
stop
reload
service

-- tnsping mayB (chạy lệnh này)
-- test connect bằng net manager và connect bằng tài khoản máy B
-- dùng sqlplus login vào bằng tài khoản máy A và tạo database link
create public database link dhcntt connect to dhqg IDENTIFIED by dhqg using 'DHCNTT';


select * from dhcntt.hocphi@dhcntt;
