package peaksoft.dockertest1;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class TestApi {

    @GetMapping("/hello")
    public String hello(){
        return "Hello";
    }

    @GetMapping("/bye")
    public String bye(){
        return "Bye";
    }

}
