package sample.rest.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.client.RestTemplate;
import sample.model.Patient;
import sample.rest.PatientRest;

import java.util.List;

public class PatientRestImpl implements PatientRest {
    @Autowired
    private RestTemplate restTemplate;

    public RestTemplate getRestTemplate() {
        return restTemplate;
    }

    public void setRestTemplate(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }


     String url="http://localhost:8080/hospitalserversidejdbctemplate_war_exploded/getall";

    public List<Patient> getAll() {
         List<Patient> patient= restTemplate.getForObject(url,List.class);
         return patient;
    }

String url1="http://localhost:8080/hospitalserversidejdbctemplate_war_exploded/getPatId/";
    public Patient findPatientById(int id){
        Patient patient=getRestTemplate().getForObject(url1+id,Patient.class);
        return patient;
    }


    String url3="http://localhost:8080/hospitalserversidejdbctemplate_war_exploded/insert";
    public int insert(Patient patient){
        return restTemplate.postForObject(url3,patient,Integer.class);
    }

  String url2="http://localhost:8080/hospitalserversidejdbctemplate_war_exploded/delete/";
    public int delete(int id){
        try {
            restTemplate.delete(url2+id);
            return 1;
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return 0;
   }
String url4="http://localhost:8080/hospitalserversidejdbctemplate_war_exploded/update/";
public int update(Patient patient){
    try{
        restTemplate.put(url4,patient);
        return 1;
    }
    catch (Exception e)
    {
        e.printStackTrace();
    }
    return 0;
}

    String url5="http://localhost:8080/hospitalserversidejdbctemplate_war_exploded/getPatName/";
    public Patient findPatientByName(String name){
        Patient patient=getRestTemplate().getForObject(url1+name,Patient.class);
        return patient;
    }


}
