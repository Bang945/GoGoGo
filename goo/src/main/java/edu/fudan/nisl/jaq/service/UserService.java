package edu.fudan.nisl.jaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

 




import edu.fudan.nisl.jaq.dao.UserDAO;
import edu.fudan.nisl.jaq.model.Users;

@Service
public class UserService {
	
	@Autowired
	UserDAO userDao;
	
	public Users getUserByName(String name){
		 return userDao.getUserByName(name);
	}
	
	public List<Users> getAllUsers(){
		return userDao.findAll();
	}
}
