package id.gate.root.gaterootbe.data.dto.request;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@Data
@ToString
public class RequestGeneralNotificationDTO implements Serializable {

    private Long userId;

    private String message;

}
