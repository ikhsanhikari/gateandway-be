package id.gate.root.gaterootbe.service.impl;

import id.gate.root.gaterootbe.dao.PartnerDAO;
import id.gate.root.gaterootbe.dao.UserDAO;
import id.gate.root.gaterootbe.data.dto.request.RequestGeneralNotificationDTO;
import id.gate.root.gaterootbe.data.dto.request.RequestPartnerDTO;
import id.gate.root.gaterootbe.data.json.ResponseData;
import id.gate.root.gaterootbe.data.json.ResponseSave;
import id.gate.root.gaterootbe.data.model.Partner;
import id.gate.root.gaterootbe.data.model.User;
import id.gate.root.gaterootbe.mapper.PartnerMapper;
import id.gate.root.gaterootbe.service.GeneralNotificationService;
import id.gate.root.gaterootbe.service.PartnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class PartnerServiceImpl implements PartnerService {

    @Autowired
    private PartnerMapper partnerMapper;

    @Autowired
    private PartnerDAO partnerDAO;

    @Autowired
    private GeneralNotificationService generalNotificationService;

    @Autowired
    private UserDAO userDAO;

    @Override
    public ResponseEntity findAll() {
        return null;
    }

    @Override
    public ResponseEntity save(RequestPartnerDTO requestPartnerDTO) {

        Partner partner = partnerMapper.reverse(requestPartnerDTO);
        partnerDAO.save(partner);

        RequestGeneralNotificationDTO requestGeneralNotificationDTO= new RequestGeneralNotificationDTO();
        requestGeneralNotificationDTO.setUserId(requestPartnerDTO.getPartnerId());

        User user =userDAO.get(requestPartnerDTO.getUserId());
        requestGeneralNotificationDTO.setMessage( user.getFirstName()+ " make collabs request ");
        generalNotificationService.save(requestGeneralNotificationDTO);

        return ResponseEntity.ok(new ResponseSave(partner));
    }

    @Override
    public ResponseEntity confirm(RequestPartnerDTO requestPartnerDTO) {

        Partner partner = partnerMapper.reverseConfirm(requestPartnerDTO);
        partnerDAO.save(partner);

        Partner requestPartner = partnerDAO.findByUserIdAndPartnerId(requestPartnerDTO.getPartnerId(),requestPartnerDTO.getUserId());

        requestPartner.setIsConfirm(true);
        requestPartner.setConfirm_at(new Date());

        partnerDAO.save(requestPartner);

        RequestGeneralNotificationDTO requestGeneralNotificationDTO= new RequestGeneralNotificationDTO();
        requestGeneralNotificationDTO.setUserId(requestPartnerDTO.getPartnerId());

        User user =userDAO.get(requestPartnerDTO.getUserId());
        requestGeneralNotificationDTO.setMessage( user.getFirstName()+ " has accepted your collabs request ");
        generalNotificationService.save(requestGeneralNotificationDTO);

        return ResponseEntity.ok(new ResponseSave(partner));
    }

    @Override
    public ResponseEntity update(RequestPartnerDTO requestPartnerDTO, Long id) {
        return null;
    }

    @Override
    public ResponseEntity delete(Long id) {
        return null;
    }

    @Override
    public ResponseEntity findById(Long id) {
        return null;
    }

    @Override
    public ResponseEntity findByUserIdAndUserId(Long userId,Long partnerId ) {
        Partner partner = partnerDAO.findByUserIdAndPartnerId(userId,partnerId);
        return ResponseEntity.ok(new ResponseData(1,"partner",partner));
    }
}
