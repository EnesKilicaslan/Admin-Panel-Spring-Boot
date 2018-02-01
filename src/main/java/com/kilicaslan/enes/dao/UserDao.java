package com.kilicaslan.enes.dao;

import java.util.Collection;

import com.kilicaslan.enes.entity.User;

public interface UserDao {

	Collection<User> getUsers();

	User getUser(int id);

	void deleteUser(int id);

	void updateUser(User other);

	void addUser(User user);

}