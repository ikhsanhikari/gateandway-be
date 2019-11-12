package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.SignUpNotification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SignupNotificationDAO extends JpaRepository<SignUpNotification,Long> {

    @Query("select u from SignUpNotification u where u.status = 1 and id = ?1")
    SignUpNotification get(Long id);

    @Query("select u from SignUpNotification u where u.status = 1 order by u.createdAt desc")
    List<SignUpNotification> select();

}
