package id.gate.root.gaterootbe.mapper;

import id.gate.root.gaterootbe.data.dto.request.RequestSignupNotificationDTO;
import id.gate.root.gaterootbe.data.model.SignUpNotification;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class SignupNotificationMapper implements BaseMapper<SignUpNotification, RequestSignupNotificationDTO>{
    @Override
    public SignUpNotification reverse(RequestSignupNotificationDTO source) {
        SignUpNotification result  = new SignUpNotification();
        result.setCreatedAt(new Date());
        result.setMessage(source.getMessage());
        result.setUsername(source.getUsername());
        result.setStatus(1);
        result.setUpdateAt(new Date());
        return result;
    }
}
