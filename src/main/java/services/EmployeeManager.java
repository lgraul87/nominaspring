package services;

import java.io.Serializable;

import java.util.List;

import domain.Employee;

public interface EmployeeManager extends Serializable{

	public List<Employee> getEmployees();

	
}
