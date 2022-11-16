package com.example.repository;

import com.example.entity.OrderEntity;
import com.example.report.StatisticOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface OrderRepository extends JpaRepository<OrderEntity, Long> {
	
	List<OrderEntity> findByUser_Id(Long userId);
	
	@Query(value = " SELECT count(*) totalOrder," +
			"coalesce(sum(CASE when o.status like 'WAITING' THEN 1 ELSE 0 END), 0) totalWaiting, " +
			"coalesce(sum(CASE when o.status like 'ACCEPTED' THEN 1 ELSE 0 END), 0) totalAccepted, " +
			"coalesce(sum(CASE WHEN o.status like 'CANCELED' THEN 1 ELSE 0 END), 0) totalCanceled, " +
			"coalesce(sum(CASE WHEN o.status like 'ACCEPTED' THEN o.totalmoney ELSE 0 END), 0) totalMoney " +
			"FROM orders AS o", nativeQuery = true)
	StatisticOrder orderStatistic();
	
}
