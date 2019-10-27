package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserDAO extends JpaRepository<User,Long> {

    @Query("select u from User u where u.status = 1 and id = ?1")
    User get(Long id);

    @Query("select u from User u where u.status = 1")
    List<User> select();

    User findByUsername(String username);

    @Query("select u from User u where u.status = 1 and u.email = ?1  and u.password = ?2 ")
    User findByEmailAndPassword(String username, String password);

    @Query("select u from User u where u.status = 1 and u.firstName like %?1% or u.lastName like %?1%")
    List<User> findByFirstNameOrLastName(String search);
}
