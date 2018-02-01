package com.kilicaslan.enes.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kilicaslan.enes.dao.UserDao;
import com.kilicaslan.enes.entity.User;

@Service
public class UserService {
	
	@Autowired
	@Qualifier("fakeDb")
	private UserDao userDao ;
	
	public Collection<User> getUsers(){
		return userDao.getUsers();
	}
	
	public User getUser(int id) {
		return userDao.getUser(id);
	}

	public void deleteUser(int id) {
		userDao.deleteUser(id);
	}
	
	public void updateUser(User other) {
		this.userDao.updateUser(other);
	}

	public void addUser(User user) {
		this.userDao.addUser(user);
	}
	
	
}
