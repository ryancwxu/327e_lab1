drop database if exists farmersmarkets;
create database farmersmarkets;
use farmersmarkets;

CREATE TABLE Farmers_Markets (
	fmid integer not null primary key,
    market_name varchar(100) not null,
    website varchar(100) not null,
    locationid integer unique not null
);

CREATE TABLE Locations (
	locationid integer auto_increment not null primary key,
    street varchar(30) not null,
    stateid integer UNIQUE not null,
    zipid integer UNIQUE not null,
    cityid integer UNIQUE not null,
    foreign key (locationid) REFERENCES Farmers_Markets(locationid)
);

CREATE TABLE States (
	stateid integer AUTO_INCREMENT primary key,
    statename varchar(20),
    foreign key (stateid) references Locations(stateid)
);

CREATE TABLE Zips (
	zipid integer AUTO_INCREMENT primary key,
    zipcode integer,
    foreign key (zipid) references Locations(zipid)
);

CREATE TABLE Cities (
	cityid integer AUTO_INCREMENT primary key,
    cityname varchar(25),
    foreign key (cityid) references Locations(cityid)
);