package cn.edu.hzvtc.pojo;

import java.util.HashMap;
import java.util.Map;

public class ReturnMsg {
    private Integer code;       //״̬��  100-�����ɹ�  200����ʧ��
    private String msg;         //��ʾ��Ϣ
    private String target;      //·��

    public String getTarget() {
        return target;
    }

    //��װ���ص�����
    private Map<String,Object> extend = new HashMap<String, Object>();

    public static ReturnMsg success(){
        ReturnMsg result = new ReturnMsg(100,"�����ɹ���","");
        return result;
    }

    public static ReturnMsg fail(){
        ReturnMsg result = new ReturnMsg(200,"����ʧ�ܣ�","");
        return result;
    }

    public ReturnMsg add(String key, Object value){
        this.getExtend().put(key, value);

        return this;
    }




    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getExtend() {
        return extend;
    }

    public void setExtend(Map<String, Object> extend) {
        this.extend = extend;
    }

    public void setTarget(String target){ this.target=target;}

    public ReturnMsg() {
    }

    public ReturnMsg(Integer code, String msg, String target) {
        this.code = code;
        this.msg = msg;
        this.target = target;
    }
}
