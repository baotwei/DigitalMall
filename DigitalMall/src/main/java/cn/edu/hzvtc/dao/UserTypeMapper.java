package cn.edu.hzvtc.dao;

import cn.edu.hzvtc.pojo.UserType;

import java.util.List;

public interface UserTypeMapper {
    UserType selectByPrimaryKey(Integer id);

    int deleteByPrimaryKey(Integer id);

    int insert(UserType record);

    List<UserType> selectAll();

    int updateByPrimaryKey(UserType record);

    List<UserType> selectAllForTree(Integer parentId);

    int deleteByPrimaryKey1(Integer id);

    int insert1(UserType userType);

    int updateByPrimaryKey1(UserType userType);

    int deleteById(Integer id);

    UserType selectUserTypeInfoById(Integer id);

}
