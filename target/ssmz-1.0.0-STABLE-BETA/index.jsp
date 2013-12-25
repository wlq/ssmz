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
<title>中国少数民族地区人群疾病谱调查研究工作平台</title>

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
 height:1700px;
border:2px solid #000;
overflow:hidden;
margin:0 auto;

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


}

.c_left { width:261px; float:left; background:#fff; border:1px solid #e2e2e2; overflow:hidden; }

.c_left .zymu { float:left; height:66px; line-height:66px; color:#59b42d; font-size:15px; font-weight:bold; }
.c_left .zymu img { margin:0 9px 0 21px; }

.c_left h2 { width:261px; height:49px; line-height:49px; padding-left:20px; font-size:16px; font-weight:bold; text-align:left; background:#87CEEB;
  clear:both; }
.c_left h2 span { font-size:16px; font-weight:bold; text-align:left; float:left; }
.c_left h2 a.up { display:block; width:18px; height:18px; background:url(info_show_js/images/slideup_03.png) no-repeat; float:right; margin-right:30px; margin-top:14px; }
.c_left h2 a.down { display:block; width:18px; height:18px; background:url(info_show_js/images/slidedown_03.png) no-repeat; float:right; margin-right:30px; margin-top:14px; }
.c_left_box { padding:10px auto; }
.c_left_box ul { margin:10px auto;list-style:none; }
.c_left_box ul li { line-height:24px; margin:3px 0 3px 50px;  }
.c_left_box ul li a{text-decoration:none;}
.c_left_box ul li a:hover{text-decoration:underline;}
.c_left_box ul li span { margin-left:0px; font-size:12px; 

color:#666666;
font-weight:lighter; z-index:99; zomm:1; }

#demo{overflow:auto;}
#demo1 h2{
font-size:20px;

}
#yingyong_demo{overflow:auto; }
#demo li{text-align: left;line-height:1.5em; padding-left:0;background: #FFFFFF no-repeat 0 50%;display: block;margin-bottom: 1px; }
#yingyong_demo li{text-align: left;line-height:1.5em; padding-left:0;background: #FFFFFF no-repeat 0 50%;display: block;margin-bottom: 1px; }
#demo{overflow:hidden; width: 300px;height: 500px; background:#FFFFFF; margin:auto;float: left;display: inline;border:1px solid #2d90cc;}
#yingyong_demo{overflow:hidden; width: 300px;height: 500px; background:#FFFFFF; margin:auto;float: left;display: inline;border:1px solid #2d90cc;}
#yingyong_demo1 li a{
color:#666666;
text-decoration:none;
}
#yingyong_demo1 li a:hover{text-decoration:underline;}
.yingyongshifan  h1
{width:195px; background:url(info_show_js/images/header_bg2012.gif) no-repeat;
height:32px; background-position:0 -128px;
background-repeat:repeat;font-size:14px;
font-weight:bold;padding-left:15px;
padding-top:8px;
bottom:-8px;
color:#fff; line-height:20px;
}

.xinweizhuanqu h4{ width:528px; background:url(info_show_js/images/sf_centerbg01.jpg) no-repeat; height:26px; line-height:26px; color:#fff; padding-left:15px; font-size:14px; border-bottom:2px solid #2491bd;}

 .l{width:540px;border:1px solid red;border-top:none;height:600px;}
/* 焦点图 */
.focus img{border:none;}
.focus{margin-left:50px;width:426px;height:240px;border:1px solid #EEE;position:relative;margin-top:6px;float:left}
.f426x240{width:426px;height:240px;overflow:hidden}
.f426x240 img{width:426px;height:240px}

.rslides{width:426px;position:relative;list-style:none;padding:0}
.rslides_nav{height:51px;width:31px;position:absolute;-webkit-tap-highlight-color:rgba(0,0,0,0);top:50%;left:0;opacity:0.5;text-indent:-9999px;overflow:hidden;text-decoration:none;background:url(info_show_js/images/i.png) no-repeat 0 -560px;margin-top:-28px}
.rslides_nav:active{opacity:1.0}
.rslides_nav.next{left:auto;background-position:-31px -560px;right:0}
.rslides_tabs{margin:12px auto;clear:both;text-align:center}
.rslides_tabs li{display:inline;float:none;_float:left;*float:left;margin-right:5px}
.rslides_tabs a{text-indent:-9999px;overflow:hidden;-webkit-border-radius:15px;-moz-border-radius:15px;border-radius:15px;background:rgba(0,0,0, .2);background:#DDD;display:inline-block;_display:block;*display:block;width:9px;height:9px}
.rslides_tabs .rslides_here a{background:rgba(0,0,0, .6);background:#390}


.news
{
clear:both;
padding-top:10px;
margin-left:10px;
width:520px;
}
.news h2 a
{
font-size:14px;
 color:#111111;
text-decoration:none
}
.news h2 span{
margin-top:10px;
margin-left:450px; 
font-size:9px; 
color:#666666;
font-weight:lighter;
text-decoration:none
}
 
.news .jishuhang
{
color:#666666;
font-weight:lighter;

}
.news .oushuhang
{
color:#666666;
font-weight:lighter;
}
.news h2 a:hover,span a:hover{
text-decoration: underline;
}

.news table td  a 
{
	font-size:14px;
	text-decoration:none;
	
}
.news table td  a:hover 
{
	color:#FF8247;
	
}
.news table
{
	
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: dotted;
	border-left-style: none;
	border-bottom-color: #a8a8a8;
}


/* Footer */

#footer {
	width: 920px;
	height: 49px;
	margin: 0 auto;
	margin-top:40px;
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
<script type="text/javascript">
$(function(){
	
	$(".down").toggle(function(){
		$(this).attr('class','up');
		$(this).parent().next('ul').slideUp('2000');
	},function(){
		$(this).attr('class','down');
		$(this).parent().next('ul').slideDown('2000');
	});
});

</script>

</head>
<body>

<div class="quanju"><!--全局div开始   <!-->

<div class="title_nav"><!--title_nva开始   <!-->
	<h1>
					中国少数民族地区人群疾病谱调查研究工作平台 
	</h1>
</div><!--title_nav结束  <!-->



<div class="menu"><!--menu开始  <!-->
<ul>
<li><a class="hide" href="#">首页</a></li>
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

<li><a class="hide" href="./mpIndex.jsp">项目管理</a></li>
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
		<li><a href="./medical/disp/hello1.jsp" title="changjianbing">数据分析</a></li>
                <li><a href=".:8080/health/" title="jizhengjiuzhi">信息采集</a></li>
                <li><a href=" yiyandiancha/report/index.html" title="jizhengjiuzhi">营养调查</a></li>
                
		<% 
		}
		else
		{
		%>
		<li><a href="./medical/disp/hello1.jsp" title="changjianbing">数据分析</a></li>
                <li><a href="./health/" title="jizhengjiuzhi">信息采集</a></li>
                <li><a href=" yiyandiancha/report/index.html" title="jizhengjiuzhi">营养调查</a></li>
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
<div class="main" style="width:1300px;height:1400px;margin:0 auto;margin-top:20px;"><!--men begin   <!-->

<div class="main_left" style="width:300px;height:1400px;margin-left:30px;float:left;">
			<!-- 中部左侧区域开始 -->
       <div class="c_left">
        	<div class="zymu"><img src="info_show_js/images/zyml.gif" />资源目录</div>
                         <div class="c_left_box">
           		<h2><span>常见病规范化诊疗</span><a href="#" class="down"></a></h2>
            	<ul>
                                 	<li><a href="newsinfo/key_Tecl_1/1.pps"><span>农村高血压规范诊疗</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_1/2.pps"><span>农村心房颤动规范诊疗</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_1/3.pps"><span>农村冠心病规范诊疗</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_1/4.pps"><span>农村支气管哮喘诊疗</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_1/5.pps"><span>农村血脂异常规范</span></a></li>
                                 </ul>
            </div>
                        <div class="c_left_box">
           		<h2><span>农村急诊救治</span><a href="#" class="down"></a></h2>
            	<ul>
                                 	<li><a href="newsinfo/key_Tecl_2/1.pps"><span>农村急性ST段抬高型心肌梗死诊断治疗</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_2/2.pps"><span>农村非ST段抬高急性冠脉综合征</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_2/3.pps"><span>农村高血压危象诊断与治疗关键技术</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_2/4.pps"><span>科研教学农村急性缺血性脑卒中诊断治疗关键技术</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_2/5.pps"><span>农村常见中毒救治关键技术</span></a></li>
                                 </ul>
            </div>
                        <div class="c_left_box">
           		<h2><span>农村慢性病控制</span><a href="#" class="down"></a></h2>
            	<ul>
                                 	<li><a href="newsinfo/key_Tecl_3/1.pdf"><span>肾脏病</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_3/2.pps"><span>呼吸系统</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_3/2.pps"><span>消化系统</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_3/2.pps"><span>血液系统</span></a></li>
                                 </ul>
            </div>
                        <div class="c_left_box">
           		<h2><span>农村心脑血管病防治</span><a href="#" class="down"></a></h2>
            	<ul>
                                 	<li><a href="newsinfo/key_Tecl_4/1.pps"><span>农村脑血管病二级预防诊疗</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_4/1.pps"><span>农村高血压防治诊疗</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_4/1.pps"><span>农村血脂异常防治诊疗</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_4/1.pps"><span>农村冠心病防治</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_4/1.pps"><span>农村心律失常防治</span></a></li>
                                 </ul>
            </div>
                        <div class="c_left_box">
           		<h2><span>农村肿瘤筛查与防治</span><a href="#" class="down"></a></h2>
            	<ul>
                                 	<li><a href="newsinfo/key_Tecl_5/1.pps"><span>农村肿瘤早期筛查</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_5/2.pps"><span>农村肿瘤化学治疗及放化疗不良反应</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_5/3.pps"><span>农村恶性肿瘤晚期常见并发症</span></a></li>
                                 </ul>
            </div>
                                    <div class="c_left_box">
           		<h2><span>农村数字医疗仪器</span><a href="#" class="down"></a></h2>
            	<ul>
                                 	<li><a href="newsinfo/key_Tecl_6/1.pps"><span>农村数字医疗仪器应用</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_6/2.pps"><span>农村数字医疗仪器质量标准检测体系</span></a></li>
                                 </ul>
            </div>
                        <div class="c_left_box">
           		<h2><span>农村重点人群营养健康</span><a href="#" class="down"></a></h2>
            	<ul>
                                 	<li><a href="newsinfo/key_Tecl_6/1.pps"><span>农村妇女营养不良性消瘦筛查</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_6/2.pps"><span>农村孕妇叶酸营养水平快速检验</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_6/3.pps"><span>农村老年人血脂异常患者健康</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_6/4.pps"><span>农村残疾人蛋白质-热能营养不良</span></a></li>
                                 	<li><a href="newsinfo/key_Tecl_6/5.pps"><span>农村精神病患者防治路径</span></a></li>
                                 </ul>
            </div>
                     </div>     

</div>
   
<div class="main_middle" style="width:550px;height:700px;margin-left:10px;float:left;">

<div class="xinweizhuanqu" style="width:540px;">

<h4>新闻专区</h4>

<div class="l" style="width:540px" >




<div class="focus">
    <ul class="rslides f426x240">
     <%

//驱动程序名

String mdriverName="com.mysql.jdbc.Driver";

//数据库用户名

String muserName="root";

//密码

String muserPasswd="123456";

//数据库名

String mdbName="sp";

//表名

String mtableName="txinwen";

//联结字符串

String murl="jdbc:mysql://localhost/"+mdbName+"?user="+muserName+"&password="+muserPasswd;

Class.forName("com.mysql.jdbc.Driver").newInstance();

Connection mconnection=DriverManager.getConnection(murl);

Statement mstatement = mconnection.createStatement();
String msql = "select cid,cpname from txinwen order by CCREATEDATETIME desc limit 0,6";
ResultSet mrs = mstatement.executeQuery(msql);

//获得数据结果集合

ResultSetMetaData mrmeta = mrs.getMetaData();
//确定数据集的列数，亦字段数

int mnumColumn = 1;

// 输出每一个数据值
while(mrs.next()) {
String cpname = mrs.getString(2);
int begin=-1 ,end= 0;
int [] ss = new int[2];
int j = 0;
cpname = cpname.replaceAll("\n", "<br>");
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


%>
        <li><a href="xinwendetail.jsp?id=<%=mrs.getString(1) %>"><img src="<%=href %>"  /></a></li>
<% 
}
mrs.close();

mstatement.close();

mconnection.close();

%> 
        
    </ul>
</div>

<div class="news">
<h2>
<span><a href="xinwen_show.jsp?page=1" style="font-size:12px;color:#868686; background:none!important; ">查看全部</a>
</span>
</h2>
<br/>


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

String tableName="txinwen";

//联结字符串

String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd;

Class.forName("com.mysql.jdbc.Driver").newInstance();

Connection connection=DriverManager.getConnection(url);

Statement statement = connection.createStatement();
String sql = "select cid,cname,ccreatedatetime from txinwen order by CCREATEDATETIME desc limit 0,6";
//String sql = "select * from Tnews where rownum<=2";
//String sql="select * from Tnews order by CCREATEDATETIME desc limit 3 ";

ResultSet rs = statement.executeQuery(sql);

//获得数据结果集合

ResultSetMetaData rmeta = rs.getMetaData();
//确定数据集的列数，亦字段数

int numColumn = 1;

// 输出每一个数据值
while(rs.next()) {
if(numColumn %2 == 1){
%>

<table width="515" height="22" border="0" cellpadding="0" cellspacing="0" class="bk-1">

					<tr>
					  <td width="13" align="left" valign="middle"><img src="info_show_js/images/home_70.gif" width="3" height="5" /></td>
					  <td width="405" align="left" valign="middle" ><b><a href="xinwendetail.jsp?id=<%= rs.getString(1) %>" class="jishuhang" target="_blank"   title=''><%= 
rs.getString(2)%></a></b></td>
					  <td width="97" align="left" valign="middle"><span class="STYLE2"><%= 
rs.getString(3).substring(0,10)%></span></td>
					</tr>
					<tr style="height:10px"></tr>

					</table>
<%
}
else {
%>
<table width="515" height="22" border="0" cellpadding="0" cellspacing="0" class="bk-1">

					<tr>
					  <td width="13" align="left" valign="middle"><img src="info_show_js/images/home_70.gif" width="3" height="5" /></td>
					  <td width="405" align="left" valign="middle" ><b><a href="xinwendetail.jsp?id=<%= rs.getString(1) %>" class="oushuhang" target="_blank"   title=''><%= 
rs.getString(2)%></a></b></td>
					  <td width="97" align="left" valign="middle"><span class="STYLE2"><%= 
rs.getString(3).substring(0,10)%></span></td>
					</tr>
					<tr style="height:10px"></tr>

					</table>
<%
}

 %>

<% 
numColumn++;
}



rs.close();

statement.close();

connection.close();

%> 
 </div> 


</div>
</div>

<div class="xinweizhuanqu" style="width:540px;margin-top:70px;">

<h4>工作简报</h4>

<div class="l" style="width:540px;height:450px;" >
<div class="news">
<h2>
<span><a href="news_show.jsp?page=1" style="font-size:12px;color:#868686; background:none!important; ">查看全部</a>
</span>
</h2>
<br/>


<%

//驱动程序名

String driverNames="com.mysql.jdbc.Driver";

//数据库用户名

String userNames="root";

//密码

String userPasswds="123456";

//数据库名

String dbNames="sp";

//表名

String tableNames="tnews";

//联结字符串

String urls="jdbc:mysql://localhost/"+dbNames+"?user="+userNames+"&password="+userPasswds;

Class.forName("com.mysql.jdbc.Driver").newInstance();

Connection connections=DriverManager.getConnection(urls);

Statement statements = connections.createStatement();
String sqls = "select * from Tnews order by CCREATEDATETIME desc limit 0,8";
//String sql = "select * from Tnews where rownum<=2";
//String sql="select * from Tnews order by CCREATEDATETIME desc limit 3 ";

ResultSet rss = statements.executeQuery(sqls);

//获得数据结果集合

ResultSetMetaData rmetas = rss.getMetaData();
//确定数据集的列数，亦字段数

int numColumns = 1;

// 输出每一个数据值
while(rss.next()) {
if(numColumns %2 == 1){
%>

<table width="515" height="22" border="0" cellpadding="0" cellspacing="0" class="bk-1">

					<tr>
					  <td width="13" align="left" valign="middle"><img src="info_show_js/images/home_70.gif" width="3" height="5" /></td>
					  <td width="405" align="left" valign="middle" ><b><a href="newsdetail.jsp?id=<%= rss.getString(1) %>" class="jishuhang" target="_blank"   title=''><%= 
rss.getString(4)%></a></b></td>
					  <td width="97" align="left" valign="middle"><span class="STYLE2"><%= 
rss.getString(2).substring(0,10)%></span></td>
					</tr>
					<tr style="height:10px"></tr>

					</table>
<%
}
else {
%>
<table width="515" height="22" border="0" cellpadding="0" cellspacing="0" class="bk-1">

					<tr>
					  <td width="13" align="left" valign="middle"><img src="info_show_js/images/home_70.gif" width="3" height="5" /></td>
					  <td width="405" align="left" valign="middle" ><b><a href="newsdetail.jsp?id=<%= rss.getString(1) %>" class="oushuhang" target="_blank"   title=''><%= 
rss.getString(4)%></a></b></td>
					  <td width="97" align="left" valign="middle"><span class="STYLE2"><%= 
rss.getString(2).substring(0,10)%></span></td>
					</tr>
					<tr style="height:10px"></tr>

					</table>
<%
}

 %>

<% 
numColumns++;
}



rss.close();

statements.close();

connections.close();

%> 
 </div> 

</div>
</div>

</div>


<div class="main_right"style="width:300px;height:700px;margin-left:35px;float:left;">

<div class="yingyongshifan" style="width:300px;height:500px;">
<h1>实证研究基地</h1>


<div id="yingyong_demo" style="width:300px;position:relative;overflow:scroll;overflow-y:hidden;overflow-x:hidden;margin-top:-8px;">
<div id="yingyong_demo1" style="margin-top:35px">  
<h3  style="background:url(http://img.xywy.com/single/sg_76.jpg) 5px center no-repeat;padding-left:25px; color:#234E9B;">湖北省保康县</h3>
    <li><P><FONT color=#ff0000></FONT><FONT color=#666666 size="2.5" >&nbsp;&nbsp;&nbsp; <a href="newsinfo/Lab_Jidi/1.pdf">将农村医疗卫生关键技术推送到县乡村三级医疗卫生机构，全面提升全县整体医疗卫生水平。</a></FONT></P>
 </li>
<h3  style="background:url(http://img.xywy.com/single/sg_76.jpg) 5px center no-repeat;padding-left:25px;margin-top:10px; color:#234E9B;">云南省宣威示范县</h3>
    <li><P><FONT color=#ff0000></FONT><FONT color=#666666 size="2.5" >&nbsp;&nbsp;&nbsp; <a href="newsinfo/Lab_Jidi/2.pdf">提高宣威市农村肺癌的早诊早治率；为宣威市县乡村三级医疗机构培养学科带头人和科技骨干，全面提升农村医疗卫生服务整体水平，实现科技惠民。</a></FONT></P>
 </li>
<h3  style="background:url(http://img.xywy.com/single/sg_76.jpg) 5px center no-repeat;padding-left:25px;margin-top:10px; color:#234E9B;">河北省磁县</h3>
    <li><P><FONT color=#ff0000></FONT><FONT color=#666666 size="2.5" >&nbsp;&nbsp;&nbsp; <a href="newsinfo/Lab_Jidi/3.pdf">建立、健全全县各乡镇卫生行政部门领导参与，集防病、医疗和健康教育于一体慢性病防治体系，大力开展健康教育和健康促进活动，普及脑血管病的防治知识，提高人群对高血压、脑卒中、冠心病等疾病的知晓率及防治水平。</a></FONT></P>
 </li>
<h3  style="background:url(http://img.xywy.com/single/sg_76.jpg) 5px center no-repeat;padding-left:25px;margin-top:10px; color:#234E9B;">大连市长海县</h3>
    <li><P><FONT color=#ff0000></FONT><FONT color=#666666 size="2.5" >&nbsp;&nbsp;&nbsp; <a href="newsinfo/Lab_Jidi/4.pdf">逐步完善以大连大学附属中山医院为主站，县医院为枢纽，乡镇卫生院为终端，覆盖全县的高效、便捷的远程医疗诊断、会诊系统和培训系统。</a></FONT></P>
 </li>
<!--
    <h4>实证研究基地2</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 实验基地描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
     <h4>实证研究基地3</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 实验基地描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
     <h4>实证研究基地4</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 实验基地描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
     <h4>实证研究基地5</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 实验基地描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
      <h4>实证研究基地6</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 实验基地描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
      <h4>实证研究基地7</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 实验基地描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
       <h4>实证研究基地8</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 实验基地描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
-->
    </div>
<div id="yingyong_demo2"> </div>
<!--
<script type="text/javascript">
 //无间断滚动代码，兼容IE、Firefox、Opera
  var speed_1=20;
 var FG_Demo=document.getElementById('yingyong_demo');
 var FG_Demo1=document.getElementById('yingyong_demo1');
 var FG_Demo2=document.getElementById('yingyong_demo2');
 FG_Demo2.innerHTML=FG_Demo1.innerHTML
 function Marquee_1(){
 if(FG_Demo2.offsetHeight-FG_Demo.scrollTop<=0)
 FG_Demo.scrollTop-=FG_Demo1.offsetHeight
 else{
 FG_Demo.scrollTop++
 }
 }
 var MyMar_1=setInterval(Marquee_1,speed_1)
 FG_Demo.onmouseover=function() {clearInterval(MyMar_1)}
 FG_Demo.onmouseout=function() {MyMar_1=setInterval(Marquee_1,speed_1)}
</script> 
-->
</div>

</div>
</div>




</div><!--men end   <!-->
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