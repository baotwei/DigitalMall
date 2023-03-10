package cn.edu.hzvtc.dao;

import cn.edu.hzvtc.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbg.generated Wed Feb 24 17:04:42 CST 2021
     */
    int deleteByPrimaryKey(Integer userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbg.generated Wed Feb 24 17:04:42 CST 2021
     */
    int insert(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbg.generated Wed Feb 24 17:04:42 CST 2021
     */
    User selectByPrimaryKey(Integer userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbg.generated Wed Feb 24 17:04:42 CST 2021
     */
    List<User> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbg.generated Wed Feb 24 17:04:42 CST 2021
     */
    int updateByPrimaryKey(User record);

    User getUserByEmail(String email);

    User login(User user);

    List<User> selectUsersByCondition(@Param("userTypeId")Integer userTypeId,@Param("userName") String userName,@Param("loginUserType") Integer loginUserType);

    int deleteUsers(@Param("ids")List<Integer> delTds);

    int deleteById(@Param("ids")Integer id);

    int reset(Integer id);

    void updateByPrimaryKey1(User user);

    Long getCount(int i);

    int updatePassword(@Param("email")String email, @Param("password")String password);

}