package id.gate.root.gaterootbe.data.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name = "post_first_comment")
@ToString
public class PostFirstComment implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private Long postId;

    private Long firstCommentId;

    private Long userId;
}
