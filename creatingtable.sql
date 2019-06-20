Create Table Student
(
First_Name varchar(50),
Last_Name varchar(50),
Universty_Name varchar(50),
Department varchar(70)

)

Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Ümit','Atýlgan','Yýldýz Technical University','Mathematical Engineering');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Tolga','Çatalpýnar','Bilkent University','Computer Engineering');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Ayþegül','Karahançer','Yýldýz Technical University','Computer Education');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Gizemnur','Taskin','Ýstanbul Technical University','Information Engineering');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Melih','Sinan','Yýldýz Technical University','Computer Engineering');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Servet','Tartar','Munzur University','Software Engineering');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Eren','Yalçýn','Bilkent University','Computer Engineering');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Yunus','Arslan','Middle East Technical University','Computer');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Özge Nur','Koç','Trakya University','Computer Engineering');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Beytullah','Atik','Karabük University','Computer Engineering');
Insert Into Student (First_Name,Last_Name,Universty_Name,Department) values('Davut','Kurt','Ýnönü University','Computer Engineering');

SELECT * FROM Student WHERE department= 'Mathematical Engineering';

SELECT * From Student 
