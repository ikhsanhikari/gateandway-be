package id.gate.root.gaterootbe.endpoint.impl;

import id.gate.root.gaterootbe.data.dto.request.RequestSignupNotificationDTO;
import id.gate.root.gaterootbe.endpoint.SignupNotificationEndPoint;
import id.gate.root.gaterootbe.service.SignupNotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SignupNotificationEEndPointImpl implements SignupNotificationEndPoint {

    @Autowired
    private SignupNotificationService signupNotificationService;

    @Override
    public ResponseEntity findAll() {
        return signupNotificationService.findAll();
    }

    @Override
    public ResponseEntity save(@RequestBody RequestSignupNotificationDTO requestSignupNotificationDTO) {
        return signupNotificationService.save(requestSignupNotificationDTO);
    }
}
