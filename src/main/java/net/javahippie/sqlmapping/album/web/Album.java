package net.javahippie.sqlmapping.album.web;

import java.time.LocalDate;

public interface Album {

    String getName();

    LocalDate getReleaseDate();

    String getArtist();

    Integer getTotalPlayTime();

    Integer getNumberOfTracks();
}
