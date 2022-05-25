package net.javahippie.sqlmapping.album.db;

import java.time.LocalDate;

public interface Album {

    String getName();

    LocalDate getReleaseDate();

    String getArtist();

    Integer getTotalPlayTime();

    Integer getNumberOfTracks();
}
