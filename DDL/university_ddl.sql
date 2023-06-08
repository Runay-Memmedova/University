create table uni_subjects(
id  number primary key,
name varchar2(100));

create table uni_students

(id  number primary key,
  first_name varchar2(100) not null,
  last_name varchar2(100) not null,
  birthdate date not null,
  uni_groups_id number,
  constraint uni_students_uni_groups_id_FK foreign key(uni_groups_id) references uni_groups(id));
  
create table  uni_teachers(
  id number primary key,
  first_name varchar2(100) not null,
  last_name varchar2(100) not null,
  birthdate date not null,
  uni_subjects_id number,
  constraint uni_teachers_uni_subjects_id_FK foreign key(uni_subjects_id)  references uni_subjects(id));
  
create table uni_university
(id number primary key,
  name varchar2(100));
  
  
  
create table uni_groups
( id number primary key,
   uni_faculty_id number,
  name varchar2(100),
   constraint uni_faculties_uni_univesity_id_FK foreign key(uni_faculty_id) references uni_faculties(id)
  );
  
  
  
create table uni_faculties
(id number primary key,
uni_university_id number,
  name varchar2(100),
   constraint uni_faculties_uni_university_id_FK foreign key(uni_university_id) references uni_universities(id)
 );
  

create table uni_groups_teachers(
 uni_teachers_id number,
 uni_groups_id number,
 constraint uni_groups_teachers_uni_teachers_id_FK foreign key(uni_teachers_id) references uni_teachers(id),
 constraint uni_groups_teachers_uni_groups_id_FK foreign key(uni_groups_id) references uni_groups(id)
 );
