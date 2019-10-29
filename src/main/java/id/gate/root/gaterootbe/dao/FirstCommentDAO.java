package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.FirstComment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface FirstCommentDAO extends JpaRepository<FirstComment,Long> {

    @Query("select u from FirstComment u where u.status = 1 and id = ?1")
    FirstComment get(Long id);

    @Query("select u from FirstComment u where u.status = 1")
    List<FirstComment> select();
}
