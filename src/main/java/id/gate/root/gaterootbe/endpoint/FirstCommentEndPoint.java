package id.gate.root.gaterootbe.endpoint;

import id.gate.root.gaterootbe.data.dto.request.RequestFirstCommentDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/first_comments")
public interface FirstCommentEndPoint {

    @GetMapping("")
    ResponseEntity findAll();

    @GetMapping("/{id}")
    ResponseEntity findById(@PathVariable("id")  Long id);

    @PostMapping("")
    ResponseEntity save(@RequestBody RequestFirstCommentDTO requestFirstCommentDTO);

    @DeleteMapping("/{id}")
    ResponseEntity delete(@PathVariable("id") Long id);

    @PatchMapping("/{id}")
    ResponseEntity update(@RequestBody RequestFirstCommentDTO requestFirstCommentDTO, @PathVariable("id") Long id);

}
