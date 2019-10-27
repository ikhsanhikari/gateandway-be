package id.gate.root.gaterootbe.data.dto.request;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@Data
@ToString
public class RequestPartnerDTO implements Serializable {

    private Long userId;

    private Long partnerId;

}
