package id.gate.root.gaterootbe.endpoint.impl;

import id.gate.root.gaterootbe.data.dto.request.RequestChatDTO;
import id.gate.root.gaterootbe.endpoint.ChatEndPoint;
import id.gate.root.gaterootbe.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ChatEndPointImpl implements ChatEndPoint {

    @Autowired
    private ChatService  chatService;

    @Override
    public ResponseEntity findAll() {
        return null;
    }

    @Override
    public ResponseEntity findById(@PathVariable("id") Long id) {
        return null;
    }

    @Override
    public ResponseEntity findBySpecific(@RequestParam("from") Long from, @RequestParam("to") Long to) {
        return chatService.findSpecificChat(from,to);
    }

    @Override
    public ResponseEntity save(@RequestBody RequestChatDTO requestChatDTO) {
        return chatService.save(requestChatDTO);
    }

    @Override
    public ResponseEntity delete(@PathVariable("id") Long id) {
        return chatService.delete(id);
    }

    @Override
    public ResponseEntity update(@RequestBody RequestChatDTO requestChatDTO,@PathVariable("id") Long id) {
        return chatService.update(requestChatDTO,id);
    }
}
