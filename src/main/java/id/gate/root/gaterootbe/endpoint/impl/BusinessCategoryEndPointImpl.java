package id.gate.root.gaterootbe.endpoint.impl;

import id.gate.root.gaterootbe.data.dto.request.RequestBusinessCategoryDTO;
import id.gate.root.gaterootbe.endpoint.BusinessCategoryEndPoint;
import id.gate.root.gaterootbe.service.BusinessCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BusinessCategoryEndPointImpl implements BusinessCategoryEndPoint {

    @Autowired
    private BusinessCategoryService businessCategoryService;

    @Override
    public ResponseEntity findAll() {
        return businessCategoryService.findAll();
    }

    @Override
    public ResponseEntity findById(@PathVariable("id") Long id) {
        return businessCategoryService.findById(id);
    }

    @Override
    public ResponseEntity save(@RequestBody  RequestBusinessCategoryDTO requestBusinessCategoryDTO) {
        return businessCategoryService.save(requestBusinessCategoryDTO);
    }

    @Override
    public ResponseEntity delete(@PathVariable("id") Long id) {
        return businessCategoryService.delete(id);
    }

    @Override
    public ResponseEntity update(@RequestBody RequestBusinessCategoryDTO requestBusinessCategoryDTO, @PathVariable("id") Long id) {
        return businessCategoryService.update(requestBusinessCategoryDTO,id);
    }
}
