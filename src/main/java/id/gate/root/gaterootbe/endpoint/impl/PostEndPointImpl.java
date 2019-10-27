package id.gate.root.gaterootbe.endpoint.impl;

import id.gate.root.gaterootbe.data.dto.request.RequestPostDTO;
import id.gate.root.gaterootbe.endpoint.PostEndPoint;
import id.gate.root.gaterootbe.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PostEndPointImpl implements PostEndPoint {

    @Autowired
    private PostService postService;

    @Override
    public ResponseEntity findAll() {
        return postService.findAll();
    }

    @Override
    public ResponseEntity findAllWithDetail(@PathVariable("userId") Long userId) {
        return postService.findAllWithDetails(userId);
    }

    @Override
    public ResponseEntity findById(@PathVariable("id") Long id) {
        return postService.findById(id);
    }

    @Override
    public ResponseEntity save(@RequestBody RequestPostDTO requestPostDTO) {
        return postService.save(requestPostDTO);
    }

    @Override
    public ResponseEntity delete(@PathVariable("id") Long id) {
        return postService.delete(id);
    }

    @Override
    public ResponseEntity update(@RequestBody RequestPostDTO requestPostDTO,@PathVariable("id") Long id) {
        return postService.update(requestPostDTO,id);
    }
}
