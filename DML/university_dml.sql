insert into uni_university(id,name) values(1,'Uni');
 commit;
 
 
 insert into uni_faculties(id,uni_university_id,name) values(1,1,'Math Fac');
 commit;
 
 insert into  uni_groups(id,uni_faculty_id,name) values(1,1,'100');
 commit;
 
 insert into uni_subjects(id,name) values(1,'Math');
 commit;
 
 
 insert into uni_students(id,first_name,last_name,birthdate,uni_groups_id)  
 values(1,'Ali','Aliyev',to_date('01.01.2000','DD.MM.YYYY'),1);
 commit;
 
 
 
 insert into uni_teachers(id,first_name,last_name,birthdate,uni_subjects_id)  
 values(1,'Vali','Aliyev',to_date('01.01.1980','DD.MM.YYYY'), 1);
 commit;
 
 insert into uni_groups_teachers (uni_groups_id,uni_teachers_id) values(1,1);
 commit;
 
