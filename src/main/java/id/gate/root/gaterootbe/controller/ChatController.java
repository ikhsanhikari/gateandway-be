package id.gate.root.gaterootbe.controller;


import id.gate.root.gaterootbe.data.dto.request.RequestNotifDTO;
import id.gate.root.gaterootbe.data.model.ChatMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import java.util.Date;
import java.text.SimpleDateFormat;

@Controller
public class ChatController {

	@Autowired
	private final SimpMessagingTemplate template;

	public ChatController(SimpMessagingTemplate template) {
		this.template = template;
	}

	@MessageMapping("/chat.register")
	@SendTo("/topic/public")
	public ChatMessage register(@Payload ChatMessage chatMessage, SimpMessageHeaderAccessor headerAccessor) {
		headerAccessor.getSessionAttributes().put("usernam", chatMessage.getSender());
		return chatMessage;
	}

	@MessageMapping("/chat.send")
	@SendTo("/topic/public")
	public ChatMessage sendMessage(@Payload ChatMessage chatMessage) {
		return chatMessage;
	}


	@MessageMapping("/notif/login")
	@SendTo("/topic/public")
	public RequestNotifDTO NotifLogin(@Payload RequestNotifDTO username,SimpMessageHeaderAccessor headerAccessor){
		headerAccessor.getSessionAttributes().put("username",username.getUsername());
		return username;
	}

	@MessageMapping("/notif/collabs")
	@SendTo("/topic/public")
	public RequestNotifDTO NotifCollabs(@Payload RequestNotifDTO username){
		return username;
	}

	@MessageMapping("/notif/confirm")
	@SendTo("/topic/public")
	public RequestNotifDTO NotifConfirm(@Payload RequestNotifDTO username){
		return username;
	}
}
