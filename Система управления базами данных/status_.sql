create table status_ (IDstatus_ int, IDcustomer int, status_name text, status_level int,
primary key (IDstatus_, IDcustomer),
constraint fr8 foreign key (IDcustomer) references customer(IDcustomer));