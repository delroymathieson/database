
drop table if exists Directs;
drop table if exists Acts;
drop table if exists Actors;
drop table if exists Directors;
drop table if exists Movies;



-- Actors --
create table Actors (
   aid char(4) not null,
   name text,
   address varchar,
   birthDate date,
   hairColor text,
   eyeColor text,
   height int,
   weight int,
   spouseName text,
   favColor text,
   screenActorsGuildAnniverseryDate varchar,
	primary key(aid)
);

-- Directors --
create table Directors (
    did char(4) not null,
    name text,
    address varchar,
    spouseName text,
    filmSchool text,
    directorsGuildAnniverseryDate varchar,
    favLensMaker text,
    primary key(did)
    );

-- Movies --
create table Movies (
    mid char(4) not null,
    name text,
    yearReleased int,
    MPAAnum int,
    domesticSales numeric(15,2),
    foreignSales numeric(15,2),
    dvdSales numeric(15,2),
    primary key(mid)
);

-- Acts --
create table Acts(
    roleNum char(4) not null,
    mid char(4) not null references movies(mid),
    aid char(4) not null references actors(aid),
    role text,
	primary key (roleNum));




-- Directs --
create table Directs(
    dirNum char(4) not null,
    mid char(4) not null references movies(mid),
    did char(4) not null references directors(did));



   
-- Actors data --
insert into Actors( aid, name, address, birthDate, hairColor, eyeColor, 
                  height, weight, spouseName, favColor, screenActorsGuildAnniverseryDate)
  values('a001', 'Roger Moore', '37 Lane, Howdy CA', '10/24/1927', 'Brown', 'Blue', 73, 175, 'Kristina Tholstrup ', 'black', '11/11'),
        ('a002', 'Cindy Cali', '76 Bound Two Road, Falling MN', '8/15/1964', 'Brown', 'Brown', 68, 175, 'Sam Smith', 'orange', '1/12'),
        ('a003', 'Jerry Peters', '55 Adam Street, NC', '4/21/1972', 'Brown', 'green', 60, 155, 'Becky Stang', 'red', '4/20'),
        ('a004', 'Brandon John', '1 Lave View Ave, BullDog PA', '7/2/1986', 'Brown', 'hazel', 62, 175, null, 'teal', '9/15'),
        ('a005', 'Henry Madison ', '15 Park Ave, New York NY', '2/11/1990', 'Black', 'Blue', 80, 225, Santa Maria, 'white', '7/7'),




-- Movies data --
insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m001', 'SAMDANG', 1965, 67493, 2383000000.00, 9847400000.00, 5439000000.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m002', 'Colt 45', 2002, 84792, 83829000.00, 8329842020.00, 832738200.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m003', 'Im Blu', 2006, 94383, 83289200.00, 283872230.00, 12984839.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m004', 'The Den', 2012, 93820, 8473992000.00, 817391930.00, 3719319900.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m005', 'James Cond', 1977, 48292, 5024587300.00, 8377291000.00, 8371938100.00);





-- Directors data --
insert into Directors(did, Name, Address, SpouseName, FilmSchool, DirectorsGuildAnniverseryDate, FavLensMaker)
  values('d001', 'Delroy Math', '18 St, Bronx NY', 'null', 'NYU', '11/11', 'Nikon'),
        ('d002', 'Cindy Cali', '76 Bound Two Road, Falling MN', 'null', 'School', 'Marist University', '6/6', 'Nikon'),
        ('d003', 'Sarah Jane', '544 Jane Street, Menphis TN', 'Jim Bob', 'Bobby Bollege ', '8/6', 'Canon'),
        ('d004', 'Nick Dylan', ' 65 Out Back Road, Connect CT', 'Ustil Martin ', 'Film College', '4/6', 'Canon'),
        ('d005', 'Garrett Smith', '22 Gartland Street, Poughkeepsie NY', 'Rhea Louis', ' TailGate University', '7/7', 'Nikon');




insert into Acts(roleNum, mid, aid, role)
  values('r001', 'm001', 'a009', 'Guy'),
        ('r002', 'm001', 'a010', 'Mr. Peter'),
        ('r003', 'm002', 'a001', 'Courage '),
        ('r004', 'm003', 'a006', 'Mike Will'),
        ('r005', 'm003', 'a007', 'Pierre '),




  insert into Directs(DirNum, did, mid)
    values('0001', 'd001', 'm002'),
          ('0002', 'd001', 'm010'),
          ('0003', 'd002', 'm001'),
          ('0004', 'd002', 'm009'),
          ('0005', 'd003', 'm003'),





--Directors wworking with Roger Moore--
SELECT aid, name
FROM actors
WHERE aid IN (SELECT aid
        FROM actors, directors
        WHERE aid = mid
        AND mid IN (SELECT mid
              FROM did, aid
              WHERE did = aid
              AND mid IN (SELECT mid
                          FROM movies, actors
                          WHERE mid = aid
                          AND aid IN (SELECT aid
                            FROM actors
                            WHERE name = 'Roger Moore'
                                                     )
                                                   )
                                                 )
                                               )
ORDER BY aid;

























