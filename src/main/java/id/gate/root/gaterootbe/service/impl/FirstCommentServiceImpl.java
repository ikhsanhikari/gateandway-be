package id.gate.root.gaterootbe.service.impl;

import id.gate.root.gaterootbe.dao.FirstCommentDAO;
import id.gate.root.gaterootbe.dao.PostFirstCommentDAO;
import id.gate.root.gaterootbe.data.dto.request.RequestFirstCommentDTO;
import id.gate.root.gaterootbe.data.json.*;
import id.gate.root.gaterootbe.data.model.FirstComment;
import id.gate.root.gaterootbe.data.model.PostFirstComment;
import id.gate.root.gaterootbe.mapper.FirstCommentMapper;
import id.gate.root.gaterootbe.service.FirstCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class FirstCommentServiceImpl implements FirstCommentService {

    @Autowired
    private FirstCommentDAO firstCommentDAO;

    @Autowired
    private FirstCommentMapper firstCommentMapper;

    @Autowired
    private PostFirstCommentDAO postFirstCommentDAO;

    @Override
    public ResponseEntity findAll() {
        List<FirstComment> experiences = firstCommentDAO.select();
        return ResponseEntity.ok(new ResponseData(experiences.size(),"first_comment",experiences));
    }

    @Override
    public ResponseEntity save(RequestFirstCommentDTO requestFirstCommentDTO) {
        FirstComment firstComment=firstCommentMapper.reverse(requestFirstCommentDTO);

        FirstComment res = firstCommentDAO.save(firstComment);

        PostFirstComment postFirstComment = new PostFirstComment();
        postFirstComment.setFirstCommentId(res.getId());
        postFirstComment.setPostId(requestFirstCommentDTO.getPostId());
        postFirstComment.setUserId(requestFirstCommentDTO.getUserId());
        postFirstCommentDAO.save(postFirstComment);

        return ResponseEntity.ok(new ResponseSave(firstComment));
    }

    @Override
    public ResponseEntity update(RequestFirstCommentDTO requestFirstCommentDTO, Long id) {
        FirstComment firstComment=firstCommentMapper.reverse(requestFirstCommentDTO);

        FirstComment cek = firstCommentDAO.get(id);

        if(cek==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Comment not found"));
        }

        firstComment.setUpdateAt(new Date());
        firstComment.setId(id);

        firstCommentDAO.save(firstComment);


        return ResponseEntity.ok(new ResponseUpdate(firstComment));
    }

    @Override
    public ResponseEntity delete(Long id) {
        FirstComment firstComment = firstCommentDAO.get(id);

        if(firstComment==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Comment not found"));
        }

        firstComment.setDeleteAt(new Date());
        firstComment.setStatus(0);

        firstCommentDAO.save(firstComment);


        return ResponseEntity.ok(new ResponseDelete(firstComment ));
    }

    @Override
    public ResponseEntity findById(Long id) {
        FirstComment firstComment = firstCommentDAO.get(id);
        if(firstComment==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Comment not found"));
        }
        return ResponseEntity.ok(new ResponseData(1,"first comment",firstComment));
    }
}
