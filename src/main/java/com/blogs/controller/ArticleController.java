package com.blogs.controller;


import com.blogs.exception.NoneParamException;
import com.blogs.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 文章查询
 */
@Controller
@RequestMapping("article")
public class ArticleController extends BaseController {


    @Autowired
    private IArticleService iArticleService;


    /**
     * 如果传进来的 articNo为空，category不为空是
     * 默认为阅读category类型文章，默认显示最新一篇
     * articNo不为空category时 显示对应文章
     * @param mad
     * @param articNo
     * @param categoryNo
     * @return
     */
    @RequestMapping("read")
    public ModelAndView articContent(ModelAndView mad,Integer articNo,Integer categoryNo){

        if (null==articNo&&categoryNo==null){
            throw new NoneParamException("articNo And categryNo both null");
        }

        if (null==articNo&&null!=categoryNo){



        }





        return  mad;
    }





}
