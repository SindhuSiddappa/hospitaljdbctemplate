package sample.dao.impl;
import org.springframework.jdbc.core.JdbcTemplate;
import sample.dao.PatientDao;
import sample.model.User;



public class PatientDaoImpl implements PatientDao {
private JdbcTemplate jdbcTemplate;
    public PatientDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public int role(User user) {
        String query="insert into role_db values(?,?,?)";
        return jdbcTemplate.update(query,user.getUsername(),user.getPassword(),user.getRole());
    }
}
