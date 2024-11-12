package bach.dev.data.dao;

import java.util.List;

import bach.dev.data.model.User;

public interface UserDAO {

    public boolean insert(User user);

    public boolean update(User user);

    public boolean delete(int userId);

    public User find(int id);

    public List<User> findAll();

    public User find(String email, String password);

    public User find(String email);
}
