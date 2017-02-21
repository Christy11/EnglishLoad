package com.englishload.common;
import  com.alibaba.fastjson.*;

public class JsonTools {
	/**
	 * 将字符串转换成json对象
	 * @param object
	 * @return
	 */
	public static String createJsonString(Object object){
	    String jsonString = "";
	    try {
	      jsonString = JSON.toJSONString(object);
	    } catch (Exception e) {
	    }
	    return jsonString;
	}
	
}
