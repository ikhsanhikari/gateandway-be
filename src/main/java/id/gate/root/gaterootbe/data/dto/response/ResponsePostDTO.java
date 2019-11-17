package id.gate.root.gaterootbe.data.dto.response;

import id.gate.root.gaterootbe.data.model.FirstComment;
import id.gate.root.gaterootbe.data.model.User;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@ToString
public class ResponsePostDTO implements Serializable {

    private Long id;

    private String uniquePostID;

    Long userId;

    String post;

    String urlPhoto;

    User users ;

    List<ResponseFirstCommentDTO> firstComments;

    List<ResponseInterestPostDTO> interest;

    private Integer status;

    private String createdAt;

    private Date updateAt;

    private Date deleteAt;

}
