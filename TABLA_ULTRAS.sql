SELECT * FROM AFICION WHERE AFICION_ID IN 
(SELECT AFICION_ID FROM PELEGROSOS);