package com.cnstrong.javabean;

public class codeExchange {
	public static String ChineseCoding(String str){
		if(str == null) str = "";
		try{
			str = new String(str.getBytes("ISO-8859-1"),"UTF-8");
		}catch(Exception e){
			str = "";
			e.printStackTrace();
		}
		return str;
	}
}
