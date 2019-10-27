package id.gate.root.gaterootbe.endpoint.impl;

import id.gate.root.gaterootbe.data.dto.request.RequestLoginDTO;
import id.gate.root.gaterootbe.data.dto.request.RequestUserDTO;
import id.gate.root.gaterootbe.endpoint.UserEndPoint;
import id.gate.root.gaterootbe.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.constraints.NotNull;

@RestController
public class UserEndPointImpl implements UserEndPoint {

    @Autowired
    private UserService userService;

    @Override
    public ResponseEntity findAll() {
        return userService.findAll();
    }

    @Override
    public ResponseEntity findById(@PathVariable("id") Long id) {
        return userService.findById(id);
    }

    @Override
    public ResponseEntity findByUsername(@PathVariable("username") String username) {
        return userService.findByUsername(username);
    }

    @Override
    public ResponseEntity findByUsernameAndPassword(@RequestBody @NotNull RequestLoginDTO loginDTO) {
        return userService.findByEmailAndPassword(loginDTO.getUsername(),loginDTO.getPassword());
    }

    @Override
    public ResponseEntity save(@RequestBody RequestUserDTO requestUserDTO) {
        return userService.save(requestUserDTO);
    }

    @Override
    public ResponseEntity delete(@PathVariable("id") Long id) {
        return userService.delete(id);
    }

    @Override
    public ResponseEntity update(@RequestBody RequestUserDTO requestUserDTO, @PathVariable("id") Long id) {
        return userService.update(requestUserDTO,id);
    }

    @Override
    public ResponseEntity findByFirstNameOrLastName(@PathVariable("search") String search) {
        return userService.findUserByLastNameOrFirstName(search);
    }

    @Override
    public ResponseEntity findAllSearch() {
        return userService.findAllSearch();
    }


}
