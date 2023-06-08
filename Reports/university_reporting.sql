--All data 


 
 
select * from  uni_universities u 
       join uni_faculties f on f.uni_university_id=u.id
       join uni_groups g on g.uni_faculty_id=f.id
       join uni_groups_teachers gt on gt.uni_groups_id=g.id
       join uni_students s on  s.uni_groups_id=g.id
       join uni_teachers t  on  t.id=gt.uni_teachers_id
       join uni_subjects  sb on sb.id=t.uni_subjects_id
       join uni_groups_teachers gt on  gt.uni_teachers_id=t.id;
      
