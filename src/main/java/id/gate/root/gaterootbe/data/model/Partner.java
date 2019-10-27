package id.gate.root.gaterootbe.data.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "partner")
@ToString
public class Partner implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private Long userId;

    private Long partnerId;

    private Boolean isConfirm;

    private Date confirm_at;

    private Boolean isRemove;

    private Integer status;

    private Date createdAt;

    private Date updateAt;

    private Date deleteAt;
}
