package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.Chat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ChatDAO extends JpaRepository<Chat,Long> {
    @Query("select u from Chat u where u.status = 1 and id = ?1")
    Chat get(Long id);

    @Query("select u from Chat u where u.status = 1")
    List<Chat> select();

    @Query("select u from Chat u where u.status = 1 and (u.userId = ?1 and u.partnerId = ?2)  or (u.userId = ?2 and u.partnerId = ?1) order by u.createdAt")
    List<Chat> selectSpecificChat(Long userId, Long partnerId);
}
