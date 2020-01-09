package com.qh.websit.common.controller;

import com.qh.websit.system.entity.News;
import com.qh.websit.system.service.INewsService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/front")
public class IndexController {

    private String index ="front/index";
    private String handbook ="front/handbook";
    private String downLoad ="front/download";
    private String news="front/news";
    private String news_detail ="front/new_detail";

    @Autowired
    private INewsService newService;
    /**
     * 网站首页
     * @param mp
     * @return
     */
    @RequestMapping("/index")
    public String getIndex(ModelMap mp){
        return index;
    }

    /**
     * 下载中心
     * @return
     */
    @RequestMapping("/download")
    public String downCenter(){

        return downLoad;
    }

    /**
     * 用户手册
     * @return
     */
    @RequestMapping("/handbook")
    public String userBook(){

        return handbook;
    }


    /**
     * 最新资讯
     * @return
     */
    @RequestMapping("/news")
    public ModelAndView getInfo(News e){
        ModelAndView mv=new ModelAndView();
        if(StringUtils.isNotBlank(e.getPage())){
            mv.addObject("news",e);
        }
        mv.setViewName(news);
        return mv;
    }

    /**
     * 新闻资讯详情
     * @return
     */
    @RequestMapping("/detail")
    public ModelAndView getDetail(News e){
        ModelAndView mv=new ModelAndView();
        News news=new News();
        if(e.getId()!=null){
          news=newService.getById(e.getId());
        }
        news.setPage(e.getPage());
        mv.addObject("news",news);
        mv.setViewName(news_detail);
        return mv;
    }

}
