package id.gate.root.gaterootbe.data.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;

@Data
@ToString
@Entity
@Table(name = "user_business_category")
public class UserBusinessCategory implements Serializable {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private Long userId;

    private Long categoryId;
}
