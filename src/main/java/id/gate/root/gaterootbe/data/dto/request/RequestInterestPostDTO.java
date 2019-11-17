package id.gate.root.gaterootbe.data.dto.request;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@Data
@ToString
public class RequestInterestPostDTO implements Serializable {

   private Long id;

   private Long postId;

   private Long userId;

   private Boolean isInterest;
}
