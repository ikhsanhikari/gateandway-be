package id.gate.root.gaterootbe.mapper;

import id.gate.root.gaterootbe.data.dto.request.RequestBusinessCategoryDTO;
import id.gate.root.gaterootbe.data.dto.response.ResponseBusinessCategoryDTO;
import id.gate.root.gaterootbe.data.model.BusinessCategory;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class BusinessCategoryMapper implements BaseMapper<BusinessCategory, RequestBusinessCategoryDTO>{

    @Override
    public BusinessCategory reverse(RequestBusinessCategoryDTO source) {
        BusinessCategory result = new BusinessCategory();
        result.setCategory(source.getCategory());
        result.setCreatedAt(new Date());
        result.setDescription(source.getDescription());
        result.setStatus(1);
        result.setUpdateAt(new Date());
        return result;
    }

    public ResponseBusinessCategoryDTO convert(BusinessCategory source){
        ResponseBusinessCategoryDTO result = new ResponseBusinessCategoryDTO();
        result.setCategory(source.getCategory());
        result.setDescription(source.getDescription());
        return result;
    }
}
