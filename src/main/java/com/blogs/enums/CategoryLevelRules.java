package com.blogs.enums;

/**
 * @author: GLGGAG
 * @Date: 2017/08/22/上午 10:34
 * @Description:
 * 文章类目编号规则
 */
public enum CategoryLevelRules {

    BASE(1,"一级类目"),

    SECOND(2,"二级类目"),

    THREE(3,"三级类目");

    private Integer level;

    private String memo;

    CategoryLevelRules(Integer level,String memo){
        this.level=level;
        this.memo=memo;
    }
    public Integer getLevel() {
        return level;
    }
    public void setLevel(Integer level) {
        this.level = level;
    }
    public String getMemo() {
        return memo;
    }
    public void setMemo(String memo) {
        this.memo = memo;
    }
}
