package net.javahippie.sqlmapping.album.web;

import net.javahippie.sqlmapping.album.db.Album;

import java.time.LocalDate;
import java.util.Objects;

public class AlbumDto implements Album {

    private final String id;

    private final String name;

    private final LocalDate releaseDate;

    private final String artist;

    private final Integer totalPlayTime;

    private final Integer numberOfTracks;

    public AlbumDto(String id, String name, LocalDate releaseDate, String artist, Integer totalPlayTime, Integer numberOfTracks) {
        this.id = id;
        this.name = name;
        this.releaseDate = releaseDate;
        this.artist = artist;
        this.totalPlayTime = totalPlayTime;
        this.numberOfTracks = numberOfTracks;
    }

    @Override
    public String getName() {
        return name;
    }


    @Override
    public LocalDate getReleaseDate() {
        return releaseDate;
    }

    @Override
    public String getArtist() {
        return artist;
    }

    @Override
    public Integer getTotalPlayTime() {
        return totalPlayTime;
    }

    @Override
    public Integer getNumberOfTracks() {
        return numberOfTracks;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AlbumDto albumDto = (AlbumDto) o;
        return id.equals(albumDto.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }


}

