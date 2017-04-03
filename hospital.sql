/*derived from entities*/
create table patient 
	 (p_ID varchar(15) not null unique,
	 fname varchar (10) not null,
	 lname varchar(20) not null,
	 dob date not null, phone_num int,
	 primary key (p_ID));

create table doctor 
	 (d_ID varchar(15) not null unique,
	 fname varchar(10) not null, 
	 lname varchar(15) not null,
	 dob date not null, phone_num int, 
	 primary key(d_ID));

create table nurse
	 (n_ID varchar(15) not null unique,
	  fname varchar(15) not null,
	  lname varchar(15) not null, 
	  primary key(n_ID));

/*derived from doctor ISA*/
create table interim_Doc
	 (d_ID varchar(15) not null unique,
	 	primary key(d_ID),
	 	foreign key (d_ID) references doctor(d_ID) on update cascade on delete cascade);

create table consultant_Doc
	 (d_ID varchar(15) not null unique,
	 	specialization varchar(15),
	 	primary key (d_ID),
	 	foreign key (d_ID) references doctor(d_ID) on update cascade on delete cascade);

create table resident_Doc
	 (d_ID varchar(15) not null unique,
	 	primary key (d_ID),
	 	foreign key (d_ID) references doctor(d_ID) on update cascade on delete cascade );

/*derived from nurse ISA*/
create table registered_Nurse
	 (n_ID varchar(15) not null unique,
	 	primary key (n_ID),
	 	foreign key (n_ID) references nurse on update cascade on delete cascade);

create table enrolled_Nurse
	(n_ID varchar(15) not null unique,
		primary key (n_ID),
		foreign key (n_ID) references nurse on update cascade on delete cascade);

create table registered_Midwife
	(n_ID varchar(15) not null unique,
		primary key(n_ID),
		foreign key (n_ID) references nurse on update cascade on delete cascade);










