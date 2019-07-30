create database mypersonality2

use mypersonality2
go
create table question_table
(
id_question int identity(1,1) primary key,
category varchar(30) not null,
question varchar (200) not null,
question_status int
)
go
create table user_table
(
id_user int identity(1,1) primary key,
user_email varchar(50) not null,
user_name varchar(50),
user_personality varchar(4) not null
)
go
create table answer_table
(
id_answer int identity(1,1) primary key,
id_user int not null,
id_question int not null,
question varchar (200) not null,
answer int,
answer_date datetime,
question varchar,
status int
)
create table employee_table
(
emp_ID varchar(50) primary key,
emp_name varchar(50) not null,
emp_status varchar(50) not null
)
create table account
(
username varchar(50) primary key,
password varchar(50) not null,
emp_ID varchar(50) not null
)

select * from account

insert into employee_table(emp_ID, emp_name, emp_status) values ('E1', 'Mindy Atikah', 'Active');
insert into account(username, password, emp_ID) values ('mindy', '123', 'E1');



insert into question_table (category,question,question_status) values ('Introvert vs Extrovert','You enjoy spending plenty of time alone',1);
insert into question_table (category,question,question_status) values ('Introvert vs Extrovert','Your inner monologue is hard to shut off',1);
insert into question_table (category,question,question_status) values ('Introvert vs Extrovert','You do your best thinking alone',1);
insert into question_table (category,question,question_status) values ('Introvert vs Extrovert','You often feel lonelier in a crowd than when you are alone',1);
insert into question_table (category,question,question_status) values ('Introvert vs Extrovert','You feel like your faking it when you have to network',1);
insert into question_table (category,question,question_status) values ('Sensing vs Intuiting','You prefer practical rather than theoretical course',1);
insert into question_table (category,question,question_status) values ('Sensing vs Intuiting','You are a realistic person',1);
insert into question_table (category,question,question_status) values ('Sensing vs Intuiting','You describe things in  literal way',1);
insert into question_table (category,question,question_status) values ('Sensing vs Intuiting','You easily get bored talking about something abstract',1);
insert into question_table (category,question,question_status) values ('Sensing vs Intuiting','You are a doer person',1);
insert into question_table (category,question,question_status) values ('Thinking vs Feeling','You decide something logically',1);
insert into question_table (category,question,question_status) values ('Thinking vs Feeling','You are a critical person',1);
insert into question_table (category,question,question_status) values ('Thinking vs Feeling','You are opened to any critic',1);
insert into question_table (category,question,question_status) values ('Thinking vs Feeling','You prefer see something objectively',1);
insert into question_table (category,question,question_status) values ('Thinking vs Feeling','You are firm to a culpable person',1);
insert into question_table (category,question,question_status) values ('Judging vs Perceiving','You like to work a to do list',1);
insert into question_table (category,question,question_status) values ('Judging vs Perceiving','You often make a quick decision',1);
insert into question_table (category,question,question_status) values ('Judging vs Perceiving','You like makes plans',1);
insert into question_table (category,question,question_status) values ('Judging vs Perceiving','You feel lost direction when something appear without any plans',1);
insert into question_table (category,question,question_status) values ('Judging vs Perceiving','You like to make sure the finishing is perfect',1);