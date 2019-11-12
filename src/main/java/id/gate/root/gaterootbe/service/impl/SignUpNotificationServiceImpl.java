package id.gate.root.gaterootbe.service.impl;

import id.gate.root.gaterootbe.dao.SignupNotificationDAO;
import id.gate.root.gaterootbe.data.dto.request.RequestSignupNotificationDTO;
import id.gate.root.gaterootbe.data.json.ResponseData;
import id.gate.root.gaterootbe.data.json.ResponseSave;
import id.gate.root.gaterootbe.data.model.SignUpNotification;
import id.gate.root.gaterootbe.mapper.SignupNotificationMapper;
import id.gate.root.gaterootbe.service.SignupNotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SignUpNotificationServiceImpl implements SignupNotificationService {

    @Autowired
    private SignupNotificationMapper  signupNotificationMapper;

    @Autowired
    private SignupNotificationDAO signupNotificationDAO;

    @Override
    public ResponseEntity findAll() {
        List<SignUpNotification> signUpNotifications= signupNotificationDAO.select();
        return ResponseEntity.ok(new ResponseData(signUpNotifications.size(),"signup notification",signUpNotifications));
    }

    @Override
    public ResponseEntity save(RequestSignupNotificationDTO requestSignupNotificationDTO) {
        SignUpNotification signUpNotification = signupNotificationMapper.reverse(requestSignupNotificationDTO);
        signupNotificationDAO.save(signUpNotification);
        return ResponseEntity.ok(new ResponseSave(signUpNotification));
    }
}
