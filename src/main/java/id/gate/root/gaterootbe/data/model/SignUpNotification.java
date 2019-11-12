package id.gate.root.gaterootbe.data.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "signup_notification")
@ToString
public class SignUpNotification {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private String message;

    private String username;

    private Integer status;

    private Date createdAt;

    private Date updateAt;

    private Date deleteAt;
}
