drop database if exists farmersmarkets;
create database farmersmarkets;
use farmersmarkets;

CREATE TABLE Farmers_Markets (
	fmid integer primary key,
    market_name varchar(100) not null,
    website varchar(100),
    locationid integer
);

CREATE TABLE Locations (
	locationid integer primary key,
    street varchar(30),
    stateid integer,
    zipid integer,
    cityid integer,
    FOREIGN KEY (locationid) REFERENCES Farmers_Markets(locationid)
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