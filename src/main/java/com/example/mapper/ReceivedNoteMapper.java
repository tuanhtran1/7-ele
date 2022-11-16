package com.example.mapper;

import com.example.dto.ReceivedNoteDTO;
import com.example.entity.ReceivedNoteEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReceivedNoteMapper {

    @Autowired
    private ModelMapper modelMapper;
	
	public ReceivedNoteDTO toDTO(ReceivedNoteEntity entity) {
		ReceivedNoteDTO receivedNoteDTO = new ReceivedNoteDTO();
		receivedNoteDTO = modelMapper.map(entity, ReceivedNoteDTO.class);
		return receivedNoteDTO;
	}

}