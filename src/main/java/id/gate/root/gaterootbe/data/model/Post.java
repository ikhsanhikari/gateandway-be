package id.gate.root.gaterootbe.data.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@ToString
@Entity
@Table(name = "post")
public class Post implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private String uniquePostID;

    Long userId;

    String post;

    private Integer status;

    private Date createdAt;

    private Date updateAt;

    private Date deleteAt;


}
