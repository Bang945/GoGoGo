package edu.fudan.nisl.jaq.dao;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import edu.fudan.nisl.jaq.model.Users;
@Repository
public class UserDAO extends GenericHibernateDAO<Users,Long> {
	
	 
 
	public Users getUserByName(String name){
		Query query = this.getSessionFactory().getCurrentSession().createQuery("from Users as r where r.usersName = ? ");
		query.setString(0, name);
		Users result = (Users) query.uniqueResult();	
		 
		return result;
	}
}
