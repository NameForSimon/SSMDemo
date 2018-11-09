package service;

import java.util.List;

import pojo.User;

public interface UserService {
public String login(String username,String password,String verificationcode);

public List<User> userlist();

public String DelMatch(String id);

public List<User> updatelist();

public String updatetuser(String username, String password);
}
