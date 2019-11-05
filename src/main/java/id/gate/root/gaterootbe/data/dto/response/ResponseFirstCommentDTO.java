package id.gate.root.gaterootbe.data.dto.response;

import id.gate.root.gaterootbe.data.model.User;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

@Data
@ToString
public class ResponseFirstCommentDTO implements Serializable {

    private Long id;

    private String firstComment;

    private User userComments ;

    private Integer status;

    private String createdAt;

    private Date updateAt;

    private Date deleteAt;

}
