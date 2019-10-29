package id.gate.root.gaterootbe.data.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "first_comment")
@ToString
public class FirstComment implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private String firstComment;

    private Long postId;

    private Long userId;

    private Integer status;

    private Date createdAt;

    private Date updateAt;

    private Date deleteAt;
}
