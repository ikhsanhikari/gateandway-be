package id.gate.root.gaterootbe.endpoint;

import id.gate.root.gaterootbe.data.dto.request.RequestInterestPostDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/interest")
public interface InterestPostEndPoint {

    @PostMapping("")
    ResponseEntity save(RequestInterestPostDTO req);

    @GetMapping("post/{id}")
    ResponseEntity findByPostId(Long postId);


    @GetMapping("user/{id}")
    ResponseEntity findByUserId(Long userId);

    @GetMapping("check_interest/{userId}/{postId}")
    ResponseEntity findByUserIdAndPostId(Long userId,Long postId);

    @GetMapping("un_interest/{userId}/{postId}")
    ResponseEntity unInterestPost(Long userId,Long postId);


}
