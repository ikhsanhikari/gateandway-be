package id.gate.root.gaterootbe.service;

import id.gate.root.gaterootbe.data.dto.request.RequestChatDTO;
import org.springframework.http.ResponseEntity;

public interface ChatService {

    ResponseEntity findAll();

    ResponseEntity save(RequestChatDTO requestChatDTO);

    ResponseEntity update(RequestChatDTO requestChatDTO,Long id);

    ResponseEntity delete(Long id);

    ResponseEntity findById(Long id);

    ResponseEntity findSpecificChat(Long userId, Long partnerId);
}
