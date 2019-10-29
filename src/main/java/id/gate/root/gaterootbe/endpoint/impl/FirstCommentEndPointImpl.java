package id.gate.root.gaterootbe.endpoint.impl;

import id.gate.root.gaterootbe.data.dto.request.RequestFirstCommentDTO;
import id.gate.root.gaterootbe.endpoint.FirstCommentEndPoint;
import id.gate.root.gaterootbe.service.FirstCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FirstCommentEndPointImpl implements FirstCommentEndPoint {

    @Autowired
    private FirstCommentService firstCommentService;

    @Override
    public ResponseEntity findAll() {
        return firstCommentService.findAll();
    }

    @Override
    public ResponseEntity findById(@PathVariable("id") Long id) {
        return firstCommentService.findById(id);
    }

    @Override
    public ResponseEntity save(@RequestBody RequestFirstCommentDTO requestFirstCommentDTO) {
        return firstCommentService.save(requestFirstCommentDTO);
    }

    @Override
    public ResponseEntity delete(@PathVariable("id") Long id) {
        return firstCommentService.delete(id);
    }

    @Override
    public ResponseEntity update(@RequestBody RequestFirstCommentDTO requestFirstCommentDTO,@PathVariable("id") Long id) {
        return firstCommentService.update(requestFirstCommentDTO,id);
    }
}
