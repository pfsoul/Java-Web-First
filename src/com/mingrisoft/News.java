package com.mingrisoft;

import java.sql.*;

public class News {
	
	DBConnection DBConn = new DBConnection();
	Function Fun = new Function();
	//新闻列表查询方法
	public String ListNewsFront(String sPage, String strPage) {
		try {
			Connection Conn = DBConn.getConn();
			Statement stmt = Conn.createStatement();
			ResultSet rs = null;
			
			//定义本方法返回字符串数组
			StringBuffer sb = new StringBuffer();
			int i;
			int intPage = 1;
			int intPageSize = 5;
			
			//创建SQL语句查询News表的全部信息
			String sSql = "select * from News order by NewsID desc";
			//通过执行SQL语句得到查询结果
			rs = stmt.executeQuery(sSql);
			if(!rs.next()) {
				//返回属性添加字符串数据用于页面演示
				sb.append("<tr height=\"25\" bgcolor=\"#d6dff7\" class=\"info1\">"
						+ "<td colspan=\"5\">\r\n");
				sb.append("<div align=\"center\"><b>没有记录</b></div></td></tr>\r\n");
			}else {
				//将传入参数strPage进行数据格式转换
				intPage = Fun.StrToInt(strPage);
				//将传入参数sPage进行数据处理
				sPage = Fun.CheckReplace(sPage);
				if(intPage == 0) {
					intPage = 1;
				}
				//计算当前页面显示的新闻条数
				rs.absolute((intPage - 1) * intPageSize + 1);
				i = 0;
				//i属性小于界面显示条数并且查询结果集不为空，进行循环方法
				while(i < intPageSize && !rs.isAfterLast()) {
					//定义数字型变量并赋值News表里的NewsID属性
					int NewsID = rs.getInt("NewsID");
					//定义数字型变量并赋值News表里的NewsTitle属性
					String NewsTitle = rs.getString("NewsTitle");
					//定义数字型变量并赋值News表里的NewsTime属性
					String NewsTime = rs.getString("NewsTime");
					//定义数字型变量并赋值News表里的AdminName属性
					String AdminName = rs.getString("AdminName");
					//返回属性添加字符串数据用于页面显示，<tr>表示换行
					sb.append("<tr>");
					//返回属性添加字符串数据用于页面显示新闻标题
					sb.append("<td>" + NewsTitle + "</td>");
					//返回属性添加字符串数据用于页面显示用户名
					sb.append("<td>" + AdminName + "</td>");
					//返回属性添加字符串数据用于页面显示新闻事件
					sb.append("<td>" + NewsTime + "</td>");
					//返回属性添加字符串数据用于页面显示详情按钮
					sb.append("<td> <a style=\"color:#3F862E\" target=\"_blank\" href=\"newsFrontDetail.jsp?newsID=" + NewsID + "\">详情</a></td></tr>");
					rs.next();
					i++;
				}
				//拼写字符串数据用语列表最下方的分页方法
				sb.append(Fun.PageFront(sPage, rs, intPage, intPageSize));
			}
			rs.close();
			stmt.close();
			Conn.close();
			return sb.toString();
		}catch(Exception e) {
			return "NO";
		}
	}
}
