package id.gate.root.gaterootbe.endpoint.impl;

import id.gate.root.gaterootbe.data.dto.request.RequestPartnerDTO;
import id.gate.root.gaterootbe.endpoint.PartnerEndPoint;
import id.gate.root.gaterootbe.service.PartnerService;
import id.gate.root.gaterootbe.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PartnerEndPointImpl implements PartnerEndPoint {

    @Autowired
    private UserService userService;

    @Autowired
    private PartnerService partnerService;

    @Override
    public ResponseEntity save(@RequestBody RequestPartnerDTO requestPartnerDTO) {
        return partnerService.save(requestPartnerDTO);
    }

    @Override
    public ResponseEntity saveConfirm(@RequestBody RequestPartnerDTO requestPartnerDTO) {
        return partnerService.confirm(requestPartnerDTO);
    }

    @Override
    public ResponseEntity findAllPartner(@PathVariable("userId") Long userId) {
        return userService.findByAllPartner(userId);
    }

    @Override
    public ResponseEntity findAllPartnerNotConfirmYet(Long userId) {
        return userService.findByAllPartnerNotConfirmYet(userId);
    }

    @Override
    public ResponseEntity findRequestPartner(@PathVariable("partnerId") Long partnerId) {
        return userService.findRequestPartner(partnerId);
    }

    @Override
    public ResponseEntity getByUserIdAndPartnerId(@PathVariable("userId") Long userId, @PathVariable("partnerId") Long partnerId) {
        return partnerService.findByUserIdAndUserId(userId,partnerId);
    }
}
