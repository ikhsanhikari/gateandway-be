package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.UserPost;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserPostDAO extends JpaRepository<UserPost,Long> {
}
