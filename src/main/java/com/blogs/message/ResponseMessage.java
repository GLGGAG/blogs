package com.blogs.message;

import java.io.Serializable;

/**
 * @author: GLGGAG
 * @Date: 2017/08/08/下午 17:43
 * @Description:数据响应格式
 */
public class ResponseMessage<T>  implements Serializable{

    private static final long serialVersionUID = 27293419L;

    private String code;

    private String message;

    private T result;

    public ResponseMessage() {
        setRespMsg(ErrorMsg.Success);
    }

    public ResponseMessage(ErrorMsg err) {
        this.code = err.getCode();
        this.message = err.getMsg();
    }

    public ResponseMessage(String code) {
        this.code = code;
    }

    public ResponseMessage(String code, String message) {
        this.code = code;
        this.message = message;
    }
    public ResponseMessage(String code, String message,T result) {
        this.code = code;
        this.message = message;
        this.result=result;
    }
    public ResponseMessage(T result) {
        this.setRespMsg(ErrorMsg.Success);
        this.result=result;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getResult() {
        return result;
    }

    public void setResult(T result) {
        this.result = result;
    }
    /**
     * 处理成功
     *
     * @return
     */
    public boolean succeed() {
        return ErrorMsg.Success.getCode().equals(code);
    }

    public void setRespMsg(ErrorMsg msg) {
        this.code = msg.getCode();
        this.message = msg.getMsg();
    }

    public void setRespMsg(ErrorMsg msg, String customMsgText) {
        this.code = msg.getCode();
        this.message = customMsgText;
    }

}
