package service;

import DAO.IUserDAO;
import DAO.UserDAO;
import model.User;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private final IUserDAO userDAO = new UserDAO();
    @Override
    public List<User> findAll() {
        return userDAO.selectAllUsers();
    }

    @Override
    public void create(User user) throws SQLException {
        userDAO.insertUser(user);
    }

    @Override
    public User findById(int id) {
        return userDAO.selectUser(id);
    }

    @Override
    public void update(User user) throws SQLException {
        userDAO.updateUser(user);
    }

    @Override
    public void remove(int id) throws SQLException {
        userDAO.deleteUser(id);
    }

    @Override
    public List<User> findByCountry(String country) throws SQLException {
        return userDAO.findByCountry(country);
    }

    @Override
    public List<User> sortByName() {
        return userDAO.sortByName();
    }
}