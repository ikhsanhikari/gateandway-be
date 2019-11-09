package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.Partner;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PartnerDAO extends JpaRepository<Partner,Long> {

    @Query("select u from Partner u where u.status = 1")
    List<Partner> select();

    List<Partner> findByUserIdAndIsConfirm(Long userId,Boolean isConfirm);

    @Query("select u from Partner u where u.status = 1 and u.userId = ?1 and u.isConfirm=true")
    List<Partner> findByUserId(Long userId);

    @Query("select u from Partner u where u.status = 1 and u.userId = ?1 and u.isConfirm=false")
    List<Partner> findByUserIdNotConfirmYet(Long userId);

    @Query("select u from Partner u where u.status = 1 and u.partnerId = ?1 and u.isConfirm=false order by u.createdAt desc")
    List<Partner> findRequestParnter(Long partnerId);

    @Query("select u from Partner u where u.status = 1 and u.userId = ?1 and u.partnerId = ?2")
    Partner findByUserIdAndPartnerId(Long userId,Long partnerId);

}
