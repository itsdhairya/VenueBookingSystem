
CREATE TABLE customer (
    customer_id          number NOT NULL primary key,
    first_name             VARCHAR2(20),
    last_name              VARCHAR2(20),
    Gender                 VARCHAR2(20),
    phone_number      NUMBER  
);

INSERT INTO customer VALUES ('21264','Werner','Nail','M','2233273');
INSERT INTO customer VALUES ('21265','Glady','Ballerini','F','2233274');
INSERT INTO customer VALUES ('21266','Jarvis','Mong','M','2233275');
INSERT INTO customer VALUES ('21267','Kareen','Willet','F','2233276');

select * from customer;

CREATE TABLE Booking (
    Booking_id          INTEGER NOT NULL primary key,
    Book_type             VARCHAR2(20),
    Book_date              VARCHAR2(20),
    Customer_id                   number  ,
    FOREIGN key(customer_id) references customer
);

INSERT INTO Booking VALUES ('31311','Third_Party','01/01/2018','21225');
INSERT INTO Booking VALUES ('31312','Direct','01/01/2018','21226');
INSERT INTO Booking VALUES ('31313','Direct','01/03/2018','21227');
INSERT INTO Booking VALUES ('31314','Third_Party','01/08/2018','21228');
INSERT INTO Booking VALUES ('31315','Third_Party','01/10/2018','21229');

select * from booking;

CREATE TABLE Reservation (
    Res_id          number NOT NULL primary key,
    check_in_date   Date,
    check_out_date  Date,
     No_of_days   number,
    Customer_id   number  ,
    Booking_id    INTEGER,
    FOREIGN key(customer_id) references customer,
    FOREIGN key(booking_id) references booking
);

INSERT INTO Reservation VALUES ('1046','09/17/2018','09/18/2018','1','21271','31356');
INSERT INTO Reservation VALUES ('1047','09/20/2018','09/22/2018','2','21272','31357');
INSERT INTO Reservation VALUES ('1048','09/23/2018','09/25/2018','2','21273','31358');
INSERT INTO Reservation VALUES ('1049','09/27/2018','09/29/2018','2','21274','31359');
INSERT INTO Reservation VALUES ('1050','09/29/2018','09/30/2018','1','21251','31360');

select * from reservation;
select check_out_date, customer_id from reservation;

CREATE TABLE venue (
    v_no         INTEGER NOT NULL ,
    v_type             varchar(20),
    No_of_occupants        number,
    v_price             number,
    Customer_id                   number  ,
    res_id                     number,
   
    FOREIGN key(customer_id) references Customer,
    FOREIGN key(res_id) references Reservation
);

INSERT INTO venue VALUES ('101','Standard','1','80','21225','1001');
INSERT INTO venue VALUES ('504','President','2','190','21226','1002');
INSERT INTO venue VALUES ('402','Executive','2','130','21227','1003');
INSERT INTO venue VALUES ('404','Executive','1','110','21228','1004');
INSERT INTO venue VALUES ('408','Executive','2','110','21229','1005');
INSERT INTO venue VALUES ('401','Executive','2','130','21230','1006');
INSERT INTO venue VALUES ('409','Executive','2','130','21231','1007');

Select * from venue;

CREATE TABLE Address (
    Street       varchar(30),
    City         varchar(30),
    State        varchar(30),
    Country      varchar(20),
    Customer_id  number  ,
    Zip_code     number,
    FOREIGN key(customer_id) references Customer
);
INSERT INTO Address VALUES ('22 Oak Street','San Diego','CA','US','21225','92123');
INSERT INTO Address VALUES ('22 Jump Street','Los Angeles','CA','US','21226','91123');
INSERT INTO Address VALUES ('31 Hill Avenue','San Francisco','CA','US','21227','95126');

select * from address;

create TABLE Invoice (
    Invoice_No         INTEGER NOT NULL primary key,
    Res_id           integer,
    customer_id     number,

    FOREIGN key(res_id) references reservation,
  
    FOREIGN key(customer_id) references Customer   
);
INSERT INTO Invoice VALUES ('2121','1001','21225');
INSERT INTO Invoice VALUES ('2122','1002','21226');
INSERT INTO Invoice VALUES ('2123','1003','21227');

select rs.cutomer_id ,
sum (()totalVenuecharges
()TotalServiceCharges )
from venue r ,reservation rs , services s
where r.customer_id = rs.customer_id and s.service_id= l.service_id

select count(customer_id)No_of_Customers, to_char(check_in_date, 'MM')Month
 from reservation group by to_char(check_in_date, 'MM')
 order by to_char(check_in_date, 'MM')asc;
 

--Dummy data
--INSERT INTO venue (v_id, v_name) VALUES (NULL, 'Room A'), (NULL, 'Room B'), (NULL, 'Room C');
