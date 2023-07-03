package sample.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import sample.model.Patient;

@Component
public class PatientValidator implements Validator {
    @Override
    public boolean supports(Class<?> clazz) {
        return Patient.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        Patient patient = (Patient) target;
        int patAge = patient.getPatAge();
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "patAge", "patient.patAge.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "patName", "patient.patName.empty");

        if (patAge < 18 || patAge > 60) {
            errors.rejectValue("patAge", "patient.patAge.range.invalid","age  cannot be less than 18 or more than 60");
        }
    }
}








