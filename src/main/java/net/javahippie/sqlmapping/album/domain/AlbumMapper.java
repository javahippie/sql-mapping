package net.javahippie.sqlmapping.album.domain;

import net.javahippie.sqlmapping.album.db.AlbumEntity;
import net.javahippie.sqlmapping.album.db.TrackEntity;
import net.javahippie.sqlmapping.album.web.AlbumDto;
import org.springframework.stereotype.Component;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class AlbumMapper {

    public List<AlbumDto> toDtos(List<AlbumEntity> albums) {
        return albums.stream().map(this::toDto).collect(Collectors.toList());
    }

    public AlbumDto toDto(AlbumEntity entity) {

        return new AlbumDto(
                entity.getId(),
                entity.getName(),
                entity.getReleaseDate(),
                entity.getArtist().getName(),
                summarizePlayTime(entity.getTracks()),
                entity.getTracks().size());
    }

    private Integer summarizePlayTime(List<TrackEntity> tracks) {
        return tracks.stream()
                .sorted(Comparator.comparing(TrackEntity::getTrackNumber))
                .mapToInt(TrackEntity::getDurationInSeconds)
                .sum();
    }

}
