package com.example.repository;

import com.example.entity.ReceivedNoteDetailEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReceivedNoteDetailRepository extends JpaRepository<ReceivedNoteDetailEntity, Long> {
	
	List<ReceivedNoteDetailEntity> findAllByReceivedNote_Id(Long id);
}
