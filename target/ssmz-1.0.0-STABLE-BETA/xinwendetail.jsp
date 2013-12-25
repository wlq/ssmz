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

 width:1300px;
 
border:2px solid #000;
overflow:hidden;
margin:0 auto;
}

.title_nav{
 width:1300px;
 height:134px;
text-align:center;
display:table-cell;
vertical-align:middle;
 background:url(fimages/img04.jpg);
 
}

.title_nav h1 {
	
	margin:0 auto;
	line-height: normal;
	text-transform: lowercase;
	font-family:"楷体";
	font-weight: bold;
	font-size:45px;
	color: #FFFFFF;
}

.menu {
font-family: arial, sans-serif; 
width:1300px;
height:35px;
background:#000; 
margin:0; 
margin:0px 0;
}
/* remove the bullets and set the margin and padding to zero for the unordered list */
.menu ul {
padding:0; 
margin:0;
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


.main
{
width:1200px;


}



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
<div class="main" style="margin-top:20px;width:1200px;"><!--men begin   <!-->
<div>
 <p>
        <span id="NavigationWUC1_lbMap">首页&nbsp;&nbsp;&lt;&lt;&nbsp;&nbsp;最新资讯&nbsp;&nbsp;&lt;&lt;&nbsp;&nbsp;新闻详情</span>
    </p>
</div>
<div class="main_left" style="width:40px;height:40px;margin-left:15px;float:left;">


</div>
   
<div class="main_middle" style="width:950px;margin-left:15px;float:left;border:1px solid gray;">
<br/>
<%
   
   String driverName="com.mysql.jdbc.Driver";
   
   String userName="root";

//密码

String userPasswd="123456";

//数据库名

String dbName="sp";

//表名

String tableName="txinwen";

//联结字符串
String cid = request.getParameter("id");
String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd;

Class.forName("com.mysql.jdbc.Driver").newInstance();

Connection connection=DriverManager.getConnection(url);

Statement statement = connection.createStatement();

String sql="SELECT CDESC,CPNAME,CNAME,CABSTRACT FROM txinwen WHERE CID ='"+cid+"'";
ResultSet rs = statement.executeQuery(sql);
while(rs.next()) {%>
<%
String cpname = rs.getString(2);
String content = rs.getString(1);
String cname = rs.getString(3);
String cabstract = rs.getString(4);
String str  = new String("\"");
String imgsrc = null;
System.out.println("the cpname is "+cpname);
int begin=-1 ,end= 0;
int [] ss = new int[2];
int j = 0;
content = content.replaceAll("\n", "<br>");
if(cpname.length() > 0){
for(int i = 0 ;i < cpname.length(); i ++)
{
   if(cpname.substring(i,i+1).equals("\"")&&j<2)
   {
    System.out.println("the i is "+i);
    ss[j] = i;
    j++;

    
   }
   
}

String href = cpname.substring(ss[0]+1, ss[1]);
imgsrc = href;
System.out.println("the href is "+href);
}
 %>
 <h2 style="text-align:center"><%=cname %></h2>
<div>
<br/>
<br/>
<div style="text-align:center">
 </div>
 <br/>
 <br/>
 <div><strong><b>摘要:</b></strong><%=cabstract %></div>
 <br/>
 <br/>
 <div class="news" style="text-align:center">
 <img src="<%=imgsrc%>" style="width:400px;height:400px;align:center" />
 <div class="content" style="text-align:left;text-indent:20px;letter-sapcing:12px;line-height:30px;">
 <p style="text-align:left;">
 <%=content %>
 </p> 
 </div>
 </div>
 
 </div>
<%
}
ResultSetMetaData rmeta = rs.getMetaData();
rs.close();
statement.close();
connection.close(); 
%>
    
<br/>
<br/>
<br/>
<br/>
<br/>
</div>


<div class="main_right"style="width:50px;margin-left:10px;float:left;">


</div>
</div><!--men end   <!-->
<div style="clear:both;height:70px;"></div>
		<div id="footer-bgcontent" align="center">
			<div id="footer">
				<p>
					Copyright (c) 2012 教育部科技司、中国人民解放军总医院 . Design by 中国人民解放军总医院.
				</p>
			</div>
		</div>
</div> <!--全局div结束    !-->


 <script>

var sample  =   new  ScrollObj( " scroollBody " , " scroollBox " , 25 , 300 , 19 , 63 , 50 );

</script> 

</body>
</html>