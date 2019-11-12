package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.Achievement;
import id.gate.root.gaterootbe.data.model.BusinessCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BusinessCategoryDAO extends JpaRepository<BusinessCategory,Long> {

    @Query("select u from BusinessCategory u where u.status = 1 and id = ?1")
    BusinessCategory get(Long id);

    @Query("select u from BusinessCategory u where u.status = 1")
    List<BusinessCategory> select();

    @Query("select u from BusinessCategory u where u.status = 1 and u.id = ?1")
    List<BusinessCategory> selectByUser(Long categoryId);
}
