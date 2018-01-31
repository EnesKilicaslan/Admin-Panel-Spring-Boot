package com.kilicaslan.enes.service;

import java.util.Collection;

import com.kilicaslan.enes.dao.UserDao;
import com.kilicaslan.enes.entity.User;

public class UserService {

	private UserDao userDao ;
	
	public Collection<User> getStudents(){
		return userDao.getStudents();
	}
	
}
