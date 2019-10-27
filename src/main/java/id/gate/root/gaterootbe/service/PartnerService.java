package id.gate.root.gaterootbe.service;


import id.gate.root.gaterootbe.data.dto.request.RequestPartnerDTO;
import org.springframework.http.ResponseEntity;

public interface PartnerService {

    ResponseEntity findAll();

    ResponseEntity save(RequestPartnerDTO requestPartnerDTO);

    ResponseEntity confirm(RequestPartnerDTO requestPartnerDTO);

    ResponseEntity update(RequestPartnerDTO requestPartnerDTO,Long id);

    ResponseEntity delete(Long id);

    ResponseEntity findById(Long id);

    ResponseEntity findByUserIdAndUserId(Long userId,Long partnerId );
}
