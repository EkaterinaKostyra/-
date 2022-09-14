create table club (IDclub int primary key, name_ text, address text, rukovoditel text, phone text);

create table dolzhnost (IDdolzhnost int primary key, name_ text);

create table sotrudniki (IDsotrudnika int, IDclub int, IDdolzhnost int, birth date, passport text, phone text,
address text, start_date date, firstname text, lastname text, grad text,
primary key (IDsotrudnika, IDclub, IDdolzhnost),
constraint fr1 foreign key (IDclub) references club(IDclub),
constraint fr2 foreign key (IDdolzhnost) references dolzhnost(IDdolzhnost));

create table customer (IDcustomer int primary key, birth date, passport text, phone text, firstname text, lastname text);

create table servise (IDservise int primary key, name_ text, visit_price text);

create table type_of_subs (IDtype_of_subs int primary key, name_ text, price_month text, price_year text);

create table subs (IDsubs int, IDcustomer int, IDtype_of_subs int, activation_ date, expiration_ date, condition_ text,
primary key (IDsubs, IDcustomer, IDtype_of_subs),
constraint fr3 foreign key (IDcustomer) references customer(IDcustomer),
constraint fr4 foreign key (IDtype_of_subs) references type_of_subs(IDtype_of_subs));

create table visit (IDvisit int, IDservise int, IDsotrudnika int, IDcustomer int, date_ date, time_ time,
primary key (IDvisit, IDservise, IDsotrudnika, IDcustomer),
constraint fr5 foreign key (IDcustomer) references customer(IDcustomer),
constraint fr6 foreign key (IDsotrudnika) references sotrudniki(IDsotrudnika),
constraint fr7 foreign key (IDservise) references servise(IDservise));