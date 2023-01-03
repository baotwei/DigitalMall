package cn.edu.hzvtc.service;

import cn.edu.hzvtc.dao.UserMapper;
import cn.edu.hzvtc.dao.UserTypeMapper;
import cn.edu.hzvtc.pojo.User;
import cn.edu.hzvtc.pojo.UserType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserTypeMapper userTypeMapper;

    public User getUserByEmail(String email) {
        return userMapper.getUserByEmail(email);
    }

    public User login(User user) {
        user.setPassword(DigestUtils.md5DigestAsHex(
                user.getPassword( ).getBytes()));
        return userMapper.login(user);
    }

    public boolean register(User user) {
        Boolean result=false;
        user.setPassword(DigestUtils.md5DigestAsHex(
                user.getPassword().getBytes()));
        if(userMapper.insert(user)!=0){
            result=true;
        }
        return result;
    }

    public List<User> getUsersByCondition(Integer userTypeId, String userName, Integer loginUserType) {

        return userMapper.selectUsersByCondition(userTypeId,userName,loginUserType);
    }

    public boolean deleteUser(String ids) {
        Boolean result= false;
        System.out.println("-------"+ids);
        if(ids.contains("-")){
            //批量删除
            String[] str_ids = ids.split("-");
            List<Integer> delTds = new ArrayList<Integer>();
            for(String str_id : str_ids){
                delTds.add(Integer.parseInt(str_id));
            }
            if (userMapper.deleteUsers(delTds) != 0){
                result= true;
            }
        }else {
            //单一删除
            Integer id = Integer.parseInt(ids);
            if (userMapper.deleteById(id) != 0){
                result= true;
            }
        }
        return result;
    }


    public boolean reset(Integer id) {
        Boolean result= false;
        if (userMapper.reset(id) != 0){
            result= true;
        }
        return result;
    }

    public User selectById(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    public void updateUser(User user) {
        userMapper.updateByPrimaryKey1(user);
    }

    public Long getCount(int i) {
        return userMapper.getCount(i);
    }

    public List<UserType> getUserTypeList() {
        return userTypeMapper.selectAll();
    }

    public boolean delUserType(String ids) {
        Boolean result= false;

        //单一删除
        Integer id = Integer.parseInt(ids);
        if (userTypeMapper.deleteById(id) != 0){
            result= true;
        }
        return result;
    }

    public boolean addUserType(UserType userType) {
        Boolean result=false;
        if(userTypeMapper.insert(userType)!=0){
            result=true;
        }
        return result;
    }

    public UserType selectUserTypeInfoById(Integer id) {
        return userTypeMapper.selectByPrimaryKey(id);
    }


    public boolean updateUserType(UserType userType) {
        Boolean result=false;
        if(userTypeMapper.updateByPrimaryKey1(userType)!=0){
            result=true;
        }
        return result;
    }

    public boolean updatePassword(String email, String password) {
        Boolean result=false;

        if(userMapper.updatePassword(email,DigestUtils.md5DigestAsHex(
                password.getBytes()))!=0){
            result=true;
        }
        return result;
    }
}
