SELECT Name 
FROM STUDENTS 
WHERE Marks>75 
ORDER BY substr(Name,length(Name)-2,3),ID;