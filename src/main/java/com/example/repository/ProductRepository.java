package com.example.repository;

import com.example.dto.request.ProductFilterRequest;
import com.example.entity.ProductEntity;
import com.example.report.StatisticProduct;
import com.example.repository.custom.ProductRepositoryCustom;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface ProductRepository extends JpaRepository<ProductEntity, Long>, ProductRepositoryCustom {

    List<ProductEntity> findByCategory_Id(Long id);

    List<ProductEntity> findByCategory_Code(String code);

    List<ProductEntity> findByDiscountGreaterThan(Float value);
    
    @Query("select p FROM ProductEntity p where 1 = 1"
		+" and ((:#{#filters.keyword} is null) or (lower(unaccent(p.name)) like concat('%',lower(unaccent(:#{#filters.keyword})),'%')))"
		+" and ((:#{#filters.categoryCode} is null) or p.category.code like :#{#filters.categoryCode})")
    Page<ProductEntity> findAllFilter(@RequestParam("filters")ProductFilterRequest filters, Pageable pageable);
	
	@Query(value = " SELECT count(*) totalProduct, " +
			"coalesce(sum(CASE when p.discount = 0 THEN 1 ELSE 0 END), 0) totalProductDiscount, " +
			"coalesce(sum(CASE when p.discount != 0 THEN 1 ELSE 0 END), 0) totalProductNoDiscount " +
			"FROM product AS p", nativeQuery = true)
	StatisticProduct getStatisticProduct();
	
}