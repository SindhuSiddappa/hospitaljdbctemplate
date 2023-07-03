package sample.service.impl;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import sample.dao.PatientDao;
import sample.model.User;
import sample.service.PatientService;

public class PatientServiceImpl implements PatientService {
private PatientDao patientDao;


    @Override
    public int role(User user) {
        user.setPassword(encryptPassword(user.getPassword()));
        return patientDao.role(user);
    }
    public String encryptPassword(String password)
    {
        BCryptPasswordEncoder bCryptPasswordEncoder=new BCryptPasswordEncoder();
        String hashcode=bCryptPasswordEncoder.encode(password);
        return hashcode;
    }

    public PatientDao getPatientDao() {
        return patientDao;
    }

    public void setPatientDao(PatientDao patientDao) {
        this.patientDao = patientDao;
    }
}
