package com.blogs.mapper;


import com.blogs.entity.Category;
import com.blogs.util.MyMapper;
import com.blogs.vos.CategoryVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author: GLGGAG
 * @Date: 2017/08/22/上午 10:30
 * @Description:
 */
public interface CategoryMapper extends MyMapper<Category> {

    List<CategoryVo>  totalSubCategory(@Param("categoryNo")Integer categoryNo);

}


