package id.gate.root.gaterootbe.service;

import id.gate.root.gaterootbe.data.dto.request.RequestUserDTO;
import org.springframework.http.ResponseEntity;

public interface UserService {

    ResponseEntity findAll();

    ResponseEntity save(RequestUserDTO requestUserDTO);

    ResponseEntity update(RequestUserDTO requestUserDTO,Long id);

    ResponseEntity delete(Long id);

    ResponseEntity findById(Long id);

    ResponseEntity findByUsername(String username);

    ResponseEntity findByEmailAndPassword(String username,String password);

    ResponseEntity findByAllPartner(Long userId);

    ResponseEntity findByAllPartnerNotConfirmYet(Long userId);

    ResponseEntity findRequestPartner(Long partnerId);

    ResponseEntity findUserByLastNameOrFirstName(String search);

    ResponseEntity findAllSearch();


}
