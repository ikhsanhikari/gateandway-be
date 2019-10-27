package id.gate.root.gaterootbe.service;

import id.gate.root.gaterootbe.data.dto.request.RequestPostDTO;
import org.springframework.http.ResponseEntity;

public interface PostService {

    ResponseEntity findAll();

    ResponseEntity findAllWithDetails(Long me);

    ResponseEntity save(RequestPostDTO requestPostDTO);

    ResponseEntity update(RequestPostDTO requestPostDTO,Long id);

    ResponseEntity delete(Long id);

    ResponseEntity findById(Long id);
}
