package id.gate.root.gaterootbe.data.dto.response;

import id.gate.root.gaterootbe.data.model.User;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

@ToString
@Data
public class ResponseChatDTO implements Serializable {

    private Long id;

    private Long userId;

    private Long partnerId;

    private String message;

    private Integer status;

    private Date createdAt;

    private Date updateAt;

    private Date deleteAt;

    private User from;

    private User to;

}
