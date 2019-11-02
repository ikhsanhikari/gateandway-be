package id.gate.root.gaterootbe.service;

import id.gate.root.gaterootbe.data.dto.request.RequestGeneralNotificationDTO;
import org.springframework.http.ResponseEntity;

public interface GeneralNotificationService {

    ResponseEntity findAll();

    ResponseEntity save(RequestGeneralNotificationDTO requestGeneralNotificationDTO);

    ResponseEntity update(RequestGeneralNotificationDTO requestGeneralNotificationDTO,Long id);

    ResponseEntity delete(Long id);

    ResponseEntity findById(Long id);

    ResponseEntity findByUserId(Long userId);

    ResponseEntity readNotification(Long id);

    ResponseEntity readAllNotification(Long userId);



}
