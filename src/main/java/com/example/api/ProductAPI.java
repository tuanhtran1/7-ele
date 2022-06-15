package com.example.api;

import com.example.dto.ProductDTO;
import com.example.dto.request.ProductRequest;
import com.example.service.IProductService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
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

    @GetMapping("/product")
    public ProductDTO getProduct(@RequestParam Long id) {
        return productService.findById(id);
    }

    @PostMapping("/product")
    public ProductDTO addProduct(@RequestParam("productRequest") String productRequestJsonString,
                                 @RequestParam(name = "image",required = false) MultipartFile image) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        ProductRequest productRequest = null;
        try{
            productRequest = objectMapper.readValue(productRequestJsonString, ProductRequest.class);
            productRequest.setFileImg(image);
        }
        catch (Exception e){ e.printStackTrace(); }

        return productService.insert(productRequest);
    }

    @PutMapping("/product")
    public ProductDTO updateProduct(@RequestBody ProductRequest productRequest){
        return productService.update(productRequest);
    }

    @DeleteMapping("/product")
    public void deleteProduct(@RequestParam Long id) {
        productService.delete(id);
    }
}
