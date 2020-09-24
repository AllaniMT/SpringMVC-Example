package databaseInfo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import entity.Employee;

public class DataBaseTemplate {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int insertEmployee(Employee employee) {
        String insertSqlQuery = "insert into employee" +
            " ( `phone`, `age`, `weight`, `height`, `fName`, " +
            "`lName`, `gender`, `eMail`, `city`, `country`) values('" +
            employee.getPhone() + "','" + employee.getAge() +
            "','" + employee.getWeight() + "','" + employee.getHeight() + "','" +
            employee.getfName() + "','" + employee.getlName() +
            "','" + employee.getGender() + "','" + employee.geteMail() +
            "','" + employee.getCity() + "','" + employee.getCountry() + "')";
        return jdbcTemplate.update(insertSqlQuery);
    }

    public int updateEmployee(Employee employee) {
        String updateSqlQuery = "UPDATE `employee` SET `phone`=" + employee.getPhone() +
            ", `age`=" + employee.getAge() + ", `weight`=" + employee.getWeight() +
            ", `height`=" + employee.getHeight() + ", `fName`=\"" + employee.getfName() +
            "\", `lName`=\"" + employee.getlName() + "\", `gender`=\"" + employee.getGender() +
            "\", `email`=\"" + employee.geteMail() + "\", `city`=\"" + employee.getCity() +
            "\", `country`=\"" + employee.getCountry() + "\" WHERE id=" + employee.getId();
        return jdbcTemplate.update(updateSqlQuery);
    }

    public int deleteDeveloper(int id) {
        String deleteSqlQuery = "DELETE FROM `employee` WHERE id=" + id;
        return jdbcTemplate.update(deleteSqlQuery);
    }

    public Employee getEmployeeById(int id) {
        String deleteSqlQuery = "SELECT * FROM `employee` WHERE id=?";
        return jdbcTemplate.queryForObject(deleteSqlQuery, new Object[] {
            id
        }, new BeanPropertyRowMapper < Employee > (Employee.class));
    }

    public List < Employee > viewAllEmployee() {
        String readSqlQuery = "SELECT * from employee";
        return jdbcTemplate.query(readSqlQuery, new RowMapper < Employee > () {

            @Override
            public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
                Employee employee = new Employee();

                employee.setId(rs.getInt(1));
                employee.setPhone(rs.getInt(2));
                employee.setAge(rs.getInt(3));
                employee.setWeight(rs.getFloat(4));
                employee.setHeight(rs.getFloat(5));
                employee.setfName(rs.getString(6));
                employee.setlName(rs.getString(7));
                employee.setGender(rs.getString(8));
                employee.seteMail(rs.getString(9));
                employee.setCity(rs.getString(10));
                employee.setCountry(rs.getString(11));

                return employee;
            }
        });

    }

}