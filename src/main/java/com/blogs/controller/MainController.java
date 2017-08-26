package com.blogs.controller;


import com.blogs.common.GlobalConstant;
import com.blogs.service.IMainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: GLGGAG
 * @Date: 2017/08/22/上午 9:55
 * @Description:
 */
@Controller
@RequestMapping("main")
public class MainController {

    @Autowired
    private IMainService iMainService;

    @RequestMapping("home")
    public ModelAndView home(ModelAndView mad){
        /**
         * 头部导航类目
         */
        mad.addObject("categoryVos",iMainService.navigationCategoryVo(GlobalConstant.CATEGORY_BASE_PARENT_NO));
        mad.setViewName("index");
        return  mad;
    }


}
