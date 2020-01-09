package com.qh.websit.system.service;

import com.qh.websit.common.entity.Result;
import com.qh.websit.system.entity.News;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 新闻资讯表 服务类
 * </p>
 *
 * @author jianch
 * @since 2019-11-25
 */
public interface INewsService extends IService<News> {
    Result findNewsPage(News e) throws Exception;
}
