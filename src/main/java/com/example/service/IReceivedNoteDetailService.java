package com.example.service;

import com.example.dto.ReceivedNoteDetailDTO;

import java.util.List;

public interface IReceivedNoteDetailService {
	
	List<ReceivedNoteDetailDTO> getListReceivedNoteDetail(Long id);
	
	void deleteReceivedNoteDetail(Long id);
	
	void updateReceivedNoteDetail(ReceivedNoteDetailDTO dto);
}
