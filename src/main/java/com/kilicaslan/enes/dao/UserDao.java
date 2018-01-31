package com.kilicaslan.enes.dao;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kilicaslan.enes.entity.User;


@Repository
public class UserDao {
	
	private static Map<Integer, User> users;

	static {
		users = new HashMap<Integer, User>() {
			{
				put(1, new User(1, "Enes", "Kilicaslan", "hanky", "1234", "admin"));
				put(2, new User(2, "Mulayim", "Bombaci", "bomb", "1234", "regular"));
				put(3, new User(3, "Bob", "Marley", "marly", "1234", "regular"));
				put(4, new User(4, "Ali", "Desidero", "mfo", "1234", "regular"));	
			}
		};
	}
	
	public Collection<User> getUsers(){
		return this.users.values();
	}
	
}
