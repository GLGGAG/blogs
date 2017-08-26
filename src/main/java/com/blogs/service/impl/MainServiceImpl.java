package com.blogs.service.impl;

import com.blogs.mapper.CategoryMapper;
import com.blogs.service.IMainService;
import com.blogs.vos.CategoryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: GLGGAG
 * @Date: 2017/08/22/上午 10:43
 * @Description:
 */
@Service
public class MainServiceImpl implements IMainService{

    @Autowired
    private CategoryMapper categoryMapper;

    /**
     * 导航类目vo
     * 后期引入redis等缓冲件时存放redis并实时更新
     * @return
     */
    @Override
    public  List<CategoryVo> navigationCategoryVo(Integer categoryNo) {
        //对结果集进行整理
        List<CategoryVo> categoryVos = categoryMapper.totalSubCategory(categoryNo);
        return categoryVos;
    }

}
