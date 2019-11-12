package id.gate.root.gaterootbe.endpoint;


import id.gate.root.gaterootbe.data.dto.request.RequestBusinessCategoryDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/business_category")
public interface BusinessCategoryEndPoint {

    @GetMapping("")
    ResponseEntity findAll();

    @GetMapping("/{id}")
    ResponseEntity findById(@PathVariable("id")  Long id);

    @PostMapping("")
    ResponseEntity save(@RequestBody RequestBusinessCategoryDTO requestBusinessCategoryDTO);

    @DeleteMapping("/{id}")
    ResponseEntity delete(@PathVariable("id") Long id);

    @PatchMapping("/{id}")
    ResponseEntity update(@RequestBody RequestBusinessCategoryDTO requestBusinessCategoryDTO, @PathVariable("id") Long id);
}
