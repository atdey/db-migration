-- v1.0
create table PERSON
(
  ID int not null,
  NAME varchar(100) not null,
  STATUS int,
  PRIMARY KEY ( ID )
);

INSERT INTO PERSON (id, name, STATUS)
VALUES (1, 'Atish', 1),
       (2, 'Shashank', 0),
       (3, 'Swapnil', 1),
       (4, 'Arvind', 0),
       (5, 'Netrica', 1);