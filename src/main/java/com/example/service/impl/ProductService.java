package com.example.service.impl;

import com.example.constant.SystemConstant;
import com.example.dto.ProductDTO;
import com.example.dto.request.ProductRequest;
import com.example.entity.ProductEntity;
import com.example.exception.NotFoundException;
import com.example.mapper.ProductMapper;
import com.example.repository.CategoryRepository;
import com.example.repository.ProductRepository;
import com.example.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ProductService implements IProductService {

    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<ProductDTO> findAll() {
        List<ProductDTO> productDTOs = new ArrayList<>();
        List<ProductEntity> productEntities = productRepository.findAll();
        for (ProductEntity item : productEntities) {
            productDTOs.add(productMapper.toDTO(item));
        }
        return productDTOs;
    }

    @Override
    public ProductDTO findById(Long id) {
        Optional<ProductEntity> productOtp = productRepository.findById(id);
        if(!productOtp.isPresent()) {
            throw new NotFoundException("Product is not exist");
        }
        return productMapper.toDTO(productOtp.get());
    }

    @Override
    @Transactional
    public ProductDTO insert(ProductRequest productRequest) {
        ProductEntity productEntity = productMapper.toEntity(productRequest);
        productEntity.setCategory(categoryRepository.findByCode(productRequest.getCategoryCode()));
        MultipartFile fileImg = productRequest.getFileImg();
        String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
        String fileName = date + fileImg.getOriginalFilename();

        Path fileNameAndPath = Paths.get(SystemConstant.UPLOAD_IMG_DIR_PRODUCT, fileName);
        try {
            Files.write(fileNameAndPath, fileImg.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        productEntity.setSalePrice((productRequest.getDiscount() == 0)? productEntity.getPrice():productEntity.getPrice() - (productEntity.getPrice()*(productRequest.getDiscount()/100)));
        productEntity.setImage(fileName);
        return productMapper.toDTO(productRepository.save(productEntity));
    }

    @Override
    @Transactional
    public ProductDTO update(ProductRequest productRequest) {
        ProductEntity productEntity = productRepository.findById(productRequest.getId()).get();
        productEntity.setName(productRequest.getName());
        productEntity.setDescription(productRequest.getDescription());
//        productEntity.setImage(productRequest.getImage());
        productEntity.setCategory(categoryRepository.findByCode(productRequest.getCategoryCode()));
        productEntity.setPrice(productRequest.getPrice());
        productEntity.setDiscount(productRequest.getDiscount());
        productEntity.setSalePrice((productRequest.getDiscount() == 0)? productEntity.getPrice():productEntity.getPrice() - (productEntity.getPrice()*(productRequest.getDiscount()/100)));
        productEntity.setQuantity(productRequest.getQuantity());

        return productMapper.toDTO(productRepository.save(productEntity));
    }

    @Override
    @Transactional
    public void delete(Long id) {
        File imgProduct = new File(SystemConstant.UPLOAD_IMG_DIR_PRODUCT + File.separator + productRepository.findById(id).get().getImage());
        if (imgProduct.delete()) {
            System.out.println("Delete Success !");
        } else System.out.println("Cannot delete file !");
        productRepository.deleteById(id);
    }

    @Override
    public List<ProductDTO> findByCategoryId(Long id) {
        return productRepository.findByCategory_Id(id).stream()
                .map(item -> productMapper.toDTO(item))
                .collect(Collectors.toList());
    }

    @Override
    public List<ProductDTO> getListOfDiscount() {
        return productRepository.findByDiscountGreaterThan(0F).stream()
                .map(item -> productMapper.toDTO(item))
                .collect(Collectors.toList());
    }

    @Override
    public List<ProductDTO> getListNewAdd() {
        return productRepository.getProductNewAdd().stream()
                .map(item -> productMapper.toDTO(item))
                .collect(Collectors.toList());
    }
}
