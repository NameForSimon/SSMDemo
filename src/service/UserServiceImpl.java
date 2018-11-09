package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserMapper;
import pojo.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public String login(String username, String password,String verificationcode) {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		List<User> list = userMapper.selectByNameAndPass(user);
		//------------验证验证码--------------
		String context = "123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
		StringBuffer fourcontext = new StringBuffer();
		for(int i=0 ; i<4 ; i++) {
			int a = (int)(Math.random()*10);
			fourcontext.append(context.charAt(a));
		}
		System.out.println(String.valueOf(fourcontext));
		if (list.size() > 0 && verificationcode==String.valueOf(fourcontext)) {
			return "ok";
		}
		return null;
	}

	@Override
	public List<User> userlist() {
		List<User> list=userMapper.selectAllUser();
		return list;
	}

	@Override
	public String DelMatch(String id) {
		int Id=Integer.parseInt(id);
		userMapper.deleteByIds(Id);
		return null;		
	}

	@Override
	public List<User> updatelist() {
		List<User> list=userMapper.selectAllUser();
		return list;
	}

	@Override
	public String updatetuser(String username, String password) {
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		userMapper.updateuserByusername(user);
		return "ok";
	}
}
