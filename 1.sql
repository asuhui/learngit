select * from arc_bom_tmp_20180831 for update;
select * from arc_bomclass;
select * from arc_cl_config;
select * from arc_bom for update;

select * from ARC_BOM_tmp;
select * from arc_bom where sdevno=090202;
alter table arc_bom add  (new_col number);

update arc_bom set sdevno='0'||sdevno where 1=1
create table sys_user_tmp_20180831 as select * from sys_user;
select * from sys_user;
select * from sys_user_tmp_20180831
UPDATE  arc_bom set iparent=new_col where 1=1;
create table Arc_Bom_tmp as select * from arc_bom;
merge into arc_bom a 
using (select sdevno, min(indocno) indocno from arc_bom group by sdevno) b
   on (concat('0', a.iparent) = b.sdevno)
 WHEN MATCHED THEN 
UPDATE SET a.new_col = b.indocno

alter table arc_bom drop column new_col;
commit;

select sdevno, min(indocno) indocno from arc_bom group by sdevno;

commit;
select * from arc_bomclass;

select * from arc_bomclass;
