package id.gate.root.gaterootbe.data.dto.response;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

@Data
@ToString
public class ResponseSearchUserDTO implements Serializable {

    private Long id;

    private String firstName;

    private String lastName;

    private String description;

    private String phoneNumber;

    private Date birthDate;

    private String gender;

    private String username;

    private String email;

    private String photoProfile;

    private String photoCover;

}
