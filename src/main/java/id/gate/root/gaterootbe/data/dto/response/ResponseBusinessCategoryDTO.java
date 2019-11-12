package id.gate.root.gaterootbe.data.dto.response;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@ToString
@Data
public class ResponseBusinessCategoryDTO implements Serializable {
    private String category;
    private String description;
}
