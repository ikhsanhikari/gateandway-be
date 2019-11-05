package id.gate.root.gaterootbe.data.dto.request;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@Data
@ToString
public class RequestPhotoDTO implements Serializable {

    private Long id;
    private String url;
}
