package id.gate.root.gaterootbe.endpoint.impl;

import id.gate.root.gaterootbe.data.dto.request.RequestInterestPostDTO;
import id.gate.root.gaterootbe.endpoint.InterestPostEndPoint;
import id.gate.root.gaterootbe.service.InterestPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class InterestPostEndPointImpl implements InterestPostEndPoint {

    @Autowired
    private InterestPostService interestPostService;

    @Override
    public ResponseEntity save(@RequestBody RequestInterestPostDTO req) {
        return interestPostService.save(req);
    }

    @Override
    public ResponseEntity findByPostId(@PathVariable("id")  Long postId) {
        return interestPostService.findByPostId(postId);
    }

    @Override
    public ResponseEntity findByUserId(@PathVariable("id") Long userId) {
        return interestPostService.findByUserId(userId);
    }

    @Override
    public ResponseEntity findByUserIdAndPostId(@PathVariable("userId") Long userId,@PathVariable("postId") Long postId) {
        return interestPostService.checkInterest(userId,postId);
    }

    @Override
    public ResponseEntity unInterestPost(@PathVariable("userId") Long userId,@PathVariable("postId") Long postId) {
        return interestPostService.unInterestPost(userId,postId);
    }
}
