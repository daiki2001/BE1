drop database if exists FACULTY;

create database FACULTY CHARACTER SET UTF8;

CONNECT FACULTY;
drop user if exists 'be1'@localhost;
set global validate_password.policy=LOW;
create user 'be1'@localhost identified with mysql_native_password by 'n13Bk$WSlnYN';
grant all privileges on FACULTY.* TO 'be1'@localhost;

create table if not exists FACULTY
(
    ID                 serial primary key,
    NAME               varchar(100)                      not null,
    CREATED_AT         timestamp(3)    default current_timestamp(3) not null,
    UPDATED_AT         timestamp(3)    default current_timestamp(3) not null
);

INSERT INTO FACULTY(NAME)
VALUES ('ゲームクリエイター科');
INSERT INTO FACULTY(NAME)
VALUES ('ゲームクリエイター科四年制');
INSERT INTO FACULTY(NAME)
VALUES ('CG映像科');
