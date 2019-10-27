package id.gate.root.gaterootbe.mapper;

import id.gate.root.gaterootbe.data.dto.request.RequestPartnerDTO;
import id.gate.root.gaterootbe.data.model.Partner;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class PartnerMapper implements BaseMapper<Partner, RequestPartnerDTO>{
    @Override
    public Partner reverse(RequestPartnerDTO source) {

        Partner result = new Partner();

        result.setUserId(source.getUserId());
        result.setPartnerId(source.getPartnerId());
        result.setCreatedAt(new Date());
        result.setIsConfirm(false);
        result.setIsRemove(false);
        result.setUpdateAt(new Date());
        result.setStatus(1);

        return result;
    }

    public Partner reverseConfirm(RequestPartnerDTO source) {

        Partner result = new Partner();

        result.setUserId(source.getUserId());
        result.setPartnerId(source.getPartnerId());
        result.setCreatedAt(new Date());
        result.setIsConfirm(true);
        result.setIsRemove(false);
        result.setUpdateAt(new Date());
        result.setConfirm_at(new Date());
        result.setStatus(1);

        return result;
    }
}
