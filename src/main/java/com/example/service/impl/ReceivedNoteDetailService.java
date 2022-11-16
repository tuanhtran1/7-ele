package com.example.service.impl;

import com.example.dto.ReceivedNoteDetailDTO;
import com.example.entity.ProductEntity;
import com.example.entity.ReceivedNoteDetailEntity;
import com.example.exception.NotFoundException;
import com.example.mapper.ReceivedNoteDetailMapper;
import com.example.repository.ProductRepository;
import com.example.repository.ReceivedNoteDetailRepository;
import com.example.service.IReceivedNoteDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ReceivedNoteDetailService implements IReceivedNoteDetailService {
	
	@Autowired
	private ReceivedNoteDetailRepository receivedNoteDetailRepository;
	
	@Autowired
	private ReceivedNoteDetailMapper receivedNoteDetailMapper;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public List<ReceivedNoteDetailDTO> getListReceivedNoteDetail(Long id) {
		
		return receivedNoteDetailRepository.findAllByReceivedNote_Id(id)
				.stream().map(receivedNoteDetailMapper::toDTO)
				.collect(Collectors.toList());
	}
	
	@Override
	public void deleteReceivedNoteDetail(Long id) {
		Optional<ReceivedNoteDetailEntity> receivedNoteDetailOtp = receivedNoteDetailRepository.findById(id);
		if(!receivedNoteDetailOtp.isPresent()) throw new NotFoundException("can find received note detail");
		else {
			ProductEntity productEntity = receivedNoteDetailOtp.get().getProduct();
			productEntity.setQuantity(productEntity.getQuantity() - receivedNoteDetailOtp.get().getTotal());
			receivedNoteDetailRepository.delete(receivedNoteDetailOtp.get());
		}
	}
	
	@Override
	public void updateReceivedNoteDetail(ReceivedNoteDetailDTO dto) {
		Optional<ReceivedNoteDetailEntity> receivedNoteDetailOtp = receivedNoteDetailRepository.findById(dto.getId());
		if(!receivedNoteDetailOtp.isPresent()) throw new NotFoundException("can find received note detail");
		else {
			ReceivedNoteDetailEntity receivedNoteDetail = receivedNoteDetailOtp.get();
			ProductEntity productEntity = receivedNoteDetail.getProduct();
			productEntity.setQuantity(productEntity.getQuantity() - receivedNoteDetail.getTotal() + dto.getTotal());
			
			receivedNoteDetail.setTotal(dto.getTotal());
			receivedNoteDetail.setPriceReceive(dto.getPriceReceive());
			receivedNoteDetail.setTotalPrice(receivedNoteDetail.getTotal() * receivedNoteDetail.getPriceReceive());
			
			receivedNoteDetail.setProduct(productEntity);
			receivedNoteDetailRepository.save(receivedNoteDetail);
		}
	}
}
