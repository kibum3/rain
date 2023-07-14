CREATE TABLESPACE imageshop
DATAFILE 'D:\oradata\imageshop\imageshop_db.dbf'
SIZE 10M
AUTOEXTEND ON
NEXT 5M
MAXSIZE 20M;

select * from SYS.user_tablespaces; 

alter session set "_ORACLE_SCRIPT"=true;

CREATE USER shopadmin
IDENTIFIED BY shop1234
DEFAULT TABLESPACE imageshop
TEMPORARY TABLESPACE temp;
GRANT CONNECT, RESOURCE, DBA TO shopadmin;
GRANT CREATE VIEW, CREATE SYNONYM TO shopadmin;
GRANT UNLIMITED TABLESPACE TO shopadmin;
ALTER USER shopadmin ACCOUNT UNLOCK;

