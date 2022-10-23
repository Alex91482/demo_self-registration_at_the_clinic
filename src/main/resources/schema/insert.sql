Insert into doctor(Id, Last_name, First_name, Specialization) values (1, 'House', 'Gregory', 'THERAPIST');
Insert into doctor(Id, Last_name, First_name, Specialization) values (2, 'Hannibal', 'Lecter', 'THERAPIST');
Insert into doctor(Id, Last_name, First_name, Specialization) values (3, 'Philipovich', 'Philip', 'THERAPIST');
Insert into doctor(Id, Last_name, First_name, Specialization) values (4, 'Stone', 'Benjamin', 'OPTOMETRIST');
Insert into doctor(Id, Last_name, First_name, Specialization) values (5, 'Frankenstein', 'Victor', 'OPTOMETRIST');
Insert into doctor(Id, Last_name, First_name, Specialization) values (6, 'Bormental', 'Ivan', 'OPTOMETRIST');
Insert into doctor(Id, Last_name, First_name, Specialization) values (7, 'Ledgard', 'Robert', 'OTOLARYNGOLOGIST');
Insert into doctor(Id, Last_name, First_name, Specialization) values (8, 'Kevorkian', 'Jack', 'OTOLARYNGOLOGIST');
Insert into doctor(Id, Last_name, First_name, Specialization) values (9, 'Thackery', 'John', 'OTOLARYNGOLOGIST');

Insert into patient(Id, First_name, Last_name, Passport_serial, Mail, Date_of_visit, Doctor_specialization, To_which_doctor) values (1,'Stan','Smith',0000000007,'stan.smith@americanded.com','2021-10-31 9:00','THERAPIST','');
Insert into patient(Id, First_name, Last_name, Passport_serial, Mail, Date_of_visit, Doctor_specialization, To_which_doctor) values (2,'Spongebob','Square Pants',0000000123,'spnge.bob@bikinibottom.com','2021-10-31 9:20','THERAPIST','');
Insert into patient(Id, First_name, Last_name, Passport_serial, Mail, Date_of_visit, Doctor_specialization, To_which_doctor) values (3,'Patrick','Star',0000234517,'patrick.star@bikinibottom.com','2021-10-31 9:40','THERAPIST','');
Insert into patient(Id, First_name, Last_name, Passport_serial, Mail, Date_of_visit, Doctor_specialization, To_which_doctor) values (4,'Sandy','Chicks',0000345213,'sandy.chicks@bikinibottom.com','2021-10-31 9:00','OPTOMETRIST','');
Insert into patient(Id, First_name, Last_name, Passport_serial, Mail, Date_of_visit, Doctor_specialization, To_which_doctor) values (5,'Squidward','Tentacle',0000783421,'squidward.tentacle@bikinibottom.com','2021-10-31 9:20','OPTOMETRIST','');
Insert into patient(Id, First_name, Last_name, Passport_serial, Mail, Date_of_visit, Doctor_specialization, To_which_doctor) values (6,'Lila','Turanga',0000214325,'homer.simpson@springfield.com','2021-10-31 9:40','OPTOMETRIST','');
Insert into patient(Id, First_name, Last_name, Passport_serial, Mail, Date_of_visit, Doctor_specialization, To_which_doctor) values (7,'Eric','Cartman',0000443214,'eric.cartman@southpark.com','2021-10-31 9:00','OTOLARYNGOLOGIST','');
Insert into patient(Id, First_name, Last_name, Passport_serial, Mail, Date_of_visit, Doctor_specialization, To_which_doctor) values (8,'Homer','Simpson',0000112233,'lila.turanga@futurama.com','2021-10-31 9:20','OTOLARYNGOLOGIST','');
Insert into patient(Id, First_name, Last_name, Passport_serial, Mail, Date_of_visit, Doctor_specialization, To_which_doctor) values (9,'Bender','Rodrigues',0000763490,'bender.rodrigues@futurama.com','2021-10-31 9:40','OTOLARYNGOLOGIST','');

Insert into timetable(Patient_id, Doctor_id, Date) values (1, 1, '2021-10-31 9:00');
Insert into timetable(Patient_id, Doctor_id, Date) values (2, 1, '2021-10-31 9:20');
Insert into timetable(Patient_id, Doctor_id, Date) values (3, 1, '2021-10-31 9:40');
Insert into timetable(Patient_id, Doctor_id, Date) values (4, 4, '2021-10-31 9:00');
Insert into timetable(Patient_id, Doctor_id, Date) values (5, 4, '2021-10-31 9:20');
Insert into timetable(Patient_id, Doctor_id, Date) values (6, 4, '2021-10-31 9:40');
Insert into timetable(Patient_id, Doctor_id, Date) values (7, 7, '2021-10-31 9:00');
Insert into timetable(Patient_id, Doctor_id, Date) values (8, 7, '2021-10-31 9:20');
Insert into timetable(Patient_id, Doctor_id, Date) values (9, 7, '2021-10-31 9:40');

Insert into doctors_timetable(Doctor_id, Date) values ( 1,'2021-10-31');
Insert into doctors_timetable(Doctor_id, Date) values ( 4,'2021-10-31');
Insert into doctors_timetable(Doctor_id, Date) values ( 7,'2021-10-31');
Insert into doctors_timetable(Doctor_id, Date) values ( 2,'2021-11-01');
Insert into doctors_timetable(Doctor_id, Date) values ( 5,'2021-11-01');
Insert into doctors_timetable(Doctor_id, Date) values ( 8,'2021-11-01');
Insert into doctors_timetable(Doctor_id, Date) values ( 3,'2021-11-02');
Insert into doctors_timetable(Doctor_id, Date) values ( 6,'2021-11-02');
Insert into doctors_timetable(Doctor_id, Date) values ( 9,'2021-11-02');
Insert into doctors_timetable(Doctor_id, Date) values ( 1,'2021-11-03');
Insert into doctors_timetable(Doctor_id, Date) values ( 4,'2021-11-03');
Insert into doctors_timetable(Doctor_id, Date) values ( 7,'2021-11-03');
Insert into doctors_timetable(Doctor_id, Date) values ( 2,'2021-11-04');
Insert into doctors_timetable(Doctor_id, Date) values ( 5,'2021-11-04');
Insert into doctors_timetable(Doctor_id, Date) values ( 8,'2021-11-04');
Insert into doctors_timetable(Doctor_id, Date) values ( 3,'2021-11-05');
Insert into doctors_timetable(Doctor_id, Date) values ( 6,'2021-11-05');
Insert into doctors_timetable(Doctor_id, Date) values ( 9,'2021-11-05');
Insert into doctors_timetable(Doctor_id, Date) values ( 1,'2021-11-06');
Insert into doctors_timetable(Doctor_id, Date) values ( 4,'2021-11-06');
Insert into doctors_timetable(Doctor_id, Date) values ( 7,'2021-11-06');
Insert into doctors_timetable(Doctor_id, Date) values ( 2,'2021-11-07');
Insert into doctors_timetable(Doctor_id, Date) values ( 5,'2021-11-07');
Insert into doctors_timetable(Doctor_id, Date) values ( 8,'2021-11-07');
Insert into doctors_timetable(Doctor_id, Date) values ( 3,'2021-11-08');
Insert into doctors_timetable(Doctor_id, Date) values ( 6,'2021-11-08');
Insert into doctors_timetable(Doctor_id, Date) values ( 9,'2021-11-08');
Insert into doctors_timetable(Doctor_id, Date) values ( 1,'2021-11-10');
Insert into doctors_timetable(Doctor_id, Date) values ( 4,'2021-11-10');
Insert into doctors_timetable(Doctor_id, Date) values ( 7,'2021-11-10');

Insert into disease_history(Patient_id, Doctor_id, Diagnosis, Recommendations) values (1, 1,'cold','');
Insert into disease_history(Patient_id, Doctor_id, Diagnosis, Recommendations) values (2, 1,'gastritis','');
Insert into disease_history(Patient_id, Doctor_id, Diagnosis, Recommendations) values (3, 1,'bedsores','');
Insert into disease_history(Patient_id, Doctor_id, Diagnosis, Recommendations) values (4, 2,'hyperopia','');
Insert into disease_history(Patient_id, Doctor_id, Diagnosis, Recommendations) values (5, 2,'glaucoma','');
Insert into disease_history(Patient_id, Doctor_id, Diagnosis, Recommendations) values (6, 2,'myopia','');
Insert into disease_history(Patient_id, Doctor_id, Diagnosis, Recommendations) values (7, 5,'diabetes','');
Insert into disease_history(Patient_id, Doctor_id, Diagnosis, Recommendations) values (8, 5,'cirrhosis of the liver','');
Insert into disease_history(Patient_id, Doctor_id, Diagnosis, Recommendations) values (9, 5,'skittle','');