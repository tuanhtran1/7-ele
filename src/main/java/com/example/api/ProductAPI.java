package com.example.api;

import com.example.dto.ProductDTO;
import com.example.dto.request.ProductFilterRequest;
import com.example.dto.request.ProductRequest;
import com.example.model.page.ProductPage;
import com.example.report.StatisticProduct;
import com.example.service.IProductService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ProductAPI {

    @Autowired
    private IProductService productService;

    @GetMapping("/products")
    public List<ProductDTO> getAllProduct() {
        return productService.findAll();
    }
	
	@GetMapping("/products-page")
	public ProductPage getAllProductPage(ProductFilterRequest request,
										 @RequestParam("page") int page,
										 @RequestParam("size") int size) {
		ProductPage result = new ProductPage();
		result.setPage(page);
		Pageable pageable = PageRequest.of(page - 1, size);
		Page<ProductDTO> pageDTO = productService.findAll(request,pageable);
		result.setResult(pageDTO.getContent());
		result.setTotalPage(pageDTO.getTotalPages());
		return result;
	}
	
    @GetMapping("/product")
    public ProductDTO getProduct(@RequestParam Long id) {
        return productService.findById(id);
    }

    @PostMapping("/product")
    public ProductDTO addProduct(@RequestParam("productRequest") String productRequestJsonString,
                                 @RequestParam(name = "image", required = false) MultipartFile image) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        ProductRequest productRequest = null;
        try {
            productRequest = objectMapper.readValue(productRequestJsonString, ProductRequest.class);
            productRequest.setFileImg(image);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return productService.insert(productRequest);
    }

    @PutMapping("/product")
    public ProductDTO updateProduct(@RequestBody ProductRequest productRequest) {
        return productService.update(productRequest);
    }

    @DeleteMapping("/product")
    public void deleteProduct(@RequestParam Long id) {
        productService.delete(id);
    }

    @GetMapping("/product/category/{id}")
    public List<ProductDTO> getProductByCategory(@PathVariable Long id) {
        return productService.findByCategoryId(id);
    }
    
    @GetMapping("/product/statistic")
	public StatisticProduct getStatisticProduct(){
    	return productService.getStatisticProduct();
	}
}
