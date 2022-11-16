package com.example.repository;

import com.example.entity.ReceivedNoteEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReceivedNoteRepository extends JpaRepository<ReceivedNoteEntity, Long> {
}
