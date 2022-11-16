package com.example.service.impl;

import com.example.dto.ReceivedNoteDTO;
import com.example.dto.request.ProductReceivedNoteRequest;
import com.example.dto.request.ReceivedNoteRequest;
import com.example.entity.ProductEntity;
import com.example.entity.ReceivedNoteDetailEntity;
import com.example.entity.ReceivedNoteEntity;
import com.example.exception.NotFoundException;
import com.example.mapper.ReceivedNoteMapper;
import com.example.repository.ProductRepository;
import com.example.repository.ReceivedNoteRepository;
import com.example.repository.UserRepository;
import com.example.repository.WareHouseRepository;
import com.example.service.IReceivedNoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ReceivedNoteService implements IReceivedNoteService {
	
	@Autowired
	private ReceivedNoteRepository receivedNoteRepository;
	
	@Autowired
	private WareHouseRepository wareHouseRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ReceivedNoteMapper receivedNoteMapper;
	
	@Override
	public void addReceivedNote(ReceivedNoteRequest dto) {
		
		ReceivedNoteEntity receivedNoteEntity = new ReceivedNoteEntity();
		receivedNoteEntity.setWarehouse(wareHouseRepository.findById(Long.parseLong(dto.getWarehouseId())).get());
		receivedNoteEntity.setUser(userRepository.findById(dto.getUserId()).get());
		
		receivedNoteRepository.save(receivedNoteEntity);
		List<ReceivedNoteDetailEntity> receivedNoteDetailEntityList = new ArrayList<>();
		for (ProductReceivedNoteRequest item: dto.getProducts()){
			ReceivedNoteDetailEntity receivedNoteDetail = new ReceivedNoteDetailEntity();
			ProductEntity product = productRepository.findById(Long.parseLong(item.getProductId())).get();
			receivedNoteDetail.setProduct(product);
			receivedNoteDetail.setReceivedNote(receivedNoteEntity);
			
			receivedNoteDetail.setTotal(Integer.parseInt(item.getTotal()));
			product.setQuantity(product.getQuantity() + receivedNoteDetail.getTotal()); //change total product
			
			receivedNoteDetail.setPriceReceive(Float.parseFloat(item.getPrice()));
			
			receivedNoteDetail.setTotalPrice(receivedNoteDetail.getPriceReceive() * receivedNoteDetail.getTotal());
			receivedNoteDetailEntityList.add(receivedNoteDetail);
		}
		receivedNoteEntity.setReceivedNoteDetail(receivedNoteDetailEntityList);
		receivedNoteEntity.setCreatedBy(receivedNoteEntity.getUser().getName());
		receivedNoteRepository.save(receivedNoteEntity);
	}
	
	@Override
	public void deleteReceiveNote(Long id) {
		Optional<ReceivedNoteEntity> receivedNoteOtp = receivedNoteRepository.findById(id);
		if(!receivedNoteOtp.isPresent()) throw new NotFoundException("Can find receive note !");
		else{
			for(ReceivedNoteDetailEntity item: receivedNoteOtp.get().getReceivedNoteDetail()){
				ProductEntity product = item.getProduct();
				product.setQuantity(product.getQuantity() - item.getTotal());
				productRepository.save(product);
			}
			receivedNoteRepository.delete(receivedNoteOtp.get());
		}
	}
	
	@Override
	public List<ReceivedNoteDTO> getAllList() {
		List<ReceivedNoteEntity> receivedNoteEntities = receivedNoteRepository.findAll();
		List<ReceivedNoteDTO> receivedNoteDTOS = new ArrayList<>();
		for(ReceivedNoteEntity receivedNoteEntity : receivedNoteEntities){
			receivedNoteDTOS.add(receivedNoteMapper.toDTO(receivedNoteEntity));
		}
		return receivedNoteDTOS;
	}
}
