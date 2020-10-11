create database my_project_for_cis_344;
use my_project_for_cis_344;
create table school (
cuny_id int(100),
first_name char(200),
last_name char(200),
taking_classes enum ("Yes","No"),
GPA set("Fail","average","good","excellent"),
lib_id int(100),
primary key (cuny_id)
);
insert into school values
(23632283, "Henry","Allucard", "Yes", "excellent",1),
(24658392, "Carolina","Bello", "Yes", "excellent",2),
(25749362, "Debby","Dokono", "Yes", "excellent",3),
(35924723, "Beatrice","Atik)", "Yes", "excellent",4),
(34720427, "Clara","Gemini", "Yes", "excellent",5),
(74924081, "Kofi","Manu", "Yes", "good",6),
(74628486, "Aliyah","Diamond", "Yes", "excellent",7),
(94095024, "Hellsing","Peterson", "Yes", "excellent",8),
(37472654, "Yvy","Ama", "Yes", "excellent",9),
(63528394, "Naruto","Uzimaki", "Yes", "excellent",10);

create table library (
lib_id int(100),
fav_genre char(200),
overdue_books enum("yes","no"),
fines decimal(3,2),
primary key (lib_id)
);

insert into library values
(1,"Fiction","no", 0.00),
(2,"Romance","yes",9.99),
(3,"Non fiction","no",0.00),
(4,"Mystery","yes",7.56),
(5,"Supernatural","no",0.00),
(6,"Romance","yes",3.99),
(7,"Mystery","yes",1.99),
(8,"Teen","yes",8.99),
(9,"Religion/Christian","no",0.00),
(10,"Romance","yes",5.99);

create table quarantine (
house_id int(100),
stays_home enum("yes","no"),
symptoms_checked char(200),
irs_id int(100),
primary key(house_id)
);

insert into quarantine values
(20,"yes","none",1),
(21,"no","some",2),
(22,"no","none",3),
(23,"yes","some",4),
(24,"yes","none",5),
(25,"no","none",6),
(26,"no","some",7),
(27,"yes","none",8),
(28,"yes","few",9),
(29,"yes","none",10);

create table irs_1200 (
irs_id int(100),
gets_check set("yes","no"),
payments int(100),
primary key(irs_id)
);

insert into irs_1200 values
(1,"yes",1500),
(2,"yes",1200),
(3,"yes",500),
(4,"no",0),
(5,"yes",730),
(6,"yes",1000),
(7,"yes",1300),
(8,"yes",500),
(9,"yes",800),
(10,"no",0);

create table instagram (
email_address varchar(400) not null,
first_name varchar(400) not null,
last_name varchar(400) not null,
insta_nickname varchar (400) not null,
follows_famous_people enum("1","2") not null,
facebook_name varchar(400),
primary key (email_address)
);

insert into instagram values
("adusei.henry@something.com","Henry", "Hellsing", "Henry_Allucard", "2","Kwame_Bigguy"),
("akua.debby@something.com","Debby", "Akua", "Debby_Akua", "1","Akua_Picasso"),
("skidipapapa.clara@something.com","Clara", "Skidipapapa", "Clarski", "1","Clara_Runner"),
("yvy.ama@something.com","Yvy", "Ama", "YvyAma", "2","Black_Is_Beauty"),
("afia.bea@something.com","Afia", "Beatrice", "Annoying_Libra", "1","Forehead_Game"),
("kofi.manu@something.com","Kofi", "Manu", "K_Manu", "1","K_Man"),
("carolina.bello@something.com","Caro", "Bell", "Caro_Bello", "2","Car_Bell"),
("aliyah.diamond@something.com","Aliyah", "Diamond", "Xo_Xo_Bebe", "1","Diamond_Xo"),
("naruto.uzimaki@something.com","Naruto", "Uzimaki", "Nar_Uzi", "1","Naruto_Winner"),
("hellsing.peterson@something.com","Hellsing", "Peterson", "Hell_Pet", "2","Hells_Gate");

create table facebook1(
face_id int(100),
facebook_name varchar(400),
date_created date,
years_on_FB varchar(400),
profile_pic enum("yes","no"),
num_of_frnds varchar(400),
phone_numbers varchar(200),
primary key(face_id)
);

insert into facebook1 values
(1,'Akua_Picasso', '2004-05-20', datediff(current_date(),'2004-05-20'), 'yes', 'a lot', '917-435-4726'),
(2,'Kwame_Bigguy', '2010-05-04', datediff(current_date(),'2010-05-04'), 'yes', 'I dont even know', '917-635-0482'),
(3,'Clara_Runner', '2012-06-05', datediff(current_date(),'2012-06-05'), 'no', 'only pple I know', '917-258-2723'),
(4,'Forehead_Game', '2002-09-23', datediff(current_date(),'2004-09-23'), 'yes', 'Just a few', '917-564-8572'),
(5,'Black_Is_Beauty', '2015-02-17', datediff(current_date(),'2015-02-17'), 'no', 'I dont even know them', '917-052-7584'),
(6,'K_Man', '2009-05-20', datediff(current_date(),'2009-05-20'), 'no', 'a lot', '917-435-0584'),
(7,'Car_Bell', '2011-05-04', datediff(current_date(),'2011-05-04'), 'no', 'I dont even know', '917-638-6467'),
(8,'Diamond_Xo', '2010-06-05', datediff(current_date(),'2010-06-05'), 'yes', 'only pple I know', '917-253-5467'),
(9,'Naruto_Winner', '2013-09-23', datediff(current_date(),'2013-09-23'), 'yes', 'Just a few', '917-356-1232'),
(10,'Hells_Gate', '2014-02-17', datediff(current_date(),'2014-02-17'), 'no', 'I dont even know them', '917-055-8435');

create table whatsapp2(
phone_numbers varchar(500),
connection_to_pple varchar(400),
outside_family enum ("Yes","No"),
group_chats varchar(40),
primary key (phone_numbers));

insert into whatsapp2 values
('917-435-4726', "a lot", "Yes", "5"),
('917-635-0482', "not a lot", "Yes", "2"),
('917-258-2723', "a lot", "No", "0"),
('917-564-8572', "a lot", "No", "90"),
('917-052-7584', "not a lot", "Yes", "2"),
('917-435-0584', "a lot", "Yes", "3"),
('917-638-6467', "not a lot", "Yes", "7"),
('917-253-5467', "a lot", "No", "0"),
('917-356-1232', "a lot", "No", "9"),
('917-055-8435', "not a lot", "Yes", "2");

create table snapchat(
snap_id int(200),
snap_name varchar(400),
no_of_streaks int(100),
no_of_frnds int(100),
facebook_name varchar(400),
phone_numbers varchar(400),
email_address varchar(400),
primary key(snap_id)
);

insert into snapchat values
('1', "Debby20", '0', '1000', 'Akua_Picasso', '917-435-4726', "akua.debby@something.com"),
('2', "Kwame16", '3', '80', 'Kwame_Bigguy', '917-635-0482',"adusei.henry@something.com"),
('3', "Clara_Runner", '40', '1002', 'Clara_Runner','917-258-2723',"skidipapapa.clara@something.com"),
('4', "Afia_Bea", '32', '1293', 'Forehead_Game', '917-564-8572',"afia.bea@something.com"),
('5', "Yvy17", '50', '6374', 'Black_Is_Beauty', '917-052-7584',"yvy.ama@something.com"),
('6', "Kofi_GH", '0', '1000', 'K_Man', '917-435-0584', "kofi.manu@something.com"),
('7', "Steph_Bello", '3', '804', 'Car_Bell', '917-638-6467',"carolina.bello@something.com"),
('8', "Daiel_Ownz", '40', '1002', 'Diamond_Xo','917-253-5467',"aliyah.diamond@something.com"),
('9', "Naruto_OP", '2', '976', 'Naruto_Winner', '917-356-1232',"naruto.uzimaki@something.com"),
('10', "Count_Drac", '5', '787', 'Hells_Gate', '917-055-8435',"hellsing.peterson@something.com");