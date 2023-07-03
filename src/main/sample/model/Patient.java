package sample.model;


import javax.validation.constraints.*;
import java.util.List;

public class Patient {
    private int patId;


//    @NotEmpty(message = " * give right input")
    private String patName;

   /*@Min(value = 18,message = " * age must be greater than 18")
   @Max(value = 25,message = " * age must be lesser than 25")*/
    private int patAge;

   @NotEmpty(message = " * Address can not be empty")
    private String patAddress;

   @Size(min = 10,max = 20,message = "* problem must contain min 10 characters and maxi 20 characters")
    private String patProblem;

   private User userName;

    public int getPatId() {
        return patId;
    }

    public void setPatId(int patId) {
        this.patId = patId;
    }

    public String getPatName() {
        return patName;
    }

    public void setPatName(String patName) {
        this.patName = patName;
    }

    public int getPatAge() {
        return patAge;
    }

    public void setPatAge(int patAge) {
        this.patAge = patAge;
    }

    public String getPatAddress() {
        return patAddress;
    }

    public void setPatAddress(String patAddress) {
        this.patAddress = patAddress;
    }

    public String getPatProblem() {
        return patProblem;
    }

    public void setPatProblem(String patProblem) {
        this.patProblem = patProblem;
    }


}
