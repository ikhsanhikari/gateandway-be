package id.gate.root.gaterootbe.dao;

import id.gate.root.gaterootbe.data.model.InterestPost;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface InterestPostDAO extends JpaRepository<InterestPost,Long> {

    @Query("select ip from InterestPost ip where ip.postId = ?1 and ip.isInterest = true")
    List<InterestPost> findByPostId(Long postId);
    List<InterestPost> findByUserId(Long userId);
    InterestPost findByUserIdAndPostId(Long userId,Long postId);

}
