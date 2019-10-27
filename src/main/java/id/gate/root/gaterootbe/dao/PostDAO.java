package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PostDAO extends JpaRepository<Post,Long> {

    @Query("select u from Post u where u.status = 1 and id = ?1 ")
    Post get(Long id);

    @Query("select u from Post u where u.status = 1  order by u.id desc")
    List<Post> select();

    @Query("select u from Post u where u.status = 1 and u.userId in(?1) order by u.createdAt desc")
    List<Post> selectForPartner(List<Long> userId);
}
