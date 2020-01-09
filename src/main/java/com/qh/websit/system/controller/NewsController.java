package com.qh.websit.system.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.qh.websit.common.controller.BaseController;
import com.qh.websit.common.entity.Result;
import com.qh.websit.system.entity.News;
import com.qh.websit.system.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * <p>
 * 新闻资讯表 前端控制器
 * </p>
 *
 * @author jianch
 * @since 2019-11-25
 */
@RestController
@RequestMapping("/news")
public class NewsController extends BaseController {

    //菜单
    @Autowired
    private INewsService newsService;


    private String news_list = "/news/list";
    private String news_edit = "/news/edit";
    private String news_look = "/news/look";
    private String news_add = "/news/add";

    /**
     * 跳转list页面
     * @return
     */
    @RequestMapping(value="/toPage")
    public ModelAndView toPage(){
        ModelAndView mv =this.getModelAndView();
        mv.setViewName(news_list);
        return mv;
    }

    /**
     * 后台分页查询
     * @param e
     * @return json
     * */
    @RequestMapping(value = "/list",produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String list(News e) throws Exception{
        Result result = newsService.findNewsPage(e);
        return JSON.toJSONString(result);
    }

    /**
     * 前端分页显示
     * @param e
     * @return json
     * */
    @RequestMapping(value = "/pageList",produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String showlist(News e) throws Exception{
        Result result = newsService.findNewsPage(e);
        return JSON.toJSONString(result);
    }


    /**
     * 查询页面
     * @param e
     * @return json
     * */
    @RequestMapping("/find")
    @ResponseBody
    public ModelAndView find(News e) throws Exception {
        ModelAndView mv = this.getModelAndView();
        QueryWrapper<News> queryWrapper = Wrappers.query(e);
        News news = newsService.getOne(queryWrapper,true);
        mv.addObject("news",news);
        mv.setViewName(news_look);
        return mv;
    }


    /**
     * 新增 or 保存页面
     * @param e
     */
    @RequestMapping(value="/toEdit")
    public ModelAndView toEdit(News e,Integer code) throws Exception{
        ModelAndView mv = this.getModelAndView();
        News news = new News();
        if(e.getId()!=null){
            news = newsService.getById(e.getId());
            mv.addObject("news",news);
            mv.setViewName(news_edit);
        }else {
            mv.setViewName(news_add);
        }
        return mv;
    }

    /**
     * 保存
     * @param e
     * @return json
     * */
    @RequestMapping(value="/add")
    @ResponseBody
    public String add(News e) throws Exception {
        JSONObject obj = getMsg();//返回信息
        if(e.getId()!=null){
            setMsg(obj,"error","ID已存在!");
        }else{
            newsService.save(e);
        }
        return obj.toString();
    }

    /**
     * 修改
     * @param e
     * @return json
     * */
    @RequestMapping(value="/update")
    @ResponseBody
    public String update(News e) throws Exception {
        JSONObject obj = getMsg();//返回信息
        if(e.getId()!=null){ //说明对象存在,直接修改
            newsService.updateById(e);
        }else{
            setMsg(obj,"error","菜单不存在!");
        }
        return obj.toString();
    }

    /**
     * 删除
     * @param e
     * @return json
     * */
    @RequestMapping(value="/delete")
    @ResponseBody
    public String delete(News e) throws Exception {
        JSONObject obj = getMsg();//返回信息

        if(e.getId()!=null){
            News news = newsService.getById(e.getId());
            if(news!=null){
                newsService.removeById(e.getId());
            }else{
                setMsg(obj,"error","对象不存在");
            }
        }
        return obj.toString();
    }

}
