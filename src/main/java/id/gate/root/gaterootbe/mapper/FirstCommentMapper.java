package id.gate.root.gaterootbe.mapper;

import id.gate.root.gaterootbe.data.dto.request.RequestFirstCommentDTO;
import id.gate.root.gaterootbe.data.dto.response.ResponseFirstCommentDTO;
import id.gate.root.gaterootbe.data.model.FirstComment;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class FirstCommentMapper implements BaseMapper<FirstComment, RequestFirstCommentDTO>{

    @Override
    public FirstComment reverse(RequestFirstCommentDTO source) {
        FirstComment result = new FirstComment();

        result.setFirstComment(source.getFirstComment());
        result.setPostId(source.getPostId());
        result.setUserId(source.getUserId());
        result.setCreatedAt(new Date());
        result.setStatus(1);
        result.setUpdateAt(new Date());

        return result;
    }

    public ResponseFirstCommentDTO convert(FirstComment source){

        String pattern = "yyyy-MM-dd'T'HH:mm:ss";
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);

        ResponseFirstCommentDTO result = new ResponseFirstCommentDTO();

        result.setFirstComment(source.getFirstComment());
        result.setId(source.getId());
        result.setCreatedAt(sdf.format(source.getCreatedAt()));
        result.setFirstComment(source.getFirstComment());
        result.setStatus(source.getStatus());
        result.setUpdateAt(source.getUpdateAt());
        result.setDeleteAt(source.getDeleteAt());

        return result;
    }


}
