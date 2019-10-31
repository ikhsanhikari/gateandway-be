package id.gate.root.gaterootbe.mapper;

import id.gate.root.gaterootbe.data.dto.request.RequestChatDTO;
import id.gate.root.gaterootbe.data.dto.response.ResponseChatDTO;
import id.gate.root.gaterootbe.data.model.Chat;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class ChatMapper implements BaseMapper<Chat, RequestChatDTO>{

    @Override
    public Chat reverse(RequestChatDTO source) {
        Chat result = new Chat();

        result.setMessage(source.getMessage());
        result.setUserId(source.getUserId());
        result.setPartnerId(source.getPartnerId());
        result.setUpdateAt(new Date());
        result.setStatus(1);
        result.setCreatedAt(new Date());

        return result;
    }

    public ResponseChatDTO convert(Chat source){
        ResponseChatDTO result = new ResponseChatDTO();
        result.setId(source.getId());
        result.setCreatedAt(source.getCreatedAt());
        result.setDeleteAt(source.getDeleteAt());
        result.setMessage(source.getMessage());
        result.setPartnerId(source.getPartnerId());
        result.setStatus(source.getStatus());
        result.setUpdateAt(source.getUpdateAt());
        result.setUserId(source.getUserId());
        return result;
    }
}
