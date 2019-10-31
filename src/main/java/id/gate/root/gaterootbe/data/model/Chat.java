package id.gate.root.gaterootbe.data.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "chat")
@ToString
public class Chat implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private Long userId;

    private Long partnerId;

    private String message;

    private Integer status;

    private Date createdAt;

    private Date updateAt;

    private Date deleteAt;
}
