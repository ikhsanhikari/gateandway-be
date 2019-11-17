package id.gate.root.gaterootbe.service.impl;

import id.gate.root.gaterootbe.dao.InterestPostDAO;
import id.gate.root.gaterootbe.dao.PostDAO;
import id.gate.root.gaterootbe.dao.UserDAO;
import id.gate.root.gaterootbe.data.dto.request.RequestGeneralNotificationDTO;
import id.gate.root.gaterootbe.data.dto.request.RequestInterestPostDTO;
import id.gate.root.gaterootbe.data.dto.response.ResponseInterestPostDTO;
import id.gate.root.gaterootbe.data.json.ResponseData;
import id.gate.root.gaterootbe.data.json.ResponseSave;
import id.gate.root.gaterootbe.data.json.ResponseUpdate;
import id.gate.root.gaterootbe.data.model.InterestPost;
import id.gate.root.gaterootbe.data.model.Post;
import id.gate.root.gaterootbe.data.model.User;
import id.gate.root.gaterootbe.mapper.InterestPostMapper;
import id.gate.root.gaterootbe.service.GeneralNotificationService;
import id.gate.root.gaterootbe.service.InterestPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class InterestPostServiceImpl implements InterestPostService {

    @Autowired
    private InterestPostDAO interestPostDAO;

    @Autowired
    private InterestPostMapper interestPostMapper;

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private GeneralNotificationService generalNotificationService;

    @Autowired
    private PostDAO postDAO;

    @Override
    public ResponseEntity save(RequestInterestPostDTO resquest) {
        InterestPost interestPostCheck = interestPostDAO.findByUserIdAndPostId(resquest.getUserId(),resquest.getPostId());
        InterestPost interestPost = interestPostMapper.reverse(resquest);
        if(interestPostCheck == null){
            interestPostDAO.save(interestPost);
        }else{
            interestPostCheck.setIsInterest(true);
            interestPostDAO.save(interestPostCheck);
        }

        Post post = postDAO.get(resquest.getPostId());
        User user = userDAO.get(post.getUserId());

        User interestUser = userDAO.get(resquest.getUserId());

        RequestGeneralNotificationDTO requestGeneralNotificationDTO= new RequestGeneralNotificationDTO();
        requestGeneralNotificationDTO.setUserId(user.getId());


        requestGeneralNotificationDTO.setMessage( interestUser.getFirstName()+ " interest your businesss");
        generalNotificationService.save(requestGeneralNotificationDTO);
        return ResponseEntity.ok(new ResponseSave(interestPost));
    }

    @Override
    public ResponseEntity findByUserId(Long userId) {
        List<InterestPost> interestPostList = interestPostDAO.findByUserId(userId);
        List<ResponseInterestPostDTO> result = new ArrayList<>();

        for(InterestPost interestPost: interestPostList){
            ResponseInterestPostDTO response = interestPostMapper.convert(interestPost);
            result.add(response);
        }
        return ResponseEntity.ok(new ResponseData(result.size(),"interest",result));
    }

    @Override
    public ResponseEntity findByPostId(Long postId) {
        List<InterestPost> interestPostList = interestPostDAO.findByPostId(postId);
        List<ResponseInterestPostDTO> result = new ArrayList<>();

        for(InterestPost interestPost: interestPostList){
            ResponseInterestPostDTO response = interestPostMapper.convert(interestPost);
            User user = userDAO.get(interestPost.getUserId());
            response.setUsers(user);
            result.add(response);
        }

        return ResponseEntity.ok(new ResponseData(result.size(),"interest",result));

    }

    @Override
    public ResponseEntity unInterestPost(Long userId,Long postId) {
        InterestPost interestPost = interestPostDAO.findByUserIdAndPostId(userId,postId);
        interestPost.setIsInterest(false);
        interestPostDAO.save(interestPost);
        return ResponseEntity.ok(new ResponseUpdate(interestPost));
    }

    @Override
    public ResponseEntity checkInterest(Long userId, Long postId) {
        InterestPost interestPost = interestPostDAO.findByUserIdAndPostId(userId,postId);
        return ResponseEntity.ok(new ResponseData(1,"interest",interestPost));
    }


}
