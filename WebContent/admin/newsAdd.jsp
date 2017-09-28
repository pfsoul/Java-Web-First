<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="com.mingrisoft.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	News News1 = new News();
	Function Fun = new Function();
	//从页面缓存中提取当前用户
	String AdminName = (String)session.getAttribute("AdminName");
	String Action = request.getParameter("Action"); 	//从页面请求中获取命令
	if(Action != null && Action.equals("Add")){			//判断是否存在
		String IP = request.getRemoteAddr();			//得到客户端的IP
		String [] s = new String[2];
		s[0] = request.getParameter("NewsTitle");
		s[1] = request.getParameter("NewsContent");
		String sNews = News1.AddNews(s, AdminName, IP); //获取方法返回值
		if(sNews.equals("Yes")){						//判断返回值为“Yes”
			//页面输出
			out.print("<script>alert('添加新闻成功！');location.href='news.jsp';</script>");
			return;
		}else{
			//页面输出
			out.print("<script>alert('添加新闻失败！');location.href='news.jsp';</script>");
		}
	}
%>