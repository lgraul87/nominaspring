package repository;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import domain.Employee;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository(value = "employeeDao")
public class JPAEmployeeDAO implements EmployeeDao {

	private EntityManager em = null;

	@PersistenceContext
	public void setEntityManager(EntityManager em) {
		this.em = em;
	}

	@Transactional(readOnly = true)
	@SuppressWarnings("unchecked")
	public List<Employee> getEmployeeList() {
		return em.createQuery("select e from Employee e order by e.id").getResultList();
	}

	

	@Transactional(readOnly = false)
	public void saveEmployee(Employee employee) {
		em.merge(employee);
	}

}