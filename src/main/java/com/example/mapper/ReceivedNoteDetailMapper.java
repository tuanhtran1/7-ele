package com.example.mapper;

import com.example.dto.ReceivedNoteDTO;
import com.example.dto.ReceivedNoteDetailDTO;
import com.example.entity.ReceivedNoteDetailEntity;
import com.example.entity.ReceivedNoteEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReceivedNoteDetailMapper {

    @Autowired
    private ModelMapper modelMapper;
	
	public ReceivedNoteDetailDTO toDTO(ReceivedNoteDetailEntity entity) {
		ReceivedNoteDetailDTO receivedNoteDTO = new ReceivedNoteDetailDTO();
		receivedNoteDTO = modelMapper.map(entity, ReceivedNoteDetailDTO.class);
		return receivedNoteDTO;
	}

}