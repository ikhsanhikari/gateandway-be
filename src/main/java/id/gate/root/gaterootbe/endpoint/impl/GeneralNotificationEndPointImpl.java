package id.gate.root.gaterootbe.endpoint.impl;

import id.gate.root.gaterootbe.data.dto.request.RequestGeneralNotificationDTO;
import id.gate.root.gaterootbe.endpoint.GeneralNotificationEndPoint;
import id.gate.root.gaterootbe.service.GeneralNotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GeneralNotificationEndPointImpl implements GeneralNotificationEndPoint {

    @Autowired
    private GeneralNotificationService generalNotificationService;

    @Override
    public ResponseEntity findAll() {
        return generalNotificationService.findAll();
    }

    @Override
    public ResponseEntity findById(@PathVariable("id") Long id) {
        return generalNotificationService.findById(id);
    }

    @Override
    public ResponseEntity save(@RequestBody RequestGeneralNotificationDTO requestGeneralNotificationDTO) {
        return generalNotificationService.save(requestGeneralNotificationDTO);
    }

    @Override
    public ResponseEntity delete(@PathVariable("id") Long id) {
        return generalNotificationService.delete(id);
    }

    @Override
    public ResponseEntity update(@RequestBody RequestGeneralNotificationDTO requestGeneralNotificationDTO, @PathVariable("id") Long id) {
        return generalNotificationService.update(requestGeneralNotificationDTO,id);
    }

    @Override
    public ResponseEntity findByUserId(@PathVariable("id") Long userId) {
        return generalNotificationService.findByUserId(userId);
    }

    @Override
    public ResponseEntity readNotification(@PathVariable("id") Long id) {
        return generalNotificationService.readNotification(id);
    }

    @Override
    public ResponseEntity readAllNotification(@PathVariable("id") Long userId) {
        return generalNotificationService.readAllNotification(userId);
    }
}
