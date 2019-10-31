package id.gate.root.gaterootbe.service.impl;

import id.gate.root.gaterootbe.dao.ChatDAO;
import id.gate.root.gaterootbe.dao.UserDAO;
import id.gate.root.gaterootbe.data.dto.request.RequestChatDTO;
import id.gate.root.gaterootbe.data.dto.response.ResponseChatDTO;
import id.gate.root.gaterootbe.data.json.*;
import id.gate.root.gaterootbe.data.model.Chat;
import id.gate.root.gaterootbe.data.model.User;
import id.gate.root.gaterootbe.mapper.ChatMapper;
import id.gate.root.gaterootbe.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class ChatServiceImpl implements ChatService {

    @Autowired
    private ChatDAO chatDAO;

    @Autowired
    private ChatMapper chatMapper;

    @Autowired
    private UserDAO userDAO;


    @Override
    public ResponseEntity findAll() {
        return null;
    }

    @Override
    public ResponseEntity save(RequestChatDTO requestChatDTO) {
        Chat chat = chatMapper.reverse(requestChatDTO);
        chatDAO.save(chat);
        return ResponseEntity.ok(new ResponseSave(chat));
    }

    @Override
    public ResponseEntity update(RequestChatDTO requestChatDTO, Long id) {
        Chat chat = chatMapper.reverse(requestChatDTO);

        Chat cek = chatDAO.get(id);

        if(cek==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Chat not found"));
        }

        chat.setId(id);
        chat.setUpdateAt(new Date());

        chatDAO.save(chat);
        return ResponseEntity.ok(new ResponseUpdate(chat));
    }

    @Override
    public ResponseEntity delete(Long id) {
        Chat chat = chatDAO.get(id);

        if(chat==null){
            return ResponseEntity.badRequest().body(new ResponseMessage("Chat not found"));
        }

        chat.setStatus(0);
        chat.setDeleteAt(new Date());

        chatDAO.save(chat);
        return ResponseEntity.ok(new ResponseDelete(chat));
    }

    @Override
    public ResponseEntity findById(Long id) {
        return null;
    }

    @Override
    public ResponseEntity findSpecificChat(Long userId, Long partnerId) {
        List<ResponseChatDTO> responseChatDTOList = new ArrayList<>();
        List<Chat> chats = chatDAO.selectSpecificChat(userId,partnerId);
        for(Chat chat: chats){

            User from = userDAO.get(chat.getUserId());

            User to = userDAO.get(chat.getPartnerId());

            ResponseChatDTO response  = chatMapper.convert(chat);
            response.setTo(to);
            response.setFrom(from);

            responseChatDTOList.add(response);
        }
        return ResponseEntity.ok(new ResponseData(responseChatDTOList.size(),"chats",responseChatDTOList));
    }
}
