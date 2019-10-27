package id.gate.root.gaterootbe.data.dto.response;

import id.gate.root.gaterootbe.data.model.User;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

@Data
@ToString
public class ResponsePostDTO implements Serializable {

    private Long id;

    private String uniquePostID;

    Long userId;

    String post;

    User users ;

    private Integer status;

    private Date createdAt;

    private Date updateAt;

    private Date deleteAt;

}
