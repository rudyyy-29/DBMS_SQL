create database demo1;

drop database demo1;

show databases;

use demo1;

create table StudentSY3
(
	s_rollNumber INTEGER,
    s_Name varchar(30)
);

alter table StudentSY3 add s_Email INTEGER;

alter table StudentSY3 drop s_Email;

alter table StudentSY3 modify s_Email varchar(30);

alter table StudentSY3 change s_Email s_MailID varchar(30);