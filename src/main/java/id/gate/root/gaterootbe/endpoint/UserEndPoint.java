package id.gate.root.gaterootbe.endpoint;

import id.gate.root.gaterootbe.data.dto.request.RequestLoginDTO;
import id.gate.root.gaterootbe.data.dto.request.RequestPhotoDTO;
import id.gate.root.gaterootbe.data.dto.request.RequestUserDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/users")
public interface UserEndPoint {

    @GetMapping("")
    ResponseEntity findAll();

    @GetMapping("/{id}")
    ResponseEntity findById(@PathVariable("id")  Long id);

    @GetMapping("/gate/{username}")
    ResponseEntity findByUsername(@PathVariable("username")  String  username);

    @PostMapping("/gate/login")
    ResponseEntity findByUsernameAndPassword(@RequestBody RequestLoginDTO loginDTO);

    @PostMapping("")
    ResponseEntity save(@RequestBody RequestUserDTO requestUserDTO);

    @DeleteMapping("/{id}")
    ResponseEntity delete(@PathVariable("id") Long id);

    @PatchMapping("/{id}")
    ResponseEntity update(@RequestBody RequestUserDTO requestUserDTO, @PathVariable("id") Long id);

    @GetMapping("/search/{search}")
    ResponseEntity findByFirstNameOrLastName(@PathVariable("search")  String  search);

    @GetMapping("/search")
    ResponseEntity findAllSearch();

    @PostMapping("/photo_profile/update")
    ResponseEntity updatePhotoProfile(@RequestBody RequestPhotoDTO requestPhotoDTO);

    @PostMapping("/photo_cover/update")
    ResponseEntity updatePhotoCover(@RequestBody RequestPhotoDTO requestPhotoDTO);


}
