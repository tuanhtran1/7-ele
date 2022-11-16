package com.example.service;

import com.example.dto.ReceivedNoteDTO;
import com.example.dto.request.ReceivedNoteRequest;

import java.util.List;

public interface IReceivedNoteService {
	
	void addReceivedNote(ReceivedNoteRequest dto);
	
	void deleteReceiveNote(Long id);
	
	List<ReceivedNoteDTO> getAllList();
}
