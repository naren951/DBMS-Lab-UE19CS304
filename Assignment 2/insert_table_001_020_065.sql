-- \c movie_ratings

insert into genre values(1,'Action');
insert into genre values(2,'Thriller');
insert into genre values(3,'Romance');
insert into genre values(4,'Drama');
insert into genre values(5,'Comedy');
insert into genre values(6,'Horror');
insert into genre values(7,'Animation');
insert into genre values(8,'Documentary');

insert into lang values(1,'English');
insert into lang values(2,'Hindi');
insert into lang values(3,'Tamil');
insert into lang values(4,'Kannada');
insert into lang values(5,'Telugu');
insert into lang values(6,'Malayalam');

insert into Actor values('Yash',1);
insert into Actor values('Vijay',2);
insert into Actor values('Rakshit Shetty',3);
insert into Actor values('Vijay Devarakonda',4);
insert into Actor values('Mohanlal',5);
insert into Actor values('Aamir Khan',6);
insert into Actor values('Amol Palekar',7);
insert into Actor values('Sai Pallavi',8);

insert into Director values('Prashanth Neel',1, 'KGF');
insert into Director values('Lokesh Kanagaraj',2, 'Mater');
insert into Director values('Rakshit Shetty',3, 'Ulidaavaru Kandanthe');
insert into Director values('Sandeep Reddy Vanga',4, 'Arjun Reddy');
insert into Director values('Jeethu Joseph',5, 'Dhrishyam');
insert into Director values('Rajkumar Hirani',6, 'PK');
insert into Director values('Hrishikesh Mukherjee',7, 'Golmaal');
insert into Director values('Alphonse Puthren',8,'Premam');

insert into Songs values('Dhira dhira', 1);
insert into Songs values('Kakig banna kantha', 2);
insert into Songs values('Chaar kadham', 3);

INSERT into ProductionHouse  values(1, 'Satya Pictures'); -- ulidavru...
INSERT into ProductionHouse  values(2, 'Hombale Films'); -- KGF
INSERT into ProductionHouse  values(3, 'XB Film Creators'); -- master
INSERT into ProductionHouse  values(4, 'Bhadrakali Pictures'); -- arjun reddy
INSERT into ProductionHouse  values(5, 'Aashirvad Cinemas'); -- dhrishyam
INSERT into ProductionHouse  values(6, 'Vinod Chopra Film'); -- PK
INSERT into ProductionHouse  values(7, 'Shree Ashtavinayak'); -- golmaal
INSERT into ProductionHouse  values(8, 'Anwar Rasheed Entertainments'); -- premam


insert into movie values(1,'KGF','2018-12-21',null,4,1,1,1,2,1); --Action
insert into movie values(2,'Master','2021-01-13',null,3,2,2,2,3,null); --Thriller
insert into movie values(3,'Ulidaavaru Kandanthe','2014-03-28',null,4,2,3,3,1,2); --Crime
insert into movie values(4,'Arjun Reddy','2017-08-27',null,5,3,4,4,4,null); -- Romance
insert into movie values(5,'Dhrishyam','2013-12-19',null,6,4,5,5,5,null); -- Drama
insert into movie values(6,'PK','2018-12-21',null,2,5,6,6,6,3); -- Comedy
insert into movie values(7,'Golmaal','1979-04-20',null,2,5,7,7,7,null); -- Comedy
insert into movie values(8,'Premam','2015-05-29',null,6,3,8,8,8,null); -- Romance
