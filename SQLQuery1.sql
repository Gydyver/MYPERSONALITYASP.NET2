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

select * from question_table
select * from account
select * from answer_table
	truncate table user_table
select * from user_table
insert into user_table(user_email, user_name) values ('lia@gmail.com', 'lia');
insert into account(username, password, emp_ID) values ('nurulaw', '123', 'E1');
insert into employee_table(emp_ID, emp_name, emp_status) values ('E1', 'Nurul Awalia', 'Active');

--update answer_table set answer = '2' where id_answer = '1';

--select count(answer) from answer_table where answer = '1' and id_question = '1'
select answer from answer_table where id_question = '1';

SELECT question, answer, COUNT(answer) AS countanswer
FROM answer_table where id_question = 3
GROUP BY  question, answer 
ORDER BY countanswer DESC

SELECT user_personality, COUNT(user_personality) AS countpersonality  FROM user_table GROUP BY user_personality ORDER BY countpersonality DESC

insert into user_table (user_name,user_email, user_personality) values ('Mindy 1','mindy1@gmail.com','ENFP')
insert into user_table (user_name,user_email, user_personality) values ('Mindy 2','mindy2@gmail.com','ISTJ')
insert into user_table (user_name,user_email, user_personality) values ('Mindy 3','mindy3@gmail.com','ESTJ')
insert into user_table (user_name,user_email, user_personality) values ('Mindy 4','mindy4@gmail.com','INTJ')
insert into user_table (user_name,user_email, user_personality) values ('Mindy 5','mindy5@gmail.com','ENTJ')

delete user_table where id_user = 10

SELECT distinct S.id_question, S.answer, C.cnt
  FROM answer_table S
       INNER JOIN (SELECT answer, count(answer) as cnt
                     FROM answer_table 
                    GROUP BY answer) C ON S.answer = C.answer order by id_question ASC

select * from answer_table
SELECT question, answer, COUNT(answer) AS countanswer FROM answer_table where id_question = 1 AND status = 1 GROUP BY question, answer ORDER BY countanswer DESC;


truncate table answer_table
use mypersonality2

select * from user_table

select * from question_table