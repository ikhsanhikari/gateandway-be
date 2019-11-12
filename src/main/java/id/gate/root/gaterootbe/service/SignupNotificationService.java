package id.gate.root.gaterootbe.service;


import id.gate.root.gaterootbe.data.dto.request.RequestSignupNotificationDTO;
import org.springframework.http.ResponseEntity;

public interface SignupNotificationService {

    ResponseEntity findAll();

    ResponseEntity save(RequestSignupNotificationDTO requestSignupNotificationDTO);
}
