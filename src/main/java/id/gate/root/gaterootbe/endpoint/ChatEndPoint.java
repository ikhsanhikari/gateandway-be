package id.gate.root.gaterootbe.endpoint;

import id.gate.root.gaterootbe.data.dto.request.RequestChatDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/chats")
public interface ChatEndPoint {

    @GetMapping("")
    ResponseEntity findAll();

    @GetMapping("/{id}")
    ResponseEntity findById(@PathVariable("id")  Long id);

    @GetMapping("/specific")
    ResponseEntity findBySpecific(@RequestParam("from")  Long from, @RequestParam("to") Long to);

    @PostMapping("")
    ResponseEntity save(@RequestBody RequestChatDTO requestChatDTO);

    @DeleteMapping("/{id}")
    ResponseEntity delete(@PathVariable("id") Long id);

    @PatchMapping("/{id}")
    ResponseEntity update(@RequestBody RequestChatDTO requestChatDTO, @PathVariable("id") Long id);
}
