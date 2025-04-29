package com.clothesstore.service;

import com.clothesstore.dao.UserDAO;
import com.clothesstore.model.User;

public class UserService {
    private final UserDAO userDAO;

    public UserService() {
        this.userDAO = new UserDAO();
    }

    public boolean register(User user) {
        return userDAO.registerUser(user);
    }

    public User login(String username, String password) {
        return userDAO.login(username, password);
    }
}