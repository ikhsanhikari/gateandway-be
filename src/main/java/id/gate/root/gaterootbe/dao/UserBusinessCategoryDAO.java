package id.gate.root.gaterootbe.dao;


import id.gate.root.gaterootbe.data.model.UserBusinessCategory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserBusinessCategoryDAO extends JpaRepository<UserBusinessCategory,Long> {

    List<UserBusinessCategory> findByUserId(Long userId);
}
