create database orangehrm;
USE orangehrm;
create table personaldetails(
	id int primary key auto_increment ,
    name char(50) not null,
    gender char(50) not null,
    nationality char(50) not null,
    date_of_birth date not null
);
INSERT INTO personaldetails (name, gender, nationality, date_of_birth) VALUES 
('George Carter', 'Male', 'American', '1994-05-11'),
('Dominic Chase', 'Male', 'Belgian','1980-07-17'),
('Linda Jane', 'Female', 'American','1979-11-17'),
('Aylin Marbles', 'Female', 'Romanian','1981-01-03'),
('Zora Harmony', 'Female', 'Romanian','1993-09-05'),
('Stephany Nolan', 'Female', 'Dutch','1989-06-13'),
('Nathan Elliot', 'Male', 'American','1987-11-05');
select * from personaldetails;
 
create table dependents(
	dependant_id int primary key auto_increment,
    name char(50) not null,
    relationship char(50) not null,
    nationality char(50) not null,
    phone_number varchar (20) ,
	age int not null,
    employee_id integer not null,
    foreign key (employee_id) references personaldetails(id)
    );
INSERT INTO dependents (name, relationship, nationality, phone_number,age, employee_id) VALUES 
('Mira Chase', 'Wife', 'Belgian', '0751210581', 25, 2),
('Angy Elliot', 'Wife', 'American','0731584625', 30, 7),
('Rock Marshal', 'Cousin', 'American','0749846257',16, 1),
('Nora Nolan', 'Friend', 'Dutch','0751251525',19, 6),
('Anna Jane', 'Child', 'American','0754541217', 13, 3),
('Arthur Marbles', 'Husband', 'Romanian','+40785158965',40, 4),
('Elisabeth Harmony', 'Child', 'Romanian', '0720145855', 14,  5);
select * from dependents;

update dependents set relationship= "Friend" where name = "Mira Chase";
insert into dependents (name, relationship, nationality,age, employee_id) VALUES 
('Angela Chase', 'Wife', 'Belgian', 30, 2);

select * from personaldetails where date_of_birth like '%-11-%';
select * from personaldetauls where date_of_birth like '%-13';
select * from dependents where age <40;
select * from dependents where age between 18 and 30;
select * from dependents where phone_number is not null;
select * from dependents where phone_number is null;
select * from personaldetails where nationality not in ( 'American','Dutch');
select * from personaldetails where nationality = "Romanian" group by name ;
select name, gender from personaldetails where gender ='Male' or nationality= 'American';
select name, gender from personaldetails where gender ='Male' and nationality = 'American';
select name, phone_number from dependents order by name DESC;


select count(*) from personaldetails;
select count(*) from dependents;
select min(age) from dependents;
select max(age) from dependents;
select avg(age) from dependents;

select name, age from dependents having age = (select min(age) from dependents);

INSERT INTO personaldetails (name, gender, nationality, date_of_birth) VALUES 
('Johny Kreese', 'Male', 'American', '1995-05-11'),
('Miguel Tillman', 'Male', 'American', '1981-03-16');

select * from personaldetails cross join dependents on personaldetails.id = dependents.employee_id;
select d.name DependentsName, pd.name EmployeeName from dependents d  inner join personaldetails pd on d.employee_id = pd.id
group by pd.name ;
select pd.name from personaldetails pd left join dependents d on pd.id = d.employee_id
where d.nationality= 'Dutch';
select pd.name from personaldetails pd left join dependents d on pd.id =d.employee_id
where d.employee_id is not null;
select pd.name from personaldetails pd left join dependents d on pd.id =d.employee_id
where d.employee_id is null;

SHOW CREATE table dependents;
alter table dependents drop foreign key dependents_ibfk_1;
truncate table dependents;
delete from personaldetails;
drop database orangehrm
