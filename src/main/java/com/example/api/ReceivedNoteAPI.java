package com.example.api;

import com.example.dto.ReceivedNoteDTO;
import com.example.dto.ReceivedNoteDetailDTO;
import com.example.dto.request.ReceivedNoteRequest;
import com.example.service.IReceivedNoteDetailService;
import com.example.service.IReceivedNoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ReceivedNoteAPI {
	
	@Autowired
	private IReceivedNoteService receivedNoteService;
	
	@Autowired
	private IReceivedNoteDetailService receivedNoteDetailService;
	
	@PostMapping("/received-note")
	public ResponseEntity<Void> insertReceivedNote(@RequestBody ReceivedNoteRequest receivedNoteRequest) {
		receivedNoteService.addReceivedNote(receivedNoteRequest);
		return ResponseEntity.noContent().build();
	}
	
	@DeleteMapping("/received-note")
	public ResponseEntity<Void> deleteReceivedNote(@RequestParam Long id){
		receivedNoteService.deleteReceiveNote(id);
		return ResponseEntity.noContent().build();
	}
	
	@GetMapping("/received-notes")
	public List<ReceivedNoteDTO> getListReceivedNote(){
		return receivedNoteService.getAllList();
	}
	
	//detail
	
	@GetMapping("/received-detail")
	public List<ReceivedNoteDetailDTO> getReceivedNoteDetail(@RequestParam Long id){
		return receivedNoteDetailService.getListReceivedNoteDetail(id);
	}
	
	@PutMapping("/received-detail")
	public ResponseEntity<Void> updatedNoteDetail(@RequestBody ReceivedNoteDetailDTO dto){
		receivedNoteDetailService.updateReceivedNoteDetail(dto);
		return ResponseEntity.noContent().build();
	}
	
	@DeleteMapping("/received-note-detail")
	public ResponseEntity<Void> deleteReceivedNoteDetail(@RequestParam Long id){
		receivedNoteDetailService.deleteReceivedNoteDetail(id);
		return ResponseEntity.noContent().build();
	}
	
}
