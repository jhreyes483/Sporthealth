#drop database sporthealth;
create database sporthealth;
use sporthealth;


create table type_docs(
id_doc varchar(5) not null primary key,
name_doc varchar(35) not null
);

create table roles(
id_ac_rol varchar(5) not null primary key,
name_rol varchar(30) not null
);

create table quotes(
id int not null primary key auto_increment,
status varchar(5) not null,
date_request datetime not null,
date_quote datetime,
obs varchar(200)
);

create table types_m(
id_m int not null primary key auto_increment,
name_type_n varchar(40) not null,
obs varchar(200)
);

create table types_n(
id_n int not null primary key auto_increment,
name_type_m varchar(10) not null,
acron varchar(5)
);

create table measures(
id int not null primary key auto_increment,
date_create date not null,
caracter integer(10), 
fk_type_n int not null,
fk_type_m int not null,
fk_us varchar(20),
fk_doc varchar(5)
);
alter table  measures add constraint fk_measures_t foreign key(fk_type_n) references types_n(id_n) on update cascade on delete cascade;
alter table  measures add constraint fk_measures_tm foreign key(fk_type_m) references types_m(id_m) on update cascade on delete cascade;


create table users(
id_us varchar(20) not null,
fk_doc varchar(5) not null, 
firt_name varchar(30) not null,
second_name varchar(30) ,
last_name varchar(30) not null,
email varchar(30) not null,
password varchar(150) not null,
img varchar(30), 
date_of_birth date not null,
gender varchar(5) not null,
fk_rol varchar(5) not null
);
alter table  users add constraint fk_rol foreign key(fk_rol) references roles(id_ac_rol) on update cascade on delete cascade; 
alter table  users add constraint type_doc foreign key(fk_doc) references type_docs(id_doc) on update cascade on delete cascade;  
alter table users add primary key(id_us ,fk_doc );
alter table  measures add constraint fk_measures_users foreign key(fk_us, fk_doc) references users(id_us, fk_doc) on update cascade on delete cascade;



create table plans(
id_plan int not null primary key auto_increment,
name varchar(40),
date_create datetime not null,
fk_doc varchar(5) not null ,
fk_us varchar(20) not null
);
alter table  plans add constraint type_doc_plans foreign key(fk_doc, fk_us) references users(fk_doc, id_us) on update cascade on delete cascade; 

create table ejes(
id_eje int not null primary key	 auto_increment,
instruccion varchar(200),
fk_plan int not null
);
alter table  ejes add constraint eles_plans foreign key(fk_plan) references plans(id_plan) on update cascade on delete cascade; 

create table foods(
id int not null primary key auto_increment,
food varchar(50) not null,
portions int not null, 
obs varchar(255),
fk_plan int
);
alter table  foods add constraint foods_plans foreign key(fk_plan) references plans(id_plan) on update cascade on delete cascade; 


  
  CREATE TABLE quote_users (
  fk_doc varchar(5) NOT NULL,
  fk_us varchar(20) NOT NULL,
  fk_quote int(11) NOT NULL
  );
alter table  quote_users add constraint quote_users foreign key(fk_us, fk_doc ) references users(id_us , fk_doc) on update cascade on delete cascade; 
alter table    quote_users add constraint quote_m foreign key(fk_quote) references quotes(id) on update cascade on delete cascade; 





