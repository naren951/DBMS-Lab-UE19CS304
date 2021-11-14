-- drop database movie_ratings;
--create database movie_ratings;
-- \c movie_ratings
create table genre
(
    g_id INT not null, 
    gen_name varchar not null,
    primary key (g_id)
);

create table users
(
    u_id INT not null, 
    username varchar(30) not null ,
    email varchar(50) not null, 
    passwd varchar(30) not null, 
    u_role varchar(15) not null,
    u_ratings varchar,
    UNIQUE (username),
    primary key (u_id)
);


CREATE TABLE    Lang
(	l_id INT NOT NULL,
	lang_name VARCHAR(20) NOT NULL ,
	PRIMARY KEY (l_id)
);

CREATE TABLE    Songs
(	song_name VARCHAR(50),
	s_id INT ,
	PRIMARY KEY (s_id)
);

CREATE TABLE    Actor
(	actor_name VARCHAR(50) NOT NULL ,
	a_id INT NOT NULL,
	PRIMARY KEY (a_id)
);

CREATE TABLE    Director
(	dir_name VARCHAR(50) NOT NULL ,
	d_id INT NOT NULL,
    movies VARCHAR(50) NOT NULL,
	PRIMARY KEY (d_id)
);

CREATE TABLE ProductionHouse
(	
	P_id INT NOT NULL,
	Fname VARCHAR(50) NOT NULL,
	PRIMARY KEY (P_id),
	UNIQUE (Fname)    
);

CREATE TABLE Movie
(
	M_id INT NOT NULL,
	Movie_Name VARCHAR(35) NOT NULL,
	R_Date DATE,
	Rating DECIMAL(1,1),
	PRIMARY KEY (M_id),
	UNIQUE (Movie_Name),
	Lang_Id INT NOT NULL,
	GenrId INT NOT NULL,
	ActorId INT NOT NULL,
	DirId INT NOT NULL,
	ProdId INT NOT NULL,
	Songid INT,
	FOREIGN KEY (Lang_Id) REFERENCES Lang(l_id),
	FOREIGN KEY (GenrId) REFERENCES genre(g_id)	,
	FOREIGN KEY (ActorId) REFERENCES Actor(a_id),
	FOREIGN KEY (SongId) REFERENCES Songs(s_id),
	FOREIGN KEY (DirId) REFERENCES Director(d_id),
	FOREIGN KEY (ProdId) REFERENCES ProductionHouse(P_id)
);