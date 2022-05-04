package net.javahippie.sqlmapping.album.db;

import net.javahippie.sqlmapping.album.web.Album;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AlbumRepository extends JpaRepository<AlbumEntity, String> {

    @Query(value = """
                   SELECT album.id, 
                          album.name, 
                          album.release_date as releaseDate, 
                          artist.name as artist,  
                          sum(track.duration_in_seconds) as totalPlayTime,
                          count(track.id) as numberOfTracks
                   FROM album
                   LEFT JOIN artist
                      ON artist.id = album.artist_id
                   LEFT JOIN track
                      ON album.id = track.album_id
                   WHERE album.id = :album_id
                   GROUP BY album.id, album.name, album.release_date, artist.name
                   """, nativeQuery = true)
    Optional<Album> findAlbumSummaryById(@Param("album_id") String id);

    @Query(value = """
                   SELECT album.id, 
                          album.name, 
                          album.release_date as releaseDate, 
                          artist.name as artist,  
                          sum(track.duration_in_seconds) as totalPlayTime,
                          count(track.id) as numberOfTracks
                   FROM album
                   LEFT JOIN artist
                      ON artist.id = album.artist_id
                   LEFT JOIN track
                      ON album.id = track.album_id
                   GROUP BY album.id, album.name, album.release_date, artist.name
                   """, nativeQuery = true)
    List<Album> findAlbumSummaries();

}
