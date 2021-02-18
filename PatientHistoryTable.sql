BEGIN
CREATE TABLE PATIENT/HISTORY (  
	HPNumber DEC(9,0) NOT NULL ,
	HVisitDate CHAR(10) NOT NULL DEFAULT '' ,  
	HDescription1 VARCHAR(255) CCSID 37 NOT NULL DEFAULT '' , 
	HDescription2 VARCHAR(255) CCSID 37 NOT NULL DEFAULT '' , 
	HDescription3 VARCHAR(255) CCSID 37 NOT NULL DEFAULT '' ,   
	PRIMARY KEY( HVisitDate , HPNumber ) )   
	  
	RCDFMT HISTORY     ; 
  
LABEL ON TABLE PATIENT/HISTORY 
	IS 'Patient Visit History' ; 
  
LABEL ON COLUMN PATIENT/HISTORY 
(  HPNumber TEXT IS 'PATIENT NUMBER' ,
	HVisitDate TEXT IS 'DATE OF ACCIDENT' ,  
	HDescription1 TEXT IS 'DESCRIPTION 1' , 
	HDescription2 TEXT IS 'DESCRIPTION 2' , 
	HDescription3 TEXT IS 'DESCRIPTION 3' 
 ) ; 
  
GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   
ON PATIENT/HISTORY TO BEARDO WITH GRANT OPTION ; 
  
GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   
ON PATIENT/HISTORY TO PUBLIC WITH GRANT OPTION ; 
 
insert into PATIENT/history values(1000,'2020-08-01','The patient complained of pain in the left wrist. Upon examining and exams it was determined that the wrist was broken. Set the wrist in a cast and recommended a follow-up in one week.','','') ;
insert into PATIENT/history values(1001,'2020-02-15','The patient came in with a laceration on their forehead. They received 9 stitches with a follow-up visit in 2 weeks.','','') ;
insert into PATIENT/history values(1001,'2020-03-01','Removed the 9 stitches from the patients forehead. Everything is healing up nicely. Recommend follow-up in 1 month.','','') ;
insert into PATIENT/history values(1001,'2020-04-02','Patient forehead is completely healed.','','') ;
END;