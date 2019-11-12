package id.gate.root.gaterootbe.data.dto.request;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@ToString
@Data
public class RequestBusinessCategoryDTO implements Serializable {
    private Long userId;
    private String category;
    private String description;
}
