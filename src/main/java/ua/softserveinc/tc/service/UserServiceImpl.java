package ua.softserveinc.tc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.softserveinc.tc.dao.UserDao;
import ua.softserveinc.tc.entity.User;

@Transactional
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao dao;

    public List<User> findAll() {

        return dao.findAll();
    }

    public void create(User entity) {
        dao.create(entity);

    }

    public User findById(Object id) {

        return dao.findById(id);
    }

    public void delete(User entity) {
        dao.delete(entity);

    }

    public void deleteAll() {
        dao.deleteAll();
    }

    public User update(User entity) {
        return dao.update(entity);
    }

}
