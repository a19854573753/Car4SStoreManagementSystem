<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
  <title>俱乐部活动</title>
  
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="author" content="">
	<meta name="format-detection" content="telephone=no">
	<link href="qtimages/Layout.css" rel="stylesheet" type="text/css">
	<script src="qtimages/getjs_bdtj"></script><script charset="utf-8" src="qtimages/insert_bdtj"></script><script src="qtimages/conv.js"></script><script src="qtimages/hm.js"></script>
	<script type="text/javascript" src="qtimages/jquery1.42.min.js"></script>
	<script type="text/javascript" src="qtimages/jquery.SuperSlide.2.1.1.js"></script>
	<script src="qtimages/scrollReveal.js"></script> 
	 <link rel="stylesheet" href="./qtimages/sl_common_form.css">
</head>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"julebuhuodong");
	
	
     %>
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<%@ include file="sidebufen1.jsp"%>
<div class="news">
	<div class="container">
		<div class="index-title txt-c">
			<em>专业的服务 一流的水平</em>
			<div class="line">
				<h3>俱乐部活动<img src="qtimages/en-news.png" height="16" width="93"></h3>
			</div>
		</div>
		<div class="news-list c">
			<ul>
				  <div class="content-form">
					
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height='50px;'>活动名称：</td><td width='39%' height='50px;'><%=mqt.get("huodongmingcheng")%></td>
		 <td width='11%' height='50px;'>俱乐部名称：</td><td width='39%' height='50px;'><%=mqt.get("julebumingcheng")%></td>
		 </tr><tr><td width='11%' height='50px;'>联系电话：</td><td width='39%' height='50px;'><%=mqt.get("lianxidianhua")%></td>
		 <td width='11%' height='50px;'>活动时间：</td><td width='39%' height='50px;'><%=mqt.get("huodongshijian")%></td>
		 </tr><tr><td width='11%' height='50px;'>活动地点：</td><td width='39%' height='50px;'><%=mqt.get("huodongdidian")%></td>
		 <td width='11%' height='50px;'>活动简介：</td><td width='39%' height='50px;'><%=mqt.get("huodongjianjie")%></td>
		 </tr><tr>							 
                                <td colspan="4"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
                                  <tr>
                                    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                                    <td width="471" bgcolor='#CCFFFF'>评价内容</td>
                                    <td width="88" bgcolor='#CCFFFF'>评分</td>
                                    <td width="88" bgcolor='#CCFFFF'>评论人</td>
                                    <td width="138" align="center" bgcolor="CCFFFF">评论时间</td>
                                  </tr>
                                  <% 
							String sql =  "select * from pinglun where xinwenID='"+id+"' and biao='julebuhuodong' ";
							sql+=" order by id desc";
							int i=0;
							 for(HashMap map:new CommDAO().select(sql)){
							 i++;
							 %>
                                  <tr>
                                    <td width="30" align="center" bgcolor='#CCFF99'><%=i%></td>
                                    <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren")%></td>
                                    <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime")%></td>
                                  </tr>
                                  <%
								  }
								   %>
                                </table></td>
                                </tr><tr><td colspan=4 align=center height='50px;'><input type=button name=Submit5 value=返回 class='hsgqiehuanshitu' onClick="javascript:history.back()" />
<input type=button name=Submit52 value=打印 class='hsgqiehuanshitu' onClick="javascript:window.print()"  /> <!--jixaaxnnxiu-->
<input type=button name=Submit53 value=评论 class='hsgqiehuanshitu' onClick="javascript:hsgpinglun('julebuhuodong','<%=id%>')"/>
<input type=button name=Submit52 value=收藏 class='hsgqiehuanshitu' onClick="javascript:location.href='jrsc.jsp?id=<%=id%>&biao=julebuhuodong&ziduan=huodongmingcheng';"  />
</td></tr>
    
  </table>	
					</div>
			</ul>
		</div>
	</div>
</div>
<%@ include file="qtdown.jsp"%>

</body> 
</html>


