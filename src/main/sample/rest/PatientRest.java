package sample.rest;

import sample.model.Patient;


import java.util.List;

public interface PatientRest {
    public List<Patient> getAll();
    public Patient findPatientById(int id);
    public int insert(Patient patient);
    public int delete(int id);
    public int update(Patient patient);
    public Patient findPatientByName(String name);


}
