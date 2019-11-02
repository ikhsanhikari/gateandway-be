package id.gate.root.gaterootbe.service.impl;

import id.gate.root.gaterootbe.dao.GeneralNotificationDAO;
import id.gate.root.gaterootbe.data.dto.request.RequestGeneralNotificationDTO;
import id.gate.root.gaterootbe.data.json.*;
import id.gate.root.gaterootbe.data.model.GeneralNotification;
import id.gate.root.gaterootbe.mapper.GeneralNotificationMapper;
import id.gate.root.gaterootbe.service.GeneralNotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class GeneralNotificationServiceImpl implements GeneralNotificationService {

    @Autowired
    private GeneralNotificationDAO generalNotificationDAO;

    @Autowired
    private GeneralNotificationMapper generalNotificationMapper;

    @Override
    public ResponseEntity findAll() {
        List<GeneralNotification> generalNotifications= generalNotificationDAO.select();
        return ResponseEntity.ok(new ResponseData(generalNotifications.size(),"general notification",generalNotifications));
    }

    @Override
    public ResponseEntity save(RequestGeneralNotificationDTO requestGeneralNotificationDTO) {
        GeneralNotification generalNotification = generalNotificationMapper.reverse(requestGeneralNotificationDTO);
        generalNotificationDAO.save(generalNotification);
        return ResponseEntity.ok(new ResponseSave(generalNotification));
    }

    @Override
    public ResponseEntity update(RequestGeneralNotificationDTO requestGeneralNotificationDTO, Long id) {
        GeneralNotification generalNotification = generalNotificationMapper.reverse(requestGeneralNotificationDTO);

        GeneralNotification cek = generalNotificationDAO.get(id);

        if(cek==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("General Notification not found"));
        }

        generalNotification.setId(id);
        generalNotification.setUpdateAt(new Date());

        generalNotificationDAO.save(generalNotification);
        return ResponseEntity.ok(new ResponseUpdate(generalNotification));
    }

    @Override
    public ResponseEntity delete(Long id) {
        GeneralNotification generalNotification = generalNotificationDAO.get(id);

        if(generalNotification==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("General Notification not found"));
        }

        generalNotification.setStatus(0);
        generalNotification.setDeleteAt(new Date());

        generalNotificationDAO.save(generalNotification);
        return ResponseEntity.ok(new ResponseDelete(generalNotification));
    }

    @Override
    public ResponseEntity findById(Long id) {
        GeneralNotification generalNotification = generalNotificationDAO.get(id);
        if(generalNotification==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("General Notification not found"));
        }
        return ResponseEntity.ok(new ResponseData(1,"General Notification",generalNotification));
    }

    @Override
    public ResponseEntity findByUserId(Long userId) {
        List<GeneralNotification> generalNotification = generalNotificationDAO.findByUserId(userId);
        if(generalNotification.size()<0){
            return ResponseEntity.badRequest().body(new ResponseMessage("General Notification not found"));
        }
        return ResponseEntity.ok(new ResponseData(generalNotification.size(),"General Notification",generalNotification));
    }

    @Override
    public ResponseEntity readNotification(Long id) {
        GeneralNotification generalNotification = generalNotificationDAO.get(id);
        generalNotification.setIsRead(true);
        generalNotificationDAO.save(generalNotification);
        return ResponseEntity.ok(new ResponseUpdate(generalNotification));
    }

    @Override
    public ResponseEntity readAllNotification(Long userId) {
        List<GeneralNotification>  generalNotifications = generalNotificationDAO.findByUserId(userId);
        for(GeneralNotification generalNotification: generalNotifications){
            generalNotification.setIsRead(true);
        }
        generalNotificationDAO.saveAll(generalNotifications);
        return ResponseEntity.ok(new ResponseUpdate(generalNotifications));
    }
}
