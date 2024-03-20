-- ============================================================
--   Database name:  ORACLE.CS.ARIZONA.EDU                                  
--   DBMS name:      ORACLE Version 11g                          
--   Last modified on:     1/23/2013                         
-- ============================================================

-- ============================================================
--   Table: MOVIE                                              
-- ============================================================
create table MOVIE
(
    MOVIEID INTEGER                not null,
    TITLE   VARCHAR2(70)           not null,
    YEAR    NUMBER(4)              not null,
    SCORE   FLOAT                  null    ,
    VOTES   INTEGER                null    ,
    constraint PK_MOVIE primary key (MOVIEID)
)
/

-- ============================================================
--   Table: ACTOR                                              
-- ============================================================
create table ACTOR
(
    ACTORID INTEGER                not null,
    NAME    VARCHAR2(35)           not null,
    constraint PK_ACTOR primary key (ACTORID)
)
/

-- ============================================================
--   Table: CASTING                                            
-- ============================================================
create table CASTING
(
    MOVIEID  INTEGER                not null,
    ACTORID  INTEGER                not null,
    ORDINAL  INTEGER                null    ,
    constraint PK_CASTING primary key (MOVIEID, ACTORID)
)
/

-- ============================================================
--   Index: APPEARS_IN_FK                                      
-- ============================================================
create index APPEARS_IN_FK on CASTING (MOVIEID asc)
/

-- ============================================================
--   Index: STARS_FK                                           
-- ============================================================
create index STARS_FK on CASTING (ACTORID asc)
/

alter table CASTING
    add constraint FK_CASTING_APPEARS_IN_MOVIE foreign key  (MOVIEID)
       references MOVIE (MOVIEID)
/

alter table CASTING
    add constraint FK_CASTING_STARS_ACTOR foreign key  (ACTORID)
       references ACTOR (ACTORID)
/

