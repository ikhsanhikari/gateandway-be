package id.gate.root.gaterootbe.mapper;

import id.gate.root.gaterootbe.data.dto.request.RequestPostDTO;
import id.gate.root.gaterootbe.data.dto.response.ResponsePostDTO;
import id.gate.root.gaterootbe.data.model.Post;
import id.gate.root.gaterootbe.util.AlphaNumeric;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class PostMapper implements BaseMapper<Post, RequestPostDTO>{
    @Override
    public Post reverse(RequestPostDTO source) {
        Post result = new Post();

        result.setPost(source.getPost());
        result.setUserId(source.getUserId());
        result.setUpdateAt(new Date());
        result.setStatus(1);
        result.setCreatedAt(new Date());
        result.setUniquePostID("post-"+AlphaNumeric.randomAlphaNumeric(6));

        return result;
    }

    public ResponsePostDTO convert(Post source){
        ResponsePostDTO result = new ResponsePostDTO();

        result.setId(source.getId());
        result.setCreatedAt(source.getCreatedAt());
        result.setDeleteAt(source.getDeleteAt());
        result.setPost(source.getPost());
        result.setStatus(source.getStatus());
        result.setUniquePostID(source.getUniquePostID());
        result.setUpdateAt(source.getUpdateAt());
        result.setUserId(source.getUserId());

        return result;
    }
}
