create database healthcare;
use healthcare;
drop database healthcare;
create table patient (
patient_id int primary key,
patient_name varchar(30),
Age int,
Gender char(6),
city char(25)
);

insert into patient (patient_id,patient_name,Age,Gender,city) values
('101','james','62','Male', 'new york'),
('102','john','67','Male','california'),
('103','rose','49','Female','chicago'),
('104','mary','34','Female','texas'),
('105', 'linda', '47','Female','florida'),
('106','jenifer','42','Female','washington'),
('107','maria','77','Female','california'),
('108','robert','47','Male','california'),
('109','micheal','26','Male','new york'),
('110','carol','37','Female','chicago'),
('111','susane','68','Female','chicago'),
('112','dona','79','Female','maryland'),
('113','william','62','Male','texas'),
('114','david','34','Male','washington'),
('115','sarah','64','Female','new york'),
('116','richard','40','Male','new york'),
('117','sheren','59','Female','florida'),
('118','charles','75', 'Male','texas'),
('119','joseph','62','Male','chicago'),
('120','jack','20','Male','new york'),
('121','steven','33','Male','maryland'),
('122','donald','57','Male','texas'),
('123', 'paul','22','Male','texas'),
('124','dosan','83','Male','california'),
('125','elizabeth','32','Female', 'california'),
('126','dona','79', 'Female','chicago'),
('127','laura','26', 'Female','texas'),
('129','george', '36', 'Male','new york'),
('130','kevin','59','Male', 'texas');
select * from patient;


create table Doctors (
Doctor_id int primary key,
doctor_name varchar(30),
Gender char(6),
salary int,
hospital_id int,
foreign key (hospital_id) references hospitals(hospital_id)
);
drop table doctors;
Alter table Doctors modify salary int;
insert into Doctors(Doctor_id,doctor_name,Gender,salary,hospital_id) values
('1001', 'Jennifer Hall', 'Female', ' 20000','201'),
('1002', 'Jonathan Watson', 'male', '30000', '202'),
('1003', 'Erin Henson', 'Female', '25000', '203'),
('1004', 'Michelle Ward', 'male', '15000', '204'),
('1005', 'David Lindsey', 'male', '10000', '205'),
('1006', 'Mary Moss', 'Female', '20000', '206'),
('1007', 'Cameron Young', 'male', '30000', '207'),
('1008', 'Patricia Colon', 'female', '40000', '208'),
('1009', 'April Cox', 'male', '50000', '209'),
('1010', 'Miss Valerie Saunders MD', 'Female', '25000', '210'),
('1011', 'Brian Walton', 'male', '25000', '211'),
('1012', 'David Ruiz', 'male', '10000', '212'),
('1013', 'Samantha Davies', 'Female', '20000', '213'),
('1014', 'Jacob Huynh', 'male', '10000', '214'),
('1015', 'Charles Webb', 'male', '15000', '215'),
('1016', 'Crystal Chavez', 'Female', '35000', '216'),
('1017', 'Daniel Smith', 'Female', '40000', '217'),
('1018', 'Anthony Nixon', 'male', '50000', '218'),
('1019', 'Daniel Carson', 'male', '25000', '219'),
('1020', 'Tracey Spence', 'male', '25000', '220'),
('1021', 'Laura Myers', 'Female', '10000', '221'),
('1022', 'Mary Drake', 'Female', '20000', '222'),
('1023', 'Kristen Johnson', 'Female', '10000', '223'),
('1024', 'Tyler Braun', 'Female', '15000', '224'),
('1025', 'Gerald Hooper', 'Female', '20000', '225'),
('1026', 'Victor Welch', 'male', '30000', '226'),
('1027', 'Caleb James', 'male', '25000', '227'),
('1028', 'Kristina Frazier', 'male', '15000', '228'),
('1029', 'Rebecca Morgan', 'Female', '10000', '229'),
('1030', 'Rhodes-Carey', 'male', '15000', '230');
select * from doctors;


create table hospitals (
Hospital_id int primary key,
Hospital_name varchar(100),
city varchar(30),
death int
);
select * from hospitals;
update hospitals set death =0 where hospital_id=230;
drop table hospitals;
alter table hospitals add death int;
insert into hospitals(Hospital_id,Hospital_name,city,death) values
('201', 'Group Rodriguez','new york',2),
('202', 'Garcia, and Bishop Hernandez', 'california',5),
('203', 'Smith Gonzalez Robinson', 'chicago',4),
('204', 'Group Brown', 'texas',7),
('205', 'Mendoza Rich Morales', 'florida',0),
('206', 'Beck-Galloway', 'washington',5),
('207', 'Lopez PLC', 'california',1),
('208', 'Group Nguyen', 'california',6),
('209', 'Baker-Jones', 'new york',5),
('210', 'Rodriguez-Zimmerman', 'chicago',5),
('211', 'Thomas-Kelley', 'chicago',4),
('212', 'James Ltd', 'maryland',6),
('213', 'Kim Inc', 'texas',3),
('214', 'Hart Ltd', 'washington',6),
('215', 'Bass Inc', 'new york',2),
('216', 'Guzman-Carlson', 'new york',4),
('217', 'Alvarado-Deleon', 'florida',0),
('218', 'Proctor-Jones', 'texas',9),
('219', 'Pierce Ward, Torres and', 'chicago',7),
('220', 'Lewis Livingston, Lowe and', 'new york',5),
('221', 'LLC Martin', 'maryland',0),
('222', 'Anderson and Medina, Sullivan','texas',8),
('223', 'Group Doyle', 'texas',3),
('224', 'Miller-Lawson', 'california',9),
('225', 'and Johnson Moore, Branch', 'california',2),
('226', 'Carpenter and Sons', 'chicago',0),
('227', 'Michael-Jenkins', 'texas',4),
('228', 'Cruz-Santiago', 'new york',2),
('229', 'Spears-Shah', 'new york',1),
('230', 'Proctor-Jones', 'texas',0);



create table admissions (
admission_id int primary key,
patient_id int,
hospital_id int,
admitdate Date,
hospital_name varchar(100),
Admit_type varchar(10),
billing_amt int,
Medical_condition varchar(50),
foreign key (Hospital_id) references hospitals(Hospital_id)
);
drop table admissions;
INSERT INTO Admissions (admission_id, patient_id, hospital_id, admitdate, hospital_name, admit_type, billing_amt, medical_condition) 
VALUES 
('401', '101', '201', '2023-01-01', 'Group Rodriguez', 'Urgent', '3000', 'Diabetes'),
('402', '102', '202', '2023-01-07', 'Garcia and Bishop Hernandez', 'Emergency', '3326', 'Obesity'),
('403', '103', '203', '2023-02-06', 'Smith Gonzalez Robinson', 'Elective', '43166', 'Diabetes'),
('404', '104', '204', '2023-02-10', 'Group Brown', 'Urgent', '18525', 'Cancer'),
('405', '105', '205', '2023-02-20', 'Mendoza Rich Morales', 'Elective', '25574', 'Obesity'),
('406', '106', '206', '2023-04-14', 'Beck-Galloway', 'Emergency', '14681', 'Cancer'),
('407', '107', '207', '2023-03-23', 'Lopez PLC', 'Urgent', '16320', 'Asthma'),
('408', '108', '208', '2023-04-09', 'Group Nguyen', 'Elective', '31516', 'Diabetes'),
('409', '109', '209', '2023-03-31', 'Baker-Jones', 'Elective', '40190', 'Cancer'),
('410', '110', '210', '2023-04-16', 'Rodriguez-Zimmerman', 'Emergency', '13418', 'Arthritis'),
('411', '111', '211', '2023-05-17', 'Thomas-Kelley', 'Urgent', '2679', 'Arthritis'),
('412', '112', '212', '2023-05-16', 'James Ltd', 'Elective', '25504', 'Hypertension'),
('413', '113', '213', '2023-05-24', 'Kim Inc', 'Emergency', '33643', 'Obesity'),
('414', '114', '214', '2023-05-12', 'Hart Ltd', 'Urgent', '47909', 'Asthma'),
('415', '115', '215', '2023-05-18', 'Bass Inc', 'Emergency', '5550', 'Arthritis'),
('416', '116', '216', '2023-06-15', 'Guzman-Carlson', 'Urgent', '9586', 'Obesity'),
('417', '117', '217', '2023-06-28', 'Alvarado-Deleon', 'Emergency', '27386', 'Obesity'),
('418', '118', '218', '2023-06-08', 'Proctor-Jones', 'Urgent', '6132', 'Arthritis'),
('419', '119', '219', '2023-06-25', 'Pierce Ward, Torres and Co.', 'Elective', '3879', 'Obesity'),
('420', '120', '220', '2023-06-16', 'Lewis Livingston, Lowe and Co.', 'Emergency', '10664', 'Hypertension'),
('421', '121', '221', '2023-07-09', 'LLC Martin', 'Urgent', '4398', 'Diabetes'),
('422', '122', '222', '2023-07-31', 'Anderson and Medina, Sullivan', 'Elective', '35041', 'Arthritis'),
('423', '123', '223', '2023-07-24', 'Group Doyle', 'Urgent', '42215', 'Diabetes'),
('424', '124', '224', '2023-08-04', 'Miller-Lawson', 'Elective', '24637', 'Obesity'),
('425', '125', '225', '2023-08-19', 'Johnson Moore and Branch', 'Urgent', '20500', 'Cancer'),
('426', '126', '226', '2023-08-13', 'Carpenter and Sons', 'Urgent', '28526', 'Hypertension'),
('427', '127', '227', '2023-08-29', 'Michael-Jenkins', 'Urgent', '43484', 'Hypertension'),
('428', '128', '228', '2023-08-17', 'Cruz-Santiago', 'Urgent', '25835', 'Arthritis'),
('429', '129', '229', '2023-08-28', 'Spears-Shah', 'Urgent', '36870', 'Arthritis'),
('430', '130', '230', '2023-09-21', 'Proctor-Jones', 'Emergency', '28526', 'Diabetes');
select * from admissions;


Create table medication (
medicine_id int primary key,
patient_id int,
doctor_id int,
medicine_type varchar(50),
test_result char(20),
blood_type varchar(3),
foreign key (doctor_id) references doctors(doctor_id)
);
drop table medication;
insert into medication (medicine_id,patient_id,doctor_id,medicine_type,test_result,blood_type) values
('301', '101', '1001', 'Aspirin', 'Inconclusive', 'O+'),
('302', '102', '1002', 'Lipitor', 'Inconclusive', 'AB-'),
('303', '103', '1003', 'Ibuprofen', 'Abnormal', 'A+'),
('304', '104', '1004', 'Lipitor', 'Abnormal', 'O+'),
('305', '105', '1005', 'Aspirin', 'Inconclusive', 'AB+'),
('306', '106', '1006', 'Ibuprofen', 'Abnormal', 'A-'),
('307', '107', '1007', 'Ibuprofen', 'Abnormal', 'O+'),
('308', '108', '1008', 'Penicillin', 'Inconclusive', 'A-'),
('309', '109', '1009', 'Penicillin', 'Abnormal', 'O+'),
('310', '110', '1010', 'Penicillin', 'Abnormal', 'A-'),
('311', '111', '1011', 'Paracetamol', 'Abnormal', 'B+'),
('312', '112', '1012', 'Lipitor', 'Abnormal', 'A-'),
('313', '113', '1013', 'Ibuprofen', 'Inconclusive', 'A+'),
('314', '114', '1014', 'Ibuprofen', 'Inconclusive', 'B-'),
('315', '115', '1015', 'Ibuprofen', 'Inconclusive', 'AB-'),
('316', '116', '1016', 'Lipitor', 'Inconclusive', 'O+'),
('317', '117', '1017', 'Penicillin', 'Inconclusive', 'O+'),
('318', '118', '1018', 'Paracetamol', 'Normal', 'AB-'),
('319', '119', '1019', 'Aspirin', 'Inconclusive', 'A-'),
('320', '120', '1020', 'Aspirin', 'Normal', 'B+'),
('321', '121', '1021', 'Paracetamol', 'Inconclusive', 'AB+'),
('322', '122', '1022', 'Lipitor', 'Normal', 'B+'),
('323', '123', '1023', 'Paracetamol', 'Abnormal', 'AB-'),
('324', '124', '1024', 'Paracetamol', 'Inconclusive', 'AB+'),
('325', '125', '1025', 'Penicillin', 'Normal', 'AB-'),
('326', '126', '1026', 'Aspirin', 'Abnormal', 'A-'),
('327', '127', '1027', 'Penicillin', 'Abnormal', 'A-'),
('328', '128', '1028', 'Penicillin', 'Abnormal', 'A+'),
('329', '129', '1029', 'Penicillin', 'Normal', 'O+'),
('330', '130', '1030', 'Penicillin', 'Abnormal', 'B+');
select * from medication;

 create table discharge (
 discharge_id int auto_increment primary key,
 patient_id int ,
 patient_name varchar(10),
 admitdate date,
 dischargedate date
 );
 drop table discharge;
 INSERT INTO discharge (patient_id, patient_name,admitdate, dischargedate) VALUES
(101, 'james', '2023-01-01', '2023-11-01'),
(102, 'john', '2023-07-01', '2023-07-27'),
(103, 'rose', '2023-02-16', '2023-02-25'),
(104, 'mary', '2023-02-10', '2023-03-05'),
(105, 'linda', '2023-02-20', '2023-03-10'),
(106, 'jenifer', '2023-04-14', '2023-04-18'),
(107, 'maria', '2023-03-23', '2023-04-19'),
(108, 'robert', '2023-04-09', '2023-04-21'),
(109, 'micheal', '2023-03-31', '2023-04-29'),
(110, 'carol', '2023-04-16', '2023-05-14'),
(111, 'susane', '2023-05-17', '2023-05-31'),
(112, 'dona', '2023-05-16', '2023-06-01'),
(113, 'william', '2023-05-24', '2023-06-03'),
(114, 'david', '2023-05-12', '2023-06-10'),
(115, 'sarah', '2023-05-18', '2023-06-15'),
(116, 'richard', '2023-06-15', '2023-06-30'),
(117, 'sheren', '2023-06-28', '2023-07-02'),
(118, 'charles', '2023-06-08', '2023-07-05'),
(119, 'joseph', '2023-06-25', '2023-07-11'),
(120, 'jack', '2023-06-16', '2023-07-14'),
(121, 'steven', '2023-07-09', '2023-07-15'),
(122, 'donald', '2023-07-31', '2023-08-02'),
(123, 'paul', '2023-07-24', '2023-08-11'),
(124, 'dosan', '2023-08-04', '2023-08-12'),
(125, 'elizabeth', '2023-08-19', '2023-08-25'),
(126, 'dona', '2023-08-13', '2023-09-05'),
(127, 'laura', '2023-08-29', '2023-09-07'),
(128, 'michelle', '2023-08-17', '2023-09-11'),
(129, 'george', '2023-08-28', '2023-09-16'),
(130, 'kevin', '2023-09-21', '2023-10-08');

CREATE TABLE department (
department_id int primary key,
hospital_id int,
department_names varchar(100),
foreign key (hospital_id) references hospitals(hospital_id)
);
drop table department;
INSERT INTO department (department_id,hospital_id, department_names) VALUES
(1,201, 'Emergency Room'),
(2,202, 'Cardiology'),
(3,203,'Neurology'),
(4,204, 'Orthopedics'),
(5,205, 'Pediatrics'),
(6,206, 'Oncology'),
(7,207, 'General'),
(8,208, 'Radiology'),
(9,209, 'Internal Medicine'),
(10,210, 'Dermatology'),
(11,211, 'Anesthesiology'),
(12,212, 'Ophthalmology'),
(13,213, 'Gastroenterology'),
(14,214, 'Urology'),
(15,215, 'Nephrology'),
(16,216, 'Pulmonology'),
(17,217, 'Endocrinology'),
(18,218, 'Hematology'),
(19,219, 'Rheumatology'),
(20,220, 'Psychiatry'),
(21,221, 'Rehabilitation'),
(22,222, 'Geriatrics'),
(23,223, 'Allergy specialist'),
(24,224, 'Infectious Disease'),
(25,225, 'Pain Management'),
(26,226, 'Nutrition and Dietetics'),
(27,227, 'Pulmonary Rehabilitation'),
(28,228, 'Wound Care'),
(29,229 ,'Sleep Medicine'),
(30,230, 'Plastic Surgery');
select * from department;

-- joins query --
select p.patient_name, a.medical_condition
from patient p
join admissions A on p.patient_id=A.Patient_id
where A.medical_condition = 'diabetes';
 
select D.doctor_name,h.hospital_name,h.city
from doctors D
join hospitals h on D.hospital_id=h.hospital_id
where city='california';

select p.patient_name,a.billing_amt
from patient p
inner join admissions a on p.patient_id = a.patient_id;

select dep.department_names,d.doctor_name
from department dep
left join doctors d on dep.hospital_id = d.hospital_id;

select p.patient_name,m.medicine_type
from medication m
right join patient p on m.patient_id = p.patient_id;


-- subqueries --
select patient_name,patient_id from patient
where patient_id in 
(select patient_id from admissions where hospital_name='Group Rodriguez');

select doctor_name,doctor_id from doctors
where salary >
(select avg(salary) from doctors);

select patient_name , patient_id 
from patient where patient_id in
(select patient_id from medication where medicine_type='Aspirin');

select hospital_name,hospital_id
from hospitals where hospital_id in
(select hospital_id from admissions 
group by hospital_id
having avg(billing_amt)>20000);

select doctor_name,doctor_id from doctors 
where salary >(
select max(salary) 
from doctors
where hospital_id in (
select hospital_id
from hospitals
where city='florida'));


-- normal queries ---
select dischargedate 
from discharge
where dischargedate < '2023-04-01';

select * from medication 
 where test_result = 'normal';
 
 select hospital_name,death 
 from hospitals
 where death <7;

select max(age) as max_age,
min(age) as min_age
from patient;


select hospital_id,patient_id,medical_condition,admit_type
from admissions
where admit_type  ='emergency';

select h.Hospital_name, SUM(h.death) AS total_deaths
from  hospitals h
group by  h.Hospital_name;

show tables;