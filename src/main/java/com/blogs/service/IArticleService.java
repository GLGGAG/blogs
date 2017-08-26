package com.blogs.service;

import com.blogs.vos.ArticleReadVo;

public interface IArticleService {

    ArticleReadVo getArticleReadVoByArticleNo(Integer articleNo);

    ArticleReadVo getArticleReadVoByCategoryNo(Integer categoryNo);
}
