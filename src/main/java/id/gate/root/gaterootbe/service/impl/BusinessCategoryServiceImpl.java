package id.gate.root.gaterootbe.service.impl;

import id.gate.root.gaterootbe.dao.BusinessCategoryDAO;
import id.gate.root.gaterootbe.dao.UserBusinessCategoryDAO;
import id.gate.root.gaterootbe.data.dto.request.RequestBusinessCategoryDTO;
import id.gate.root.gaterootbe.data.json.*;
import id.gate.root.gaterootbe.data.model.BusinessCategory;
import id.gate.root.gaterootbe.data.model.UserBusinessCategory;
import id.gate.root.gaterootbe.mapper.BusinessCategoryMapper;
import id.gate.root.gaterootbe.service.BusinessCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class BusinessCategoryServiceImpl implements BusinessCategoryService {

    @Autowired
    private BusinessCategoryDAO businessCategoryDAO;

    @Autowired
    private BusinessCategoryMapper businessCategoryMapper;

    @Autowired
    private UserBusinessCategoryDAO userBusinessCategoryDAO;

    @Override
    public ResponseEntity findAll() {
        List<BusinessCategory> businessCategories = businessCategoryDAO.select();
        return ResponseEntity.ok(new ResponseData(businessCategories.size(),"business category",businessCategories));
    }

    @Override
    public ResponseEntity save(RequestBusinessCategoryDTO requestBusinessCategoryDTO) {
        BusinessCategory businessCategory=businessCategoryMapper.reverse(requestBusinessCategoryDTO);

        BusinessCategory res = businessCategoryDAO.save(businessCategory);

        UserBusinessCategory userBusinessCategory = new UserBusinessCategory();
        userBusinessCategory.setUserId(requestBusinessCategoryDTO.getUserId());
        userBusinessCategory.setCategoryId(res.getId());
        userBusinessCategoryDAO.save(userBusinessCategory);

        return ResponseEntity.ok(new ResponseSave(businessCategory));
    }

    @Override
    public ResponseEntity update(RequestBusinessCategoryDTO requestBusinessCategoryDTO, Long id) {
        BusinessCategory businessCategory=businessCategoryMapper.reverse(requestBusinessCategoryDTO);

        BusinessCategory cek = businessCategoryDAO.get(id);

        if(cek==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Business not found"));
        }

        businessCategory.setUpdateAt(new Date());
        businessCategory.setId(id);

        businessCategoryDAO.save(businessCategory);


        return ResponseEntity.ok(new ResponseUpdate(businessCategory));
    }

    @Override
    public ResponseEntity delete(Long id) {
        BusinessCategory businessCategory = businessCategoryDAO.get(id);

        if(businessCategory==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Business not found"));
        }

        businessCategory.setDeleteAt(new Date());
        businessCategory.setStatus(0);

        businessCategoryDAO.save(businessCategory);


        return ResponseEntity.ok(new ResponseDelete(businessCategory));
    }

    @Override
    public ResponseEntity findById(Long id) {
        BusinessCategory businessCategory = businessCategoryDAO.get(id);
        if(businessCategory==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Business not found"));
        }
        return ResponseEntity.ok(new ResponseData(1,"business",businessCategory));

    }
}
