package id.gate.root.gaterootbe.mapper;

import id.gate.root.gaterootbe.data.dto.request.RequestInterestPostDTO;
import id.gate.root.gaterootbe.data.dto.response.ResponseInterestPostDTO;
import id.gate.root.gaterootbe.data.model.InterestPost;
import org.springframework.stereotype.Service;


import java.util.Date;

@Service
public class InterestPostMapper implements BaseMapper<InterestPost, RequestInterestPostDTO>{
    @Override
    public InterestPost reverse(RequestInterestPostDTO source) {
        InterestPost result = new InterestPost();
        result.setId(source.getId());
        result.setUserId(source.getUserId());
        result.setIsInterest(source.getIsInterest());
        result.setPostId(source.getPostId());
        result.setUpdateAt(new Date());
        result.setStatus(1);
        result.setCreatedAt(new Date());
        return result;
    }

    public ResponseInterestPostDTO convert(InterestPost source){
        ResponseInterestPostDTO result = new ResponseInterestPostDTO();

        result.setId(source.getId());
        result.setCreatedAt(source.getCreatedAt());
        result.setDeleteAt(source.getDeleteAt());
        result.setPostId(source.getPostId());
        result.setStatus(source.getStatus());
        result.setUpdateAt(source.getUpdateAt());
        result.setUserId(source.getUserId());
        result.setIsInterest(source.getIsInterest());

        return  result;

    }
}
