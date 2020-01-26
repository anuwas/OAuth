package anu.pam.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("unused")
@Controller
public class LoginController {

    @Autowired
    private AuthController controller;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    protected String login(HttpServletRequest request, HttpServletResponse response) {
        String redirectUri = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/auth/callback";
        String authorizeUrl = controller.buildAuthorizeUrl(request, response, redirectUri);
        return "redirect:" + authorizeUrl;
    }

}