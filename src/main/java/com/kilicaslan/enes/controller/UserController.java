package com.kilicaslan.enes.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kilicaslan.enes.entity.User;
import com.kilicaslan.enes.service.UserService;

import ch.qos.logback.core.net.SyslogOutputStream;

@RestController
@RequestMapping("/users")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(method=RequestMethod.GET)
	public Collection<User> getUsers(@RequestParam(value="page", defaultValue = "1", required=false) int pageNumber){
		return userService.getPage(pageNumber);
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public User getUser(@PathVariable("id") int id) {
		return userService.getUser(id);
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.DELETE)
	public void deleteUser(@PathVariable("id") int id) {
		userService.deleteUser(id);
	}
	
	@RequestMapping(method=RequestMethod.PUT, consumes=MediaType.APPLICATION_JSON_VALUE)
	public void updateUser(@RequestBody User user) {
		userService.updateUser(user);
	}
	
	@RequestMapping(method=RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public void addUser(@RequestBody User user) {
		System.out.println("add request: " + user);
		userService.addUser(user);
	}	
}
