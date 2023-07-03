package sample.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.*;

import org.springframework.web.servlet.ModelAndView;
import sample.model.Patient;
import sample.rest.impl.PatientRestImpl;
import sample.service.PatientService;
import sample.validator.PatientValidator;
/*import validator.PatientValidator;*/

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.security.Principal;
import java.util.List;


@Controller
public class CreatePatientEntryController {
@Autowired
    private PatientRestImpl patientRest;
    @Autowired
    private PatientService patientService;

    @Autowired
    private PatientValidator patientValidator;
    @GetMapping("/form")
    public String getPatientRegisterForm(Model model, @ModelAttribute("patient") Patient patient, HttpServletRequest request) {
        Cookie[] cookies=request.getCookies();
        for(Cookie temp:cookies){
            if("username".equals(temp.getName())){
                String myUsername=temp.getValue();
                patient.setPatName(myUsername);
            }
        }

       /* model.addAttribute("patient",new Patient());*/
        return "registrationpage";
    }

    @PostMapping("/create")
    public ModelAndView getSuccessfullPage(@Valid @ModelAttribute("patient") Patient patient, BindingResult result, ModelAndView modelAndView,HttpServletResponse response)
    {
        patientValidator.validate(patient,result);

      //create the cookie
        Cookie cookie=new Cookie("username",patient.getPatName());
        Cookie cookie1=new Cookie("problem",patient.getPatProblem());

        cookie.setMaxAge(60*60*24);
        cookie1.setMaxAge(60*60*24);

        //add the cookie
        response.addCookie(cookie);
       response.addCookie(cookie1);


        if(result.hasErrors())
        {
            System.out.println( result.getAllErrors().toString());
            modelAndView.setViewName("registrationpage");
            return modelAndView;
        }

        else {

            int counter =patientRest.insert(patient);
            if (counter>0)
            {
                modelAndView.addObject("msg", "your registration succesfully completed");
            }
            else
            {
                modelAndView.addObject("msg", "please recheck ,your registration is not successful");
            }
            modelAndView.setViewName("successfulpage");
            return modelAndView;



        }

    }

    @GetMapping("/getAllPatients")
    public ModelAndView getAllRecords(ModelAndView modelAndView){

        List<Patient> patientList=patientRest.getAll();
        modelAndView.addObject("patientList",patientList);
        modelAndView.setViewName("read");
        return modelAndView;
    }

    @GetMapping("/getId/{id}")
    public ModelAndView show(@PathVariable int id , ModelAndView view)
    {
        Patient patient = patientRest.findPatientById(id);
        view.addObject("patient",patient);
        view.setViewName("getId");
        return view;
    }

    @RequestMapping(value="/editPatient/{patId}", method = RequestMethod.GET)
    public String updatePatient(@PathVariable int patId, Model model)
    {
        Patient patient=patientRest.findPatientById(patId);
        model.addAttribute("patient",patient);
        return "update";
    }

    @PostMapping("/editPatient/display")
    public String update(@ModelAttribute Patient patient ) {
        int counter = patientRest.update(patient);
        if (counter > 0) {
            String msg="your updation is successful";
        }
        return "updationSuccess";
    }

    @RequestMapping(value = "/deletePatient/{patId}", method = RequestMethod.GET)
    public String deletePatient(@PathVariable int patId)
    {
        patientRest.delete(patId);
        return "delete";
    }


    @GetMapping("/getName")
    public ModelAndView showByName(ModelAndView view, Principal principal)
    {
        String name=principal.getName();
        Patient patient = patientRest.findPatientByName(name);
        view.addObject("patient",patient);
        view.setViewName("getId");
        return view;
    }
}

