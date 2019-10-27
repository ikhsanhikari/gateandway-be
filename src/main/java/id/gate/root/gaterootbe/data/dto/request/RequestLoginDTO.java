package id.gate.root.gaterootbe.data.dto.request;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@Data
@ToString
public class RequestLoginDTO implements Serializable {
    private String username;
    private String password;
}
