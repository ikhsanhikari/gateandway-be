package id.gate.root.gaterootbe.endpoint;

import id.gate.root.gaterootbe.data.dto.request.RequestGeneralNotificationDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/general_notifications")
public interface GeneralNotificationEndPoint {

    @GetMapping("")
    ResponseEntity findAll();

    @GetMapping("/{id}")
    ResponseEntity findById(@PathVariable("id")  Long id);

    @PostMapping("")
    ResponseEntity save(@RequestBody RequestGeneralNotificationDTO requestGeneralNotificationDTO);

    @DeleteMapping("/{id}")
    ResponseEntity delete(@PathVariable("id") Long id);

    @PatchMapping("/{id}")
    ResponseEntity update(@RequestBody RequestGeneralNotificationDTO requestGeneralNotificationDTO, @PathVariable("id") Long id);

    @GetMapping("/find/{id}")
    ResponseEntity findByUserId(Long userId);

    @GetMapping("/read/{id}")
    ResponseEntity readNotification(Long id);

    @GetMapping("/readAll/{id}")
    ResponseEntity readAllNotification(Long userId);

}
