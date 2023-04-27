package cc.mikaka.dockerdemo.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Api
@RestController
@RequestMapping("hello")
public class HelloController {
    @ApiOperation("say hello")
    @GetMapping
    public String say() {
        return "hello";
    }
}
