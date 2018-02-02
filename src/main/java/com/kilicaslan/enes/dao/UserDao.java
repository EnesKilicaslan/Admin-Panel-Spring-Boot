package com.kilicaslan.enes.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.kilicaslan.enes.entity.User;


public interface UserDao extends PagingAndSortingRepository<User,Integer> {

}