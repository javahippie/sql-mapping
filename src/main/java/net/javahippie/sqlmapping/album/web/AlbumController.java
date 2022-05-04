package net.javahippie.sqlmapping.album.web;

import net.javahippie.sqlmapping.album.db.AlbumRepository;
import net.javahippie.sqlmapping.album.domain.AlbumService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class AlbumController {

    private final AlbumRepository repository;

    private final AlbumService service;

    public AlbumController(AlbumRepository repository, AlbumService service) {
        this.repository = repository;
        this.service = service;
    }

    @GetMapping("/api/v1/album/{id}")
    public ResponseEntity findByIdv1(@PathVariable("id") String id) {
        return service.findAlbumById(id)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @GetMapping("/api/v1/album")
    public ResponseEntity findv1() {
        return ResponseEntity.ok(service.findAll());
    }

    @GetMapping("/api/v2/album/{id}")
    public ResponseEntity findByIdv2(@PathVariable("id") String id) {
        return repository.findAlbumSummaryById(id)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @GetMapping("/api/v2/album")
    public ResponseEntity findv2() {
        return ResponseEntity.ok(repository.findAlbumSummaries());
    }

}