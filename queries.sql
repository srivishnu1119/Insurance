create table user_role(username varchar2(20) primary key,password varchar2(12),rolecode varchar2(10));

insert into user_role values('Venbatch123','Ven@123','USER000');
insert into user_role values('Venu@131','Venu$123','USER000');
insert into user_role values('Peethi@764','Peeth45','USER000');
insert into user_role values('Asha@234','Asha&12','USER000');
insert into user_role values('Vig@123','vigesh33','AGENT000');
insert into user_role values('Janu@178','Jan$222','AGENT000');
insert into user_role values('Rajesh@123','Raj#897','ADMIN000');


create table account(accountnumber number(10) primary key,Insuredname varchar2(30),insuredstreet varchar2(40),insuredcity varchar2(15),insuredstate varchar2(15),insuredzip number(5),businesssegment varchar(30),username varchar2(20) references user_role(username));
insert into account1 values(6789456112,'srivishnu','guntur','Guntur','andhra pradesh','52200','life insurance','Venbatch123');
insert into account1 values(8879456121,'venu gopal','Kadapa','Kadapa','andhra pradesh','54001','Gold','Venu@131');
insert into account1 values(9787845612,'preethi tanmayi','amalapuram','amalapuram','andhra pradesh','56051','Home','Peethi@764');
insert into account1 values(7458961241,'anusha','odisha','odisha','odisha','76051','Bussiness','Asha@234');
insert into account1 values(7895641244,'venu gopal','Kadapa','Kadapa','andhra pradesh','54001','Home','Venu@131');

create table policy1(policynumber number(10) primary key,policypremium float(8),accountnumber number(10) references account(accountnumber));
insert into policy1 values(2019000011,100000.00,6789456112);
insert into policy1 values(2019000012,10000000.00,8879456121);
insert into policy1 values(2019000013,1000000.00,9787845612);
insert into policy1 values(2019000014,10000000.00,7458961241);
insert into policy1 values(2019000015,5000000.00,7895641244);

create table  policy_details(policynumber number(10) references policy(policynumber),questionId varchar2(15),answer varchar2(30));

create table claim(claimnumber number(10) primary key,claimreason varchar2(30),accidentlocationstreet varchar2(40),accidentcity varchar2(15),accidentstate varchar2(15),accidentzip number(6),claimtype varchar2(30),policynumber number(10) references policy(policynumber));


create table question(questionid varchar2(5) primary key,question varchar2(40));

SQL> insert into question values('1.1','Is it your own property');

1 row created.

SQL> insert into question values('1.2','Is it earthquake prone area');

1 row created.

SQL> insert into question values('1.3','Are you able to pay for rebuilding');

1 row created.

SQL> insert into question values('1.4','Do you have any Personal insurance');

1 row created.

SQL> insert into question values('1.5','Did pay insurance for this reason');

1 row created.

SQL> insert into question values('2.1','Is it a cyclone prone area ?');

1 row created.

SQL> insert into question values('2.2','Is property own or leased ?');

1 row created.

SQL> insert into question values('2.3','Were any one is in the affected area');

1 row created.

SQL> insert into question values('2.4','Impact of cyclone is High?');

1 row created.

SQL> insert into question values('2.5','Did pay insurance for this reason');

1 row created.

SQL> insert into question values('3.1','Are the wiring are shock proof ?');

1 row created.

SQL> insert into question values('3.2','Are fire extingusher are present ?');

1 row created.

SQL> insert into question values('3.3','Did any one affected due to accident ?');

1 row created.

SQL> insert into question values('3.4','Are sprinklers present in the buliding ?');

1 row created.

SQL> insert into question values('3.5','Did pay insurance for this reason ?^S');

1 row created.

SQL> insert into question values('4.1','Did pay insurance for this reason ?');

1 row created.

SQL> insert into question values('4.2','The impact of accident is high?');

1 row created.

SQL> insert into question values('4.3','Any loss of organs?');

1 row created.

SQL> insert into question values('4.4','Accident done by heavy load?');

1 row created.

SQL> insert into question values('4.5','Is the victim alive ?');

1 row created.

SQL> insert into question values('5.1','Lost property is your own ?');

1 row created.

SQL> insert into question values('5.2','Is the area having risk of robbery?');

1 row created.

SQL> insert into question values('5.3','Are the lost thing is too expensive');

1 row created.

SQL> insert into question values('5.4','Are you there when the robbery happened?');

1 row created.

SQL> insert into question values('5.5','Did pay insurance for this reason ?');

1 row created.

create table agent(agentid varchar2(20),userid varchar2(20));