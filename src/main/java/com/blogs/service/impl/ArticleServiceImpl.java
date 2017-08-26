package com.blogs.service.impl;

import com.blogs.mapper.ArticleMapper;
import com.blogs.service.IArticleService;
import com.blogs.vos.ArticleReadVo;
import com.blogs.vos.ArticleVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleServiceImpl implements IArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public ArticleReadVo getArticleReadVoByArticleNo(Integer articleNo) {
        ArticleReadVo readVo = new ArticleReadVo();

        //组装articleVo数据


        return null;
    }

    @Override
    public ArticleReadVo getArticleReadVoByCategoryNo(Integer categoryNo) {
        return null;
    }

}
