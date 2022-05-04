package net.javahippie.sqlmapping.album.domain;

import net.javahippie.sqlmapping.album.db.AlbumEntity;
import net.javahippie.sqlmapping.album.db.AlbumRepository;
import net.javahippie.sqlmapping.album.web.AlbumDto;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class AlbumService {

    private AlbumRepository repository;

    private AlbumMapper mapper;

    public AlbumService(AlbumRepository repository, AlbumMapper mapper) {
        this.repository = repository;
        this.mapper = mapper;
    }

    public Optional<AlbumDto> findAlbumById(String id) {
        return repository.findById(id).map(mapper::toDto);
    }

    public List<AlbumDto> findAll() {
        findAllSorted();
        return mapper.toDtos(repository.findAll());
    }

    public List<AlbumEntity> findAllSorted() {
        return repository.findAll()
                .stream()
                .sorted(Comparator.comparing(AlbumEntity::getReleaseDate))
                .collect(Collectors.toList());
    }
}
