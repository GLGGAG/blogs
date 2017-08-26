package com.blogs.message;

import java.util.HashMap;
import java.util.Map;

/**
 * @author: GLGGAG
 * @Date: 2017/08/08/下午 17:44
 * @Description:
 */
public enum ErrorMsg {

    // 错误码定义
    Success						           ("0000", "成功"),
    LoginNameIsNullError                 ("0010","账号密码不能为空"),
    LoginNameOrPassWordError            ("0015","用户名或者密码错误"),
    VerifyCodeError                      ("0020","验证码错误"),
    InputPassWordError                   ("0030","输入的密码错误"),


    ParamsIsNotNull                       ("0100","参数不能为空"),
    SystemErr					           ("9999", "系统未知异常");

    /**
     * 错误编号
     */
    private String code;

    /**
     * 错误提示
     */
    private String msg;

    ErrorMsg(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    /**
     * 静态缓存，提高效率
     */
    private static Map<String, ErrorMsg> cache;
    static {
        cache = new HashMap<String, ErrorMsg>();
        ErrorMsg[] values = ErrorMsg.values();
        for (ErrorMsg error : values) {
            cache.put(error.code, error);
        }
    }

    /**
     * <pre>
     * 获取消息内容
     * </pre>
     *
     * @param code
     * @return
     */
    public static String getMsg(String code) {
        if (code != null && code.length() > 0) {
            ErrorMsg errorMsg = cache.get(code);
            if (errorMsg != null) {
                return errorMsg.getMsg();
            }
        }

        return ErrorMsg.Success.getMsg();
    }
}
