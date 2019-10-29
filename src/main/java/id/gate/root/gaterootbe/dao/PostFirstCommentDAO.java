package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.PostFirstComment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PostFirstCommentDAO extends JpaRepository<PostFirstComment,Long> {

    List<PostFirstComment> findByPostId(Long userId);

}
