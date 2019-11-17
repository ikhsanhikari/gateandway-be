package id.gate.root.gaterootbe.service;

import id.gate.root.gaterootbe.data.dto.request.RequestInterestPostDTO;
import org.springframework.http.ResponseEntity;

public interface InterestPostService {

    ResponseEntity save(RequestInterestPostDTO resquest);

    ResponseEntity findByUserId(Long userId);

    ResponseEntity findByPostId(Long postId);

    ResponseEntity unInterestPost(Long userId,Long postId);

    ResponseEntity checkInterest(Long userId,Long postId);


}
