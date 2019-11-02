package id.gate.root.gaterootbe.mapper;

import id.gate.root.gaterootbe.data.dto.request.RequestGeneralNotificationDTO;
import id.gate.root.gaterootbe.data.model.GeneralNotification;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class GeneralNotificationMapper implements BaseMapper<GeneralNotification, RequestGeneralNotificationDTO>{
    @Override
    public GeneralNotification reverse(RequestGeneralNotificationDTO source) {
        GeneralNotification result  = new GeneralNotification();
        result.setIsRead(false);
        result.setCreatedAt(new Date());
        result.setMessage(source.getMessage());
        result.setStatus(1);
        result.setUpdateAt(new Date());
        result.setUserId(source.getUserId());
        return result;
    }
}
