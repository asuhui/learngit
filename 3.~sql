select * from arc_cl_config_tmp for update;

update arc_cl_config_tmp 
set column_31=(column_2||column_3||column_4||column_5||column_6)
where 1=1;
update arc_cl_config_tmp set column_23=substr(column_31,1,2)  where length(column_31)=4;
update arc_cl_config_tmp set column_23=substr(column_31,1,4)  where length(column_31)=6;
update arc_cl_config_tmp set column_23=substr(column_31,1,6)  where length(column_31)=8;
update arc_cl_config_tmp set column_23=substr(column_31,1,8)  where length(column_31)=10;

update arc_cl_config_tmp set column_11=1 where column_11='Y';
update arc_cl_config_tmp set column_11=0 where column_11='N'; 
update arc_cl_config_tmp set column_12=1 where column_12='Y';
update arc_cl_config_tmp set column_12=0 where column_12='N';
update arc_cl_config_tmp set column_13=1 where column_13='Y';
update arc_cl_config_tmp set column_13=0 where column_13='N';
update arc_cl_config_tmp set column_16=10304010101 where column_16='检换件';
update arc_cl_config_tmp set column_25=10101 where 1=1;
update arc_cl_config_tmp set column_26='1号线一期' where 1=1;
update arc_cl_config_tmp set column_28='TC1' where 1=1;
update arc_cl_config_tmp set column_29=114 where 1=1;
update arc_cl_config_tmp set column_30='辅助电源系统' where 1=1;

merge into arc_cl_config_tmp a 
using (select column_31,column_1 from arc_cl_config_tmp group by column_31,column_1) b
on (concat('', a.column_23) = b.column_31)
WHEN MATCHED THEN 
UPDATE SET a.column_24 = b.column_1;
update arc_cl_config_tmp set column_24=0 where column_24 is null;

delete from arc_cl_config_tmp;
commit;
