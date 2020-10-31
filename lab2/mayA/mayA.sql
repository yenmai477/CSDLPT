--Drop user
Drop user dhqg cascade;

-- CREATE NEW USER
CREATE user  dhqg IDENTIFIED BY dhqg;

-- GRANT PRIVILEGE FOR NEW USER
GRANT CONNECT, RESOURCE, OEM_MONITOR TO dhqg;
GRANT UNLIMITED TABLESPACE TO dhqg;


-- GRANT QUYỀN TẠO DATABASE LINK PUBLIC
GRANT CREATE PUBLIC DATABASE LINK to dhqg;

CREATE DATABASE LINK


--  Trỏ IP trong file host
--- Sửa file config
--- Restart services
-- Run cmd admin
lsnrctl stop
reload
service

-- tnsping mayB
-- test connect bằng net manager và connect bằng tài khoản máy B
-- dùng sqlplus login vào bằng tài khoản máy A và tạo database link
create public database link dhcntt connect to dhqg IDENTIFIED by dhqg using 'DHCNTT';
