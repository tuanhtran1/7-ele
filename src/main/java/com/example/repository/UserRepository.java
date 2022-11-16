package com.example.repository;

import com.example.entity.UserEntity;
import com.example.report.StatisticProduct;
import com.example.report.StatisticUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findByEmailAndStatus(String email, Integer stt);
    
    UserEntity findByEmail(String email);
	
	@Query(value = " SELECT count(*) totalUser, " +
			"coalesce(sum(CASE when u.roleid = 2 THEN 1 ELSE 0 END), 0) totalCustomer " +
			"FROM user AS u", nativeQuery = true)
	StatisticUser getStatisticUser();
}