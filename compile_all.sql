select 'alter '||object_type||' '||object_name||' compile;' 
    as lista_procedimientos_invalidos 
  from user_objects 
 where status='INVALID' 
   and object_type <> 'PACKAGE' 
   and object_type <> 'PACKAGE BODY';

select 'alter package '||object_name||' compile body;' 
  from user_objects 
 where status='INVALID' 
   and object_type = 'PACKAGE BODY';
