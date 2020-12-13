package services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import domain.Employee;
import repository.EmployeeDao;

@Component
public class SimpleEmployeeManager implements EmployeeManager{

    private static final long serialVersionUID = 1L;

    @Autowired
    private EmployeeDao employeeDao;
    
    public void setEmployeeDao(EmployeeDao employeeDao) {
        this.employeeDao = employeeDao;
    }

    
    public List<Employee> getEmployees() {
        return employeeDao.getEmployeeList();
    }


	
	

}
