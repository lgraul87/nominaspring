package repository;

import java.util.List;

import domain.Employee;

public interface EmployeeDao {

	public List<Employee> getEmployeeList();

	public void saveEmployee(Employee employee);

}
