package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.GeneralNotification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface GeneralNotificationDAO extends JpaRepository<GeneralNotification,Long> {

    List<GeneralNotification> findByUserId(Long userId);

    @Query("select u from GeneralNotification u where u.status = 1 and id = ?1")
    GeneralNotification get(Long id);

    @Query("select u from GeneralNotification u where u.status = 1")
    List<GeneralNotification> select();
}
