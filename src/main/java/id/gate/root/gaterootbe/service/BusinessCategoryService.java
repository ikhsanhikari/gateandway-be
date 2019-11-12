package id.gate.root.gaterootbe.service;


import id.gate.root.gaterootbe.data.dto.request.RequestBusinessCategoryDTO;
import org.springframework.http.ResponseEntity;

public interface BusinessCategoryService {

    ResponseEntity findAll();

    ResponseEntity save(RequestBusinessCategoryDTO requestBusinessCategoryDTO);

    ResponseEntity update(RequestBusinessCategoryDTO requestBusinessCategoryDTO,Long id);

    ResponseEntity delete(Long id);

    ResponseEntity findById(Long id);

}
