package com.kilicaslan.enes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import com.kilicaslan.enes.dao.UserDao;
import com.kilicaslan.enes.entity.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao ;
	
	private final static int PAGESIZE = 3;
	
	public void save(User u) {
		userDao.save(u);
	}
	
	public Iterable<User> findAllUsers() {
		return userDao.findAll();
	}
	
	public List<User> getPage(int pageNumber) {
		
		if(pageNumber < 1)
			pageNumber = 1;
		
		PageRequest request = new PageRequest(pageNumber - 1, PAGESIZE, Sort.Direction.ASC, "id");
		return userDao.findAll(request).getContent();
	}
	
	public User getUser(int id) {
		return userDao.findOne(id);
	}
	
	public void deleteUser(@PathVariable("id") int id) {
		userDao.delete(id);
	}
	
	public void updateUser(@RequestBody User user) {
		userDao.save(user);
	}
	
	public void addUser(@RequestBody User user) {
		userDao.save(user);
	}
	
	
	
	
}
