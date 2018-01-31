package com.kilicaslan.enes.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kilicaslan.enes.dao.UserDao;
import com.kilicaslan.enes.entity.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao ;
	
	public Collection<User> getUsers(){
		return userDao.getUsers();
	}
	
}
