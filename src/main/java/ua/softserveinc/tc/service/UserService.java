package ua.softserveinc.tc.service;

import java.util.List;

import ua.softserveinc.tc.entity.User;

public interface UserService {
    List<User> findAll();

    void create(User user);

    User findById(Object id);

    void delete(User user);

    void deleteAll();

    User update(User user);
}
