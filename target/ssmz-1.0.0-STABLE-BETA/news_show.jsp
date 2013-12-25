<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>农村基本医疗卫生关键技术研究与示范协同研究工作平台</title>

<style type="text/css">
/* common styling */
/* set up the overall width of the menu div, the font and the margins */
*
{
 margin:0;
 padding:0;

}

body{

 
}
.quanju{
+
 margin-left:20px;
border:2px solid #000;
overflow:hidden;

}

.title_nav{
 height:134px;
 background:url(fimages/img04.jpg);
 text-align:center;
 
}

.title_nav h1 {
        margin:0 auto;
        width:1200px;
	line-height: normal;
	text-transform: lowercase;
	font-family:"楷体";
	font-weight: bold;
	font-size:45px;
	color: #FFFFFF;
        vertical-align:middle;
        line-height:120px;

}

.menu {
position:relative;
font-family: arial, sans-serif; 
height:35px;
background:#000; 
margin:0; 
margin:0px 0;
z-index:100;

}
/* remove the bullets and set the margin and padding to zero for the unordered list */
.menu ul {
padding:0; 
margin:0;
width:1300px;
list-style-type: none;

}
/* float the list so that the items are in a line and their position relative so that the drop down list will appear in the right place underneath each list item */
.menu ul li {
float:left; 
position:relative;
}
/* style the links to be 104px wide by 30px high with a top and right border 1px solid white. Set the background color and the font size. */
.menu ul li a{
font-family:verdana,arial,tahoma;
font-size:13px;
display:block; 
text-align:center; 
text-decoration:none; 
width:104px; 
height:35px; 
color:#fff; 
border:1px solid #fff;
border-width:1px 1px 0 0;
background:#000; 
line-height:30px; 

}

 .menu ul li a:visited{
font-family:verdana,arial,tahoma;
font-size:11px;
display:block; 
text-align:center; 
text-decoration:none; 
width:104px; 
height:35px; 
color:#fff; 
border:1px solid #fff;
border-width:1px 1px 0 0;
background:#000; 
line-height:30px; 

}
/* make the dropdown ul invisible */
.menu ul li ul {
display: none;
z-index:1500;

}
/* specific to non IE browsers */
/* set the background and foreground color of the main menu li on hover */
.menu ul li:hover a {
color:#35f; 
background:#fff;
border:1px solid #35f;
}
/* make the sub menu ul visible and position it beneath the main menu list item */
.menu ul li:hover ul {
display:block; 
position:absolute; 
top:36px; 
left:0; 
width:105px;
}
/* style the background and foreground color of the submenu links */
.menu ul li:hover ul li a {
display:block; 
background:#FFFAF0; 
color:#000;
width:130px;
border:none;
}
/* style the background and forground colors of the links on hover */
.menu ul li:hover ul li a:hover {
background:#FFE7BA; 
color:#000;
width:130px;
}


 #only{margin-top:20px}



.liebiao{}

.liebiaomiddle{width:750px;height:1170px;float:left;border:1px solid #c5c5c5;margin-left:100px;}

.liebiaomiddleyiceng1{width:700px;height:115px;margin-left:20px;border-bottom:1px dashed #c6c6c6;}
.liebiaomiddleyiceng1 h3{font-size:16px;color:#333; width:700px; height:20px;}
.liebiaomiddleyiceng1 h3 a{ float:left; clear:both;text-decoration:none;color:#333}
.liebiaomiddleyiceng1 h3 a:hover{text-decoration:underline;}
.liebiaomiddleyiceng1 h3 span{font-size:12px;font-weight:lighter;color:#333; float:right; margin-right:5px;}
.liebiaomiddleyiceng2{width:700px;height:60px;margin-top:15px }
.liebiaomiddleyiceng2 .p1{margin-left:105px;line-height:20px;color:#666}
.liebiaomiddleyiceng2 .p2{line-height:20px;color:#666}
/*.liebiaomiddleyiceng2img{width:85px;height:55px;background: url(/images/Index1Imgs/pic_13.jpg) no-repeat;display:block;float:left;clear:both}*/
.liebiaomiddleyiceng2img{width:85px;height:55px;display:block;float:left;clear:both}
.xiamianxiangqing{ float:right; margin-right:5px;}
.xiamianxiangqing a{
 text-decoration:none;
 font-size:12px;

}
.shangxiaye{width:740px;height:40px;}


.leibiao{padding-top:24px;text-align:right;padding-right:29px;}
.leibiao a{text-decoration:none; }
.leibaio a:hover{text-decoration:underline; }
	 .pageS1{border:1px solid #ccc; padding:5px 5px 0px 5px;height:19px; margin:2px; }
	 .pageS2{border:1px solid #ccc; padding:3px 2px 0px 2px ;height:21px; width:36px;}
	 .pageS0{border:0;padding:3px 5px 3px 5px; font-weight:bold;}    
	 .text{width:36px;height:19px;border:1px solid #ccc;}
	 .submit{width:45px;height:5;}  

/* Footer */

#footer {
	width: 920px;
	height: 49px;
	margin: 0 auto;
	padding-top: 25px;
}

#footer-bgcontent {
	margin: 0px;
	padding: 0px;
	height: 60px;
	background: #394144;
}

#footer p {
	margin: 0;
	text-align: center;
	line-height: normal;
	text-transform: uppercase;
	font-size: 13px;
	color: #FFFFFF;
}
</style>
<!--[if lte IE 6]>
<style type="text/css">
/* styling specific to Internet Explorer IE5.5 and IE6. Yet to see if IE7 handles li:hover */
/* Get rid of any default table style */
table {
border-collapse:collapse;
margin:0; 
padding:0;
}
/* ignore the link used by 'other browsers' */
.menu ul li a.hide, .menu ul li a:visited.hide {
display:none;
}
/* set the background and foreground color of the main menu link on hover */
.menu ul li a:hover {
color:#fff; 
background:#b3ab79;
}
/* make the sub menu ul visible and position it beneath the main menu list item */
.menu ul li a:hover ul {
display:block; 
position:absolute; 
top:32px; 
left:0; 
width:105px;
}
/* style the background and foreground color of the submenu links */
.menu ul li a:hover ul li a {
background:#faeec7; 
color:#000;
}
/* style the background and forground colors of the links on hover */
.menu ul li a:hover ul li a:hover {
background:#dfc184; 
color:#000;
}
</style>
<![endif]-->

<script type="text/javascript" src="js/jquery.js">
</script>
<script type="text/javascript" src="js/lrtk.js"></script>

<script type="text/javascript" src="<%=basePath%>/info_show_js/jquery.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>/info_show_js/lrtk.js" charset="utf-8"></script>

</head>
<body>

<div class="quanju"><!--全局div开始   <!-->

<div class="title_nav"><!--title_nva开始   <!-->
	<h1>
					农村基本医疗卫生关键技术研究与示范协同研究工作平台 
	</h1>
</div><!--title_nav结束  <!-->



<div class="menu"><!--menu开始  <!-->
<ul>
<li><a class="hide" href="index.jsp">首页</a></li>
<li><a class="hide" href="#">平台介绍</a>
<!--[if lte IE 6]>
<a href="../menu/index.html">DEMOS
<table><tr><td>
<![endif]-->

<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->
</li>

<li><a class="hide" href="/mp/index.jsp">项目管理</a></li>
<li><a class="hide" href="#">数据服务</a>
<!--[if lte IE 6]>
<a href="index.html">MENUS
<table><tr><td>
<![endif]-->
    <ul>
<%
   String ip = request.getHeader("x-forwarded-for");
   if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		if (ip.indexOf("0:") != -1) {
			ip = "本地";
		}
		
		System.out.println("the ip is "+ip);
		String  ipbytes[] = ip.split("\\.");
		boolean isNeiWangIP = false;
		if(ipbytes[0].equals("192")&&ipbytes[1].equals("168")&&ipbytes[2].equals("1"))
		{
		 isNeiWangIP = true;
		}
		if(isNeiWangIP)
		{
		
		%>
		<li><a href="http://192.168.1.193:8080/medical/disp/hello1.jsp" title="changjianbing">数据分析</a></li>
                <li><a href="http://192.168.1.195:8080/health/" title="jizhengjiuzhi">信息采集</a></li>
		<% 
		}
		else
		{
		%>
		<li><a href="http://219.239.169.12:8080/medical/disp/hello1.jsp" title="changjianbing">数据分析</a></li>
                <li><a href="http://219.239.169.112:8080/health/" title="jizhengjiuzhi">信息采集</a></li>
		<%
		}
  %>
    
    </ul>
<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->
</li>
<li><a class="hide" style="width:120px" href="#">远程协作</a>
<!--[if lte IE 6]>
<a href="../layouts/index.html">LAYOUTS
<table><tr><td>
<![endif]-->
    <ul>
    <li><a href="http://ncmi.tmrcs.com" title="shifan1">远程会诊</a></li>
    <li><a href="http://video.tmrcs.com" title="shifan2">远程会议</a></li>
    <li><a href="#" title="shifan3">远程培训</a></li>
    </ul>
<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->
</li>

<li><a class="hide" style="width:150px" href="#">关键技术集成与示范</a>
<!--[if lte IE 6]>
<a href="../layouts/index.html">LAYOUTS
<table><tr><td>
<![endif]-->
    <ul>
    <li><a href="#" title="shifan1">实证研究基地1</a></li>
    <li><a href="#" title="shifan2">实证研究基地2</a></li>
    <li><a href="#" title="shifan3">实证研究基地3</a></li>
    <li><a href="#" title="shifan4">实证研究基地4</a></li>
    <li><a href="#" title="shifan5">实证研究基地5</a></li>
    <li><a href="#" title="shifan3">实证研究基地6</a></li>
    <li><a href="#" title="shifan4">实证研究基地7</a></li>
    <li><a href="#" title="shifan5">实证研究基地8</a></li>
    </ul>
<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->
</li>
<li><a class="hide" style="width:200px" href="#">示范县信息平台资源下载</a></li>
<li><a class="hide" href="#">联系我们</a></li>
</ul>
<!-- clear the floats if required -->
<div class="clear"> </div>
</div><!--men结束  <!-->
<div style="clear:both;"></div>
<div style="margin-top:20px">
 <p>
        <span id="NavigationWUC1_lbMap">首页&nbsp;&nbsp;&lt;&lt;&nbsp;&nbsp;最新资讯</span>
    </p>
</div>


 <!--列表部分-->
        <div class="liebiao" style="">
            <!--列表左侧-->
            <div class="liebiaoleft"></div>
            <div class="liebiaomiddle">
                <div class="liebiaomiddleyiceng">
                    <table id="dlNewsList" cellspacing="0" style="border-collapse:collapse;">
	<%

//驱动程序名

String driverName="com.mysql.jdbc.Driver";

//数据库用户名

String userName="root";

//密码

String userPasswd="123456";

//数据库名

String dbName="sp";

//表名

String tableName="tnews";

//联结字符串

String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd;

Class.forName("com.mysql.jdbc.Driver").newInstance();

Connection connection=DriverManager.getConnection(url);

Statement statement = connection.createStatement();
String pagenumber = request.getParameter("page");
Integer i = Integer.parseInt(pagenumber);
Integer maxnum = 0;
Integer maxres = 0;
i = (i-1)*7;

 String sql_1="select COUNT(*)  from Tnews";
 ResultSet rs_1 = statement.executeQuery(sql_1);
 ResultSetMetaData rmeta_1 = rs_1.getMetaData();
 
 if(rs_1.next()){
  maxnum = rs_1.getInt(1);
  maxres = maxnum;
  if(maxnum%7 == 0)
   maxnum = maxnum/7;
else maxnum = maxnum/7 +1;
 }
 rs_1.close();
 
 String sql= "select * from Tnews order by CCREATEDATETIME desc limit "+i.intValue()+",7";
ResultSet rs = statement.executeQuery(sql);

//获得数据结果集合

ResultSetMetaData rmeta = rs.getMetaData();

//确定数据集的列数，亦字段数

int numColumns=rmeta.getColumnCount();

// 输出每一个数据值
while(rs.next()) {%>
	
	
	<tr>
		<td>
                        <div class="liebiaomiddleyiceng1" id="only">
                            <h3>
                                <a href='/newsinfo/leads/TitleLead.aspx?t_id=<%=rs.getString(1)%>' title='2013年度项目启动会暨2012年度项目经验交流会预通知' target="_blank"
                                    style=" white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width:550px;">
                                <%=rs.getString(4)%></a>

                                <span>发表于:<%=rs.getString(2).substring(0,10)%></span></h3>
                            <div class="liebiaomiddleyiceng2"  style=" overflow: hidden;">
                                <p class="p2"><%=rs.getString(4)%></p>
                            </div>
                            <span class="xiamianxiangqing"><a href="newsdetail.jsp?id=<%= rs.getString(1) %>" target="_blank" >查看详情&gt;&gt;</a></span>
                        </div>
                    </td>
	</tr>
<% 
}

rs.close();
statement.close();

connection.close();

%> 	

</table>
                </div>
                <!--列表页码-->

                <div class="leibiao">
                
                        <div style="display:none;">
                            <span id="labPage">1</span>
                        </div> 
                   <%  
                   Integer pagenum = Integer.parseInt(request.getParameter("page"));
                   Integer maxnumber = maxnum;
                   if(pagenum <= maxnumber)
                   {
                   %> 
                   <span id="lblPages">
                   <% if(pagenum != 1){%>
                   <a href='news_show.jsp?page=1' class='pageS1'>&lt;&lt;</a>
                   <%}%>
                   
                   <%if((pagenum -1) > 0 ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum-1%>' class='pageS1'>&lt;</a>
                   <%}
                   %>
                   <%if((pagenum -3) > 0 ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum-3 %>' class='pageS1' ><%=pagenum-3 %></a>
                   <%}
                   %>
                    <%if((pagenum -2) > 0 ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum-2 %>' class='pageS1' ><%=pagenum-2 %></a>
                   <%}
                   %>
                    <%if((pagenum -1) > 0 ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum-1 %>' class='pageS1' ><%=pagenum-1%></a>
                   <%}
                   %>
                   <span class='pageS0' ><%=pagenum%></span>
                    <%if((pagenum +1) <= maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum+1%>' class='pageS1' ><%=pagenum+1%></a>
                   <%}
                   %>
                    <%if((pagenum +2) <= maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum+2%>' class='pageS1' ><%=pagenum+2%></a>
                   <%}
                   %>
                    <%if((pagenum +3) <= maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum+3%>' class='pageS1' ><%=pagenum+3%></a>
                   <%}
                   %>
                    <%if((pagenum +3) <= maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum+1%>' class='pageS1'>&gt;</a>
                   <%}
                   %>
                    <%if(pagenum  != maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=maxnumber %>' class='pageS1'>&gt;&gt;</a>
                   <%}
                   %>
                       转到第 <input type='text' class='text' id='txtInput'/>页 
                       <input type='button'  value='跳转' class='pageS2' 
                       onclick=" var strUrl='news_show.jsp?page=#pagenum#' ; 
                       var tzNumValue = document.getElementById('txtInput');
                       if (isNaN(tzNumValue.value)) { alert('请输入数字');tzNumValue.value='';return; } 
                        else if (tzNumValue.value < 1||tzNumValue.value><%=maxnumber %>) 
                        {  alert('请输入正确的页码');tzNumValue.value='';return; }
                         window.location.href = strUrl.replace('#pagenum#',tzNumValue.value);"/>
                         </span>
                   <% 
                   }    
                   %>    
                 
                </div>
            </div>  
        </div>
<div style="clear:both"></div>
    </div>
  </body>
</html>
