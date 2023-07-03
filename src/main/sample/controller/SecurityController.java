package sample.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import sample.model.Patient;
import sample.model.User;
import sample.service.PatientService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.security.Principal;

@Controller
public class SecurityController {

    @Autowired
    private PatientService patientService;

    @GetMapping("/login")
    public String customLogin(){
        return "login";
    }
    @GetMapping("/loginError")
    public String loginError(){
        return "loginError";
    }

    @GetMapping("/logout")
    public String logOut(){
        return "login";
    }

    @RequestMapping("/admin")
public String admin(){
        return "admin";
}

    @RequestMapping("/user")
    public String user(){
        return "user";
    }
    @RequestMapping("/doctor")
    public String doctor(){
        return "doctor";
    }

    @GetMapping("/register")
    public String getRegistration(){

        return "userRegistrationForm";
    }

    @PostMapping("/getRole")
    public ModelAndView getPassword(@ModelAttribute User user, ModelAndView modelAndView,HttpServletRequest request, HttpServletResponse response){

        HttpSession httpSession=request.getSession();
        httpSession.setAttribute("name1",user.getUsername());
        request.getSession().setMaxInactiveInterval(60*60*24);

        patientService.role(user);
        modelAndView.setViewName("userRegisterSuccess");

        return modelAndView;
    }


}

