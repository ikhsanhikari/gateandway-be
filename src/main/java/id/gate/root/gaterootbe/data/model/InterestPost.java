package id.gate.root.gaterootbe.data.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "interest_post")
@ToString
public class InterestPost implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private Long userId;

    private Long postId;

    private Boolean isInterest;

    private Integer status;

    private Date createdAt;

    private Date updateAt;

    private Date deleteAt;


}
