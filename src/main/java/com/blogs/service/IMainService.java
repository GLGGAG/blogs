package com.blogs.service;

import com.blogs.vos.CategoryVo;

import java.util.List;

/**
 * @author: GLGGAG
 * @Date: 2017/08/22/上午 10:42
 * @Description:
 */
public interface IMainService {

    List<CategoryVo> navigationCategoryVo(Integer categoryNo);

}
