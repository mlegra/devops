#!/bin/bash
ssh oracle@192.168.180.129
export ORACLE_HOME=/u01/oracle/product/19.3/dbhome_1/
export PATH=/home/oracle/.local/bin:/home/oracle/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/oracle/.local/bin:/home/oracle/bin:/u01/oracle/product/19.3/dbhome_1/bin
sqlplus test/test@PDB_ORACLE19 << !
grant create session, create table, create procedure,
      create sequence, create view, create trigger,
      create synonym, create materialized view, query rewrite,
      create any directory, create type,dba, aq_administrator_role
to sofia identified by lizy;

spool users.txt;
select username from dba_users;
spool off;
!
