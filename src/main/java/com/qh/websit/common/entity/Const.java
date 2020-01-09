package com.qh.websit.common.entity;

import org.springframework.context.ApplicationContext;

/**
 * 静态变量
*/
public class Const {


	public static final String curPage="1";//默认当前页
	public static final String numPage="10";//默认每页显示数量

	public static final String COMPANYNAME = "台湾网络科技有限公司";		//系统名称路径

	public static final String FILEPATHIMG = "uploadFiles/uploadImgs/";		//图片上传路径
	public static final String FILEPATHFILE = "uploadFiles/file/";			//文件上传路径
	public static final String FILEPATHFILEOA = "uploadFiles/uploadFile/";	//文件上传路径(oa管理)
	public static final String FILEPATHTWODIMENSIONCODE = "uploadFiles/twoDimensionCode/"; //二维码存放路径
	public static final String NO_INTERCEPTOR_PATH = ".*/((login)|(logout)|(login_login)|(register)|(static)|(main)|(uploadImgs)|(webService)).*";	//不对匹配该值的访问路径拦截（正则）
	public static ApplicationContext WEB_APP_CONTEXT = null; //该值会在web容器启动时由WebAppContextListener初始化
//	二维码扫一扫H5访问路径
	public static final String H5Path = "http://192.168.11.4:8200/retrospects/index.html?rule_code=";


//	标识登陆用户的类别
	public static final String ADMINISTRATOR = "ADMINISTRATOR";  // 超级管理员


}
