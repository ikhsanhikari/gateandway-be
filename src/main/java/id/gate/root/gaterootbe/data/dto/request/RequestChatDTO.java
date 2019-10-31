package id.gate.root.gaterootbe.data.dto.request;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@ToString
@Data
public class RequestChatDTO implements Serializable {

    private Long userId;

    private Long partnerId;

    private String message;
}
