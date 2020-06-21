

/*==============================================================*/
/* Table: ADDRESS                                               */
/*==============================================================*/
create table ADDRESS
(
   ADDRESS_ID           int not null auto_increment comment '',
   STREET               varchar(128)  comment '',
   STREET_2             varchar(128)  comment '',
   CITY                 varchar(64)  comment '',
   PROVINCE             varchar(64)  comment '',
   COUNTRY              varchar(64)  comment '',
   POSTAL               varchar(16)  comment '',
   primary key (ADDRESS_ID)
);

/*==============================================================*/
/* Table: CONTACT                                               */
/*==============================================================*/
create table CONTACT
(
   CONTACT_ID           int not null auto_increment comment '',
   ADDRESS_ID           int  comment '',
   NAME_ID              int  comment '',
   PERSONAL_ID          int  comment '',
   EMAIL                varchar(128)  comment '',
   PHONE                varchar(32)  comment '',
   MOBILE               varchar(32)  comment '',
   primary key (CONTACT_ID)
);

/*==============================================================*/
/* Table: NAME                                                  */
/*==============================================================*/
create table NAME
(
   NAME_ID              int not null auto_increment comment '',
   PREFIX               varchar(16)  comment '',
   FIRST_NAME           varchar(96) not null  comment '',
   MID_NAME             varchar(96)  comment '',
   LAST_NAME            varchar(96)  comment '',
   SUFFIX               varchar(32)  comment '',
   NICKNAME             varchar(96)  comment '',
   primary key (NAME_ID)
);

/*==============================================================*/
/* Table: PERSONAL                                              */
/*==============================================================*/
create table PERSONAL
(
   PERSONAL_ID          int not null auto_increment comment '',
   BIRTHDAY             date  comment '',
   JOB_TITLE            varchar(32)  comment '',
   DEPARTMENT           varchar(32)  comment '',
   COMPANY              varchar(64)  comment '',
   WEBSITE              varchar(192)  comment '',
   NOTE                 longtext  comment '',
   primary key (PERSONAL_ID)
);

alter table CONTACT add constraint FK_CONTACT_ADDRESS foreign key (ADDRESS_ID)
      references ADDRESS (ADDRESS_ID) on delete cascade;

alter table CONTACT add constraint FK_CONTACT_NAME foreign key (NAME_ID)
      references NAME (NAME_ID) on delete cascade;

alter table CONTACT add constraint FK_CONTACT_PERSONAL foreign key (PERSONAL_ID)
      references PERSONAL (PERSONAL_ID) on delete cascade;
	  
CREATE TRIGGER DELETE_NAME AFTER DELETE ON CONTACT FOR EACH ROW DELETE FROM NAME where NAME.NAME_ID = OLD.NAME_ID;
CREATE TRIGGER DELETE_ADDRESS AFTER DELETE ON CONTACT FOR EACH ROW DELETE FROM ADDRESS where ADDRESS.ADDRESS_ID = OLD.ADDRESS_ID;
CREATE TRIGGER DELETE_PERSONAL AFTER DELETE ON CONTACT FOR EACH ROW DELETE FROM PERSONAL where PERSONAL.PERSONAL_ID = OLD.PERSONAL_ID;

insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (1, 'Jackson', 'Santa Barbara', 'California', 'United States', '93106');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (2, 'Burrows', 'Panama City', 'Florida', 'United States', '32405');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (3, 'Hanson', 'Montgomery', 'Alabama', 'United States', '36125');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (4, 'Lighthouse Bay', 'Pensacola', 'Florida', 'United States', '32575');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (5, 'Emmet', 'Memphis', 'Tennessee', 'United States', '38197');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (6, 'Sugar', 'Saint Louis', 'Missouri', 'United States', '63167');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (7, 'Bluestem', 'Indianapolis', 'Indiana', 'United States', '46266');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (8, 'Redwing', 'Bridgeport', 'Connecticut', 'United States', '06606');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (9, 'Dakota', 'Albany', 'New York', 'United States', '12205');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (10, 'Haas', 'Orlando', 'Florida', 'United States', '32835');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (11, 'Eagle Crest', 'Toledo', 'Ohio', 'United States', '43615');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (12, 'Sullivan', 'Greensboro', 'North Carolina', 'United States', '27499');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (13, 'Shasta', 'Canton', 'Ohio', 'United States', '44760');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (14, 'Elgar', 'Santa Monica', 'California', 'United States', '90410');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (15, 'Golf Course', 'Las Vegas', 'Nevada', 'United States', '89155');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (16, 'Buena Vista', 'Memphis', 'Tennessee', 'United States', '38150');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (17, 'Stephen', 'Boise', 'Idaho', 'United States', '83711');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (18, 'Vera', 'Philadelphia', 'Pennsylvania', 'United States', '19172');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (19, 'Kingsford', 'Lexington', 'Kentucky', 'United States', '40576');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (20, 'Columbus', 'Portland', 'Oregon', 'United States', '97206');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (21, 'Killdeer', 'Portland', 'Oregon', 'United States', '97211');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (22, 'Bartillon', 'El Paso', 'Texas', 'United States', '79945');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (23, 'Reinke', 'New York City', 'New York', 'United States', '10024');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (24, 'Burning Wood', 'San Jose', 'California', 'United States', '95108');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (25, 'Evergreen', 'Savannah', 'Georgia', 'United States', '31410');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (26, 'Oneill', 'Washington', 'District of Columbia', 'United States', '20551');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (27, 'Shoshone', 'Hampton', 'Virginia', 'United States', '23668');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (28, 'Dawn', 'Detroit', 'Michigan', 'United States', '48275');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (29, 'Burrows', 'Denver', 'Colorado', 'United States', '80228');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (30, 'Pennsylvania', 'San Jose', 'California', 'United States', '95128');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (31, 'Reindahl', 'Corona', 'California', 'United States', '92878');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (32, 'Goodland', 'Daytona Beach', 'Florida', 'United States', '32123');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (33, 'Montana', 'Kansas City', 'Missouri', 'United States', '64153');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (34, 'Dottie', 'Dallas', 'Texas', 'United States', '75367');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (35, 'Canary', 'New Hyde Park', 'New York', 'United States', '11044');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (36, 'Debra', 'Mesa', 'Arizona', 'United States', '85210');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (37, 'Spohn', 'Kansas City', 'Missouri', 'United States', '64125');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (38, 'Porter', 'Montgomery', 'Alabama', 'United States', '36109');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (39, 'Division', 'Saint Paul', 'Minnesota', 'United States', '55127');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (40, 'Colorado', 'San Francisco', 'California', 'United States', '94132');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (41, 'Lotheville', 'Wilmington', 'Delaware', 'United States', '19805');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (42, 'Dakota', 'Indianapolis', 'Indiana', 'United States', '46226');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (43, 'Dwight', 'Nashville', 'Tennessee', 'United States', '37205');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (44, 'Autumn Leaf', 'El Paso', 'Texas', 'United States', '88530');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (45, 'Fulton', 'Portland', 'Oregon', 'United States', '97232');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (46, 'Warner', 'San Jose', 'California', 'United States', '95155');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (47, 'Thompson', 'Houston', 'Texas', 'United States', '77288');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (48, 'Luster', 'Dallas', 'Texas', 'United States', '75367');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (49, 'Reinke', 'Fresno', 'California', 'United States', '93740');
insert into ADDRESS (ADDRESS_ID, STREET, CITY, PROVINCE, COUNTRY, POSTAL) values (50, 'Pawling', 'Chico', 'California', 'United States', '95973');

insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (1, 'Ms', 'Kurt', 'Raphael', 'IV');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (2, 'Ms', 'Astra', 'Rosini', 'III');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (3, 'Mr', 'Ferris', 'Von Salzberg', 'IV');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (4, 'Ms', 'Bob', 'Duce', 'IV');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (5, 'Honorable', 'Natasha', 'Walesa', 'IV');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (6, 'Ms', 'Julie', 'Wynn', 'IV');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (7, 'Mr', 'Jenni', 'Critchley', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (8, 'Mrs', 'Shane', 'Aicheson', 'Sr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (9, 'Ms', 'Shirleen', 'Lenard', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (10, 'Mrs', 'Agace', 'Hatfield', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (11, 'Ms', 'Ranique', 'Kubicki', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (12, 'Dr', 'Cully', 'Sowman', 'IV');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (13, 'Dr', 'Vaughan', 'Abelovitz', 'III');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (14, 'Honorable', 'Christyna', 'Kinghorn', 'Sr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (15, 'Dr', 'Bria', 'Hasley', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (16, 'Mrs', 'Alie', 'Dulake', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (17, 'Mr', 'Fernanda', 'Bolens', 'Sr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (18, 'Rev', 'Janetta', 'Lagadu', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (19, 'Mr', 'Denys', 'Ben', 'III');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (20, 'Honorable', 'Raleigh', 'Cyster', 'Sr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (21, 'Mrs', 'Lyndell', 'Haslam', 'III');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (22, 'Mrs', 'Cookie', 'Horbath', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (23, 'Ms', 'Sampson', 'Fibbings', 'Sr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (24, 'Mr', 'Gavan', 'Fletham', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (25, 'Mrs', 'Bary', 'Bracer', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (26, 'Dr', 'Mendie', 'Clayal', 'Sr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (27, 'Ms', 'Nicoli', 'McShea', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (28, 'Ms', 'Lindsay', 'Wildes', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (29, 'Honorable', 'Serene', 'Corry', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (30, 'Mr', 'Trent', 'Bridson', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (31, 'Honorable', 'Kimberli', 'Digan', 'Sr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (32, 'Mr', 'Petra', 'Brecknell', 'III');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (33, 'Honorable', 'Brnaby', 'Chantler', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (34, 'Mr', 'Diandra', 'Sandeland', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (35, 'Dr', 'Peterus', 'Benham', 'III');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (36, 'Honorable', 'Hobey', 'Fritchly', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (37, 'Dr', 'Stacy', 'Trusler', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (38, 'Mrs', 'Tammie', 'Crowcum', 'III');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (39, 'Mr', 'Orelee', 'Dictus', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (40, 'Ms', 'Terrel', 'Gecke', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (41, 'Dr', 'Dukey', 'Calvert', 'IV');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (42, 'Mr', 'Allistir', 'Attwood', 'III');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (43, 'Mrs', 'Dorise', 'Cathee', 'Sr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (44, 'Ms', 'Deloris', 'Merkle', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (45, 'Ms', 'Celestia', 'Chidgey', 'II');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (46, 'Ms', 'Yard', 'Halbeard', 'Sr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (47, 'Dr', 'Jaymee', 'Petrushkevich', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (48, 'Rev', 'Bertie', 'Bute', 'III');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (49, 'Ms', 'Lazar', 'Skellion', 'Jr');
insert into NAME (NAME_ID, PREFIX, FIRST_NAME, LAST_NAME, SUFFIX) values (50, 'Dr', 'Meridith', 'Finlan', 'Jr');

insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (1, '1987-06-08', 'Desktop Support Technician', 'Product Management', 'Izio');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (2, '1983-04-07', 'Food Chemist', 'Business Development', 'Digitube');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (3, '1999-09-25', 'Sales Representative', 'Accounting', 'Fivechat');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (4, '1997-03-08', 'Tax Accountant', 'Marketing', 'Linkbridge');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (5, '1998-06-25', 'Nurse', 'Marketing', 'Flipstorm');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (6, '1995-04-01', 'Budget/Accounting Analyst III', 'Sales', 'Kimia');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (7, '1993-06-26', 'Recruiter', 'Legal', 'Omba');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (8, '1991-02-24', 'Sales Associate', 'Sales', 'Chatterbridge');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (9, '1983-03-15', 'Paralegal', 'Product Management', 'Tagtune');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (10, '1983-03-16', 'Teacher', 'Human Resources', 'Photolist');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (11, '1997-03-24', 'Electrical Engineer', 'Marketing', 'Livetube');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (12, '1996-02-07', 'GIS Technical Architect', 'Accounting', 'Mycat');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (13, '1986-07-02', 'Health Coach II', 'Engineering', 'Eidel');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (14, '1991-03-12', 'Recruiting Manager', 'Legal', 'Yabox');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (15, '1983-12-10', 'Payment Adjustment Coordinator', 'Services', 'Reallinks');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (16, '1983-09-29', 'General Manager', 'Human Resources', 'Edgeblab');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (17, '1996-10-01', 'Safety Technician IV', 'Human Resources', 'Thoughtbridge');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (18, '1988-03-17', 'Speech Pathologist', 'Legal', 'Fadeo');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (19, '1984-05-19', 'Professor', 'Business Development', 'Topdrive');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (20, '1994-01-07', 'Internal Auditor', 'Training', 'Trunyx');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (21, '1981-04-04', 'Financial Analyst', 'Business Development', 'Zoovu');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (22, '1998-04-27', 'VP Accounting', 'Accounting', 'Abata');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (23, '1985-03-07', 'Senior Quality Engineer', 'Research and Development', 'Tagopia');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (24, '1987-12-02', 'Web Developer II', 'Legal', 'Yakijo');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (25, '1985-12-19', 'Social Worker', 'Research and Development', 'Abata');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (26, '1989-10-22', 'Internal Auditor', 'Legal', 'Devpulse');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (27, '1995-08-15', 'Senior Financial Analyst', 'Research and Development', 'Zoomcast');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (28, '1986-01-15', 'Assistant Manager', 'Marketing', 'Kwilith');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (29, '1996-09-18', 'Internal Auditor', 'Product Management', 'Zoombeat');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (30, '1981-03-06', 'VP Quality Control', 'Business Development', 'Viva');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (31, '1986-04-23', 'Registered Nurse', 'Product Management', 'Jaxbean');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (32, '1992-06-28', 'VP Quality Control', 'Marketing', 'Buzzbean');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (33, '1997-04-19', 'Geologist IV', 'Sales', 'Mycat');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (34, '1980-04-25', 'Recruiter', 'Sales', 'Brainverse');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (35, '1998-06-19', 'Accountant I', 'Sales', 'Realblab');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (36, '1981-10-03', 'Assistant Media Planner', 'Research and Development', 'Zooveo');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (37, '1986-07-27', 'Librarian', 'Training', 'Roodel');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (38, '1990-05-08', 'Health Coach I', 'Training', 'Agimba');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (39, '1995-03-07', 'Account Representative I', 'Product Management', 'Tekfly');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (40, '1984-01-28', 'Recruiting Manager', 'Training', 'Twinder');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (41, '1980-11-24', 'Media Manager IV', 'Research and Development', 'Oyonder');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (42, '1989-07-02', 'Staff Accountant I', 'Training', 'Photojam');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (43, '1994-10-11', 'Electrical Engineer', 'Accounting', 'Ailane');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (44, '1997-04-11', 'Structural Analysis Engineer', 'Human Resources', 'Skyndu');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (45, '1999-10-24', 'Research Nurse', 'Product Management', 'Bluejam');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (46, '1999-10-30', 'Pharmacist', 'Services', 'Kazu');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (47, '1996-06-01', 'Geologist IV', 'Services', 'Feedbug');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (48, '1992-10-19', 'Structural Engineer', 'Services', 'Jaxspan');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (49, '1996-11-13', 'Database Administrator II', 'Marketing', 'Aivee');
insert into PERSONAL (PERSONAL_ID, BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY) values (50, '1992-01-08', 'Librarian', 'Marketing', 'Mynte');

insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (1, 1, 1, 1, 'tmelling0@netlog.com', '358-214-5123', '499-386-5174');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (2, 2, 2, 2, 'mruoss1@ow.ly', '711-848-7981', '687-709-0302');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (3, 3, 3, 3, 'achaffe2@list-manage.com', '644-571-2630', '706-697-2233');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (4, 4, 4, 4, 'ggwin3@craigslist.org', '839-738-3062', '686-663-2814');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (5, 5, 5, 5, 'nmurrells4@rediff.com', '730-288-6415', '167-508-4414');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (6, 6, 6, 6, 'oivimy5@comsenz.com', '378-845-4626', '949-749-4726');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (7, 7, 7, 7, 'vcoysh6@1und1.de', '491-170-1740', '791-468-4999');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (8, 8, 8, 8, 'pruger7@irs.gov', '392-857-4008', '836-744-6608');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (9, 9, 9, 9, 'jhelversen8@army.mil', '650-890-0468', '929-704-3348');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (10, 10, 10, 10, 'galoshechkin9@discuz.net', '781-566-1836', '554-116-8842');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (11, 11, 11, 11, 'ereforda@myspace.com', '922-535-5929', '119-869-0475');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (12, 12, 12, 12, 'choonahanb@answers.com', '878-156-2835', '941-264-6981');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (13, 13, 13, 13, 'kraec@bing.com', '115-315-2239', '534-866-6165');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (14, 14, 14, 14, 'aoscroftd@about.com', '971-853-3332', '521-999-0651');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (15, 15, 15, 15, 'rpetschelte@webmd.com', '729-434-2235', '788-320-9319');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (16, 16, 16, 16, 'dsineathf@barnesandnoble.com', '436-546-2959', '709-817-2656');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (17, 17, 17, 17, 'ireisenbergg@google.ru', '833-714-6522', '893-328-6819');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (18, 18, 18, 18, 'wcansdallh@zimbio.com', '695-851-7330', '229-483-9671');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (19, 19, 19, 19, 'eeusticei@ameblo.jp', '307-873-0651', '852-977-0026');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (20, 20, 20, 20, 'nderbyj@newyorker.com', '566-110-8239', '700-959-6064');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (21, 21, 21, 21, 'iconyerk@altervista.org', '797-553-7515', '663-558-3242');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (22, 22, 22, 22, 'gyanshonokl@businesswire.com', '503-713-5771', '540-993-9696');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (23, 23, 23, 23, 'rdunstonm@jiathis.com', '706-106-1778', '990-611-4672');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (24, 24, 24, 24, 'fmeadn@dailymotion.com', '318-654-7902', '953-165-1329');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (25, 25, 25, 25, 'mglossopo@geocities.jp', '487-718-9257', '518-595-1206');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (26, 26, 26, 26, 'khartusp@slashdot.org', '379-597-1108', '819-102-7827');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (27, 27, 27, 27, 'tdoelleq@foxnews.com', '909-697-7259', '891-946-1977');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (28, 28, 28, 28, 'operrygor@parallels.com', '520-114-3496', '588-414-8647');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (29, 29, 29, 29, 'dbagniuks@nsw.gov.au', '640-589-3527', '476-695-5559');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (30, 30, 30, 30, 'hpedriellit@macromedia.com', '314-111-4338', '600-451-7233');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (31, 31, 31, 31, 'bburdusu@google.co.jp', '686-368-5516', '916-414-2973');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (32, 32, 32, 32, 'jbimv@cbslocal.com', '662-643-0915', '278-778-4347');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (33, 33, 33, 33, 'cluquetw@spiegel.de', '286-824-2628', '647-425-0782');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (34, 34, 34, 34, 'cbaddileyx@comsenz.com', '300-578-4680', '566-514-1974');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (35, 35, 35, 35, 'hhalfhidey@prnewswire.com', '422-993-3386', '319-955-8980');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (36, 36, 36, 36, 'ynoldaz@freewebs.com', '451-917-8283', '299-831-6907');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (37, 37, 37, 37, 'wskey10@who.int', '405-361-5640', '704-324-5314');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (38, 38, 38, 38, 'moleszcuk11@statcounter.com', '628-370-8312', '769-639-6682');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (39, 39, 39, 39, 'rscamerdine12@istockphoto.com', '351-584-0560', '203-624-5237');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (40, 40, 40, 40, 'njahnel13@gravatar.com', '741-875-7462', '127-148-9240');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (41, 41, 41, 41, 'pludwikiewicz14@blogspot.com', '773-801-5536', '648-885-9513');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (42, 42, 42, 42, 'cmackeague15@seattletimes.com', '291-366-4639', '550-915-3330');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (43, 43, 43, 43, 'ltroake16@tiny.cc', '801-408-2607', '160-332-1615');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (44, 44, 44, 44, 'aferenczy17@adobe.com', '651-276-0032', '626-230-9231');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (45, 45, 45, 45, 'cedleston18@smugmug.com', '711-659-8606', '716-701-5272');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (46, 46, 46, 46, 'gmassow19@histats.com', '707-796-3008', '834-727-9051');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (47, 47, 47, 47, 'sfieldsend1a@google.pl', '323-518-9022', '661-623-5799');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (48, 48, 48, 48, 'ahovel1b@webeden.co.uk', '474-155-9054', '330-375-0463');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (49, 49, 49, 49, 'bshefton1c@alibaba.com', '502-904-8063', '815-720-7436');
insert into CONTACT (CONTACT_ID, ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) values (50, 50, 50, 50, 'rlewsey1d@fda.gov', '520-265-3476', '840-562-8226');
