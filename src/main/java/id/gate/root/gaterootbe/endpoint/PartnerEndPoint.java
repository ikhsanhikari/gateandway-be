package id.gate.root.gaterootbe.endpoint;

        import id.gate.root.gaterootbe.data.dto.request.RequestPartnerDTO;
        import org.springframework.http.ResponseEntity;
        import org.springframework.web.bind.annotation.*;

@RequestMapping("/partners")
public interface PartnerEndPoint {
    @PostMapping("/request")
    ResponseEntity save(@RequestBody RequestPartnerDTO requestPartnerDTO);

    @PostMapping("/confirm")
    ResponseEntity saveConfirm(@RequestBody RequestPartnerDTO requestPartnerDTO);

    @GetMapping("/{userId}")
    ResponseEntity findAllPartner(@PathVariable("userId") Long userId);

    @GetMapping("not-confirm/{userId}")
    ResponseEntity findAllPartnerNotConfirmYet(@PathVariable("userId") Long userId);

    @GetMapping("request/{partnerId}")
    ResponseEntity findRequestPartner(@PathVariable("partnerId") Long partnerId);

    @GetMapping("/check/{userId}/{partnerId}")
    ResponseEntity getByUserIdAndPartnerId(Long userId,Long partnerId );
}
