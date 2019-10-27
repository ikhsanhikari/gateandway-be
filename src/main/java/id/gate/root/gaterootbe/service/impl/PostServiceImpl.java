package id.gate.root.gaterootbe.service.impl;

import id.gate.root.gaterootbe.dao.PartnerDAO;
import id.gate.root.gaterootbe.dao.PostDAO;
import id.gate.root.gaterootbe.dao.UserDAO;
import id.gate.root.gaterootbe.dao.UserPostDAO;
import id.gate.root.gaterootbe.data.dto.request.RequestPostDTO;
import id.gate.root.gaterootbe.data.dto.response.ResponsePostDTO;
import id.gate.root.gaterootbe.data.json.*;
import id.gate.root.gaterootbe.data.model.Partner;
import id.gate.root.gaterootbe.data.model.Post;
import id.gate.root.gaterootbe.data.model.User;
import id.gate.root.gaterootbe.data.model.UserPost;
import id.gate.root.gaterootbe.mapper.PostMapper;
import id.gate.root.gaterootbe.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostDAO postDAO;

    @Autowired
    private PostMapper postMapper;

    @Autowired
    private UserPostDAO userPostDAO;

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private PartnerDAO partnerDAO;

    @Override
    public ResponseEntity findAll() {
        List<Post> posts= postDAO.select();
        return ResponseEntity.ok(new ResponseData(posts.size(),"post",posts));
    }

    @Override
    public ResponseEntity findAllWithDetails(Long me) {
        List<ResponsePostDTO> postDTOS = new ArrayList<>();

        List<Partner> partners = partnerDAO.findByUserId(me);
        List<Long> userId = new ArrayList<>();
        for(Partner partner :partners){
            userId.add(partner.getPartnerId());
        }
        userId.add(me);

        List<Post> posts= postDAO.selectForPartner(userId);
        for(Post post:posts){
            ResponsePostDTO postDTO = postMapper.convert(post);

            User user = userDAO.get(post.getUserId());
            postDTO.setUsers(user);
            postDTOS.add(postDTO);
        }
        return ResponseEntity.ok(new ResponseData(postDTOS.size(),"post",postDTOS));
    }

    @Override
    public ResponseEntity save(RequestPostDTO requestPostDTO) {
        Post post=postMapper.reverse(requestPostDTO);

        Post res = postDAO.save(post);

        UserPost userPost = new UserPost();
        userPost.setUserId(requestPostDTO.getUserId());
        userPost.setPostId(res.getId());
        userPostDAO.save(userPost);

        return ResponseEntity.ok(new ResponseSave(post));
    }

    @Override
    public ResponseEntity update(RequestPostDTO requestPostDTO, Long id) {
        Post post=postMapper.reverse(requestPostDTO);

        Post cek = postDAO.get(id);

        if(cek==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Post not found"));
        }

        post.setUpdateAt(new Date());
        post.setId(id);

        postDAO.save(post);

        return ResponseEntity.ok(new ResponseUpdate(post));
    }

    @Override
    public ResponseEntity delete(Long id) {
        Post post = postDAO.get(id);

        if(post==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Post not found"));
        }

        post.setDeleteAt(new Date());
        post.setStatus(0);

        postDAO.save(post);


        return ResponseEntity.ok(new ResponseDelete(post ));
    }

    @Override
    public ResponseEntity findById(Long id) {
        Post post = postDAO.get(id);
        if(post==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Post not found"));
        }
        return ResponseEntity.ok(new ResponseData(1,"post",post));
    }
}