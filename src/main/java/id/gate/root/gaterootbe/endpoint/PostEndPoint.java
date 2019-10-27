package id.gate.root.gaterootbe.endpoint;


import id.gate.root.gaterootbe.data.dto.request.RequestPostDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RequestMapping("/posts")
public interface PostEndPoint {

    @GetMapping("")
    ResponseEntity findAll();

    @GetMapping("/details/{userId}")
    ResponseEntity findAllWithDetail(@PathVariable("userId") Long userId);

    @GetMapping("/{id}")
    ResponseEntity findById(@PathVariable("id")  Long id);

    @PostMapping("")
    ResponseEntity save(@RequestBody RequestPostDTO requestPostDTO);

    @DeleteMapping("/{id}")
    ResponseEntity delete(@PathVariable("id") Long id);

    @PatchMapping("/{id}")
    ResponseEntity update(@RequestBody RequestPostDTO requestPostDTO, @PathVariable("id") Long id);
}
