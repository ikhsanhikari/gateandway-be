package id.gate.root.gaterootbe.data.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "business_category")
@ToString
public class BusinessCategory implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private String category;

    private String description;

    private Integer status;

    private Date createdAt;

    private Date updateAt;

    private Date deleteAt;
}
