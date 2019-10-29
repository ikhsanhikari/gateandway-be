package id.gate.root.gaterootbe.service;


import id.gate.root.gaterootbe.data.dto.request.RequestFirstCommentDTO;
import org.springframework.http.ResponseEntity;

public interface FirstCommentService {

    ResponseEntity findAll();

    ResponseEntity save(RequestFirstCommentDTO requestFirstCommentDTO);

    ResponseEntity update(RequestFirstCommentDTO requestFirstCommentDTO,Long id);

    ResponseEntity delete(Long id);

    ResponseEntity findById(Long id);

}
