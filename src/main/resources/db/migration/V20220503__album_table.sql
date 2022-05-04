CREATE TABLE ARTIST (
    ID VARCHAR(36 CHAR) NOT NULL PRIMARY KEY,
    NAME VARCHAR(256 CHAR) NOT NULL,
    DESCRIPTION VARCHAR(4000 CHAR) NOT NULL
);

CREATE TABLE ALBUM (
    ID VARCHAR(36 CHAR) NOT NULL,
    NAME VARCHAR(256 CHAR) NOT NULL,
    RELEASE_DATE DATE NOT NULL,
    ARTIST_ID VARCHAR(36 CHAR) NOT NULL,

    CONSTRAINT FK_ALBUM_ARTIST FOREIGN KEY (ARTIST_ID) REFERENCES ARTIST(ID)
);

CREATE TABLE TRACK (
    ID VARCHAR(36 CHAR) NOT NULL,
    NAME VARCHAR(256 CHAR),
    ALBUM_ID VARCHAR(36 CHAR) NOT NULL,
    DURATION_IN_SECONDS INTEGER NOT NULL,
    TRACK_NUMBER INTEGER NOT NULL,

    CONSTRAINT TRACK_ALBUM FOREIGN KEY (ALBUM_ID) REFERENCES ALBUM(ID)
);



INSERT INTO ARTIST (ID, NAME, DESCRIPTION) VALUES ('1', 'Caliban', 'Caliban was formed in Essen, Germany in 1997 as Never Again.[2] In the beginning, the band consisted of vocalists Andreas Dörner and Marc Ulfig, guitarists Björn Kaiser and Marc Görtz, bassist Engin Güres and drummer Kai Kogelheide.[3] With this lineup, a self-titled demo was recorded.[3] After six months of playing together and several member changes – Ulfig, Kaiser and Kogelheide left, the latter were replaced by Claus Wilgenbusch and Robert Krämer – the band recorded two songs for a demo, which was never released. The songs were sent to several record labels, and Lifeforce Records was the first to offer the band – by then called Caliban – a record deal. Caliban''s first self-titled EP came out in the summer of 1998. To promote it, the band played many shows all over Europe and a few support shows for bands including Morning Again, Earth Crisis and Cro-Mags. After their European tour in 1999, Caliban entered the studio to record their first full-length entitled A Small Boy and a Grey Heaven. The CD received favorable reviews in many big magazines and many smaller hardcore and metal zines. They also released the first part of a split-CD with Heaven Shall Burn, named The Split Program. Vent came out in April 2001. Vent was released by Imperium Records and by Howling-Bull Records in Japan. Shortly after the release, Caliban was offered the opportunity to tour Japan to play the Beast-Feast 2001 in the Yokohama Arena, sharing stage with bands including Slayer, Pantera, Machine Head, Biohazard and Morbid Angel. The Japan trip was followed by a U.S. tour with Bloodjinn, which was interrupted by the September 11 attacks. In August 2002, Caliban recorded their third official release Shadow Hearts. This record was more melodic and harmonic than its predecessors. In 2004 the band got a record deal with Roadrunner Records in Europe (Abacus Recordings in the US) and started to record their fourth album, The Opposite from Within, alongside producer Anders Fridén, who is known for fronting In Flames. In July 2005, the band released the second part of their split-CD with their friends from Heaven Shall Burn, called The Split Program II. The band released their fifth album called The Undying Darkness in February 2006 and toured with All Shall Perish, Bleeding Through and I Killed the Prom Queen for the "Darkness over Europe" tour.');
INSERT INTO ALBUM (ID, NAME, RELEASE_DATE, ARTIST_ID) VALUES ('1', 'Dystopia', '2022-04-22', '1');
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('1', 'Dystopia', '1', 264, 1);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('2', 'Ascent of the Blessed', '1', 250, 2);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('3', 'VirUS', '1', 235, 3);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('4', 'Phantom Pain', '1', 243, 4);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('5', 'Alien', '1', 214, 5);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('6', 'sWords', '1', 230, 6);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('7', 'Darkness I Became', '1', 240, 7);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('8', 'Dragon', '1', 205, 8);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('9', 'Hibernate', '1', 258, 9);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('10', 'mOther', '1', 247, 10);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('11', 'The World Breaks Everyone', '1', 242, 11);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('12', 'D I V I D E D', '1', 248, 12);

INSERT INTO ARTIST (ID, NAME, DESCRIPTION) VALUES ('2', 'Mastodon', 'Mastodon is an American heavy metal band from Atlanta, Georgia. Formed in 2000, the band''s lineup of Troy Sanders (bass/vocals), Brent Hinds (lead guitar/vocals), Bill Kelliher (rhythm guitar/backing vocals), and Brann Dailor (drums/vocals) has remained the same since the release of their first EP in 2001. Mastodon has released eight studio albums, as well as a number of other releases. The band''s 2002 debut album, Remission, garnered significant critical acclaim for its unique sound.[1] Mastodon''s second full-length release, Leviathan, is a concept album based on the novel Moby-Dick by Herman Melville. Three magazines awarded the record Album of the Year in 2004: Revolver, Kerrang! and Terrorizer. The song "Colony of Birchmen" from the band''s third album (released in 2006), Blood Mountain, was nominated for a Grammy Award for Best Metal Performance in 2007. Blood Mountain was followed in 2009 by Crack the Skye, and in 2011 by The Hunter, which debuted at No. 10 on the Billboard 200 chart and achieved major commercial success in the United States. The Hunter features the song "Curl of the Burl", which was nominated for a Grammy for Best Hard Rock/Metal Performance in 2012. Mastodon''s 2014 album, Once More ''Round the Sun, peaked at No. 6 on the Billboard 200 chart[2] and features the band''s third Grammy-nominated song, "High Road". The band''s seventh album, Emperor of Sand, was released on March 31, 2017, and features the band''s most commercially successful song to date, "Show Yourself", which peaked at No. 4 on the US Billboard Mainstream Rock Songs chart in June 2017. The followup single, "Steambreather", peaked at number 18 on the same chart in October 2017. The album''s opening track, "Sultan''s Curse", earned the band their first Grammy award.[3] Emperor of Sand was the band''s first album to receive a Grammy nomination; it was nominated for Best Rock Album. Mastodon''s eighth album Hushed and Grim was released on October 29, 2021.');
INSERT INTO ALBUM (ID, NAME, RELEASE_DATE, ARTIST_ID) VALUES ('2', 'Leviathan', '2004-08-31', '2');
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('101', 'Blood and Thunder', '2', 229, 1);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('102', 'I Am Ahab', '2', 166, 2);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('103', 'Seabeast', '2', 255, 3);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('104', 'Island', '2', 206, 4);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('105', 'Iron Tusk', '2', 183, 5);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('106', 'Megalodon', '2', 263, 6);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('107', 'Naked Burn', '2', 222, 7);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('108', 'Aqua Dementia', '2', 250, 8);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('109', 'Hearts Alive', '2', 820, 9);
INSERT INTO TRACK (ID, NAME, ALBUM_ID, DURATION_IN_SECONDS, TRACK_NUMBER) VALUES ('110', 'Joseph Merrick', '2', 213, 10);