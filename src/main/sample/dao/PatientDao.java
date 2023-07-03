package sample.dao;


import sample.model.User;



public interface PatientDao {

//role for security
    public int role(User user);
}
