package id.gate.root.gaterootbe.data.dto.request;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@ToString
@Data
public class RequestSignupNotificationDTO implements Serializable {
    private String message;
    private String username;
}
