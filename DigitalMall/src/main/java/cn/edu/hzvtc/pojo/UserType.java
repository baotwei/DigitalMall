package cn.edu.hzvtc.pojo;

public class UserType {
    private Integer userTypeId;
    private String userTypeName;
    private Integer userTypeSort;
    private Integer userTypeDelState;

    public UserType(Integer userTypeId, String userTypeName, Integer userTypeSort, Integer userTypeDelState) {
        this.userTypeId = userTypeId;
        this.userTypeName = userTypeName;
        this.userTypeSort = userTypeSort;
        this.userTypeDelState = userTypeDelState;
    }

    public UserType() {
    }

    @Override
    public String toString() {
        return "UserType{" +
                "userTypeId=" + userTypeId +
                ", userTypeName='" + userTypeName + '\'' +
                ", userTypeSort=" + userTypeSort +
                ", userTypeDelState=" + userTypeDelState +
                '}';
    }

    public Integer getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(Integer userTypeId) {
        this.userTypeId = userTypeId;
    }

    public String getUserTypeName() {
        return userTypeName;
    }

    public void setUserTypeName(String userTypeName) {
        this.userTypeName = userTypeName;
    }

    public Integer getUserTypeSort() {
        return userTypeSort;
    }

    public void setUserTypeSort(Integer userTypeSort) {
        this.userTypeSort = userTypeSort;
    }

    public Integer getUserTypeDelState() {
        return userTypeDelState;
    }

    public void setUserTypeDelState(Integer userTypeDelState) {
        this.userTypeDelState = userTypeDelState;
    }
}
