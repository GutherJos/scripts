
create database sistemac;
use sistemac;

drop table if exists user;
create table user(
	id_user int primary key auto_increment not null,
    username varchar(80) not null,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    passord varchar(100) not null,
    status bit,
    login_type enum('Admin','Other')
)ENGINE=InnoDB;

drop table if exists payment;
create table payment(
	id_payment int primary key auto_increment not null,
    full_name varchar(200),
    dpi varchar(15),
    date_payment date,
    hour_payment datetime,
    date_update datetime,
    status bit,
    id_user int,
    FOREIGN KEY(id_user) REFERENCES user(id_user)    
)ENGINE=InnoDB;

drop table if exists ornament;
create table ornament(
	id_ornament int primary key auto_increment not null,
    monthly_income decimal,
    arbitrary varchar(10),
    fine decimal,
    status bit
)ENGINE=InnoDB;

drop table if exists payment_ornament;
create table payment_ornament(
	id_payment_ornament int primary key auto_increment not null,
    id_payment int,
    id_ornament int,
    fine_state bit,
    FOREIGN KEY(id_payment) REFERENCES payment(id_payment),  
    FOREIGN KEY(id_ornament) REFERENCES ornament(id_ornament)      
)ENGINE=InnoDB;

