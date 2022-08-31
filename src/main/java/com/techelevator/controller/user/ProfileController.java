package com.techelevator.controller.user;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * SiteController
 */
@Controller
public class ProfileController {
    @Autowired
    private AuthProvider auth;

    @RequestMapping(path = "/profile", method = RequestMethod.GET)
    public String privatePage(ModelMap map) throws UnauthorizedException {
        if (auth.userHasRole(new String[] { "admin", "user" })) {
            map.put("user", auth.getCurrentUser());
            return "user/profile";
        } else {
            throw new UnauthorizedException();
        }
    }
}
