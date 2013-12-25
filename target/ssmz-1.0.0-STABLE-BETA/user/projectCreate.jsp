<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'projectCreate.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<jsp:include page="../inc.jsp"></jsp:include>

</head>

<body>  
    <h2>Basic Form</h2>  
    <div class="demo-info">  
        <div class="demo-tip icon-tip"></div>  
        <div>Fill the form and submit it.</div>  
    </div>  
    <div style="margin:10px 0;"></div>  
    <div class="easyui-panel" title="New Topic">  
        <div style="padding:10px 0 10px 60px">  
        <form id="ff" method="post">  
            <table>  
                <tr>  
                    <td>姓名:</td>  
                    <td><input class="easyui-validatebox" type="text" name="name" data-options="required:true"></input></td>  
                </tr>  
                <tr>  
                    <td>Email:</td>  
                    <td><input class="easyui-validatebox" type="text" name="email" data-options="required:true,validType:'email'"></input></td>  
                </tr>  
                <tr>  
                    <td>Subject:</td>  
                    <td><input class="easyui-validatebox" type="text" name="subject" data-options="required:true"></input></td>  
                </tr>  
                <tr>  
                    <td>Message:</td>  
                    <td><textarea name="message" style="height:60px;"></textarea></td>  
                </tr>  
                <tr>  
                    <td>Language:</td>  
                    <td>  
                        <select class="easyui-combobox" name="language"><option value="ar">Arabic</option><option value="bg">Bulgarian</option><option value="ca">Catalan</option><option value="zh-cht">Chinese Traditional</option><option value="cs">Czech</option><option value="da">Danish</option><option value="nl">Dutch</option><option value="en" selected="selected">English</option><option value="et">Estonian</option><option value="fi">Finnish</option><option value="fr">French</option><option value="de">German</option><option value="el">Greek</option><option value="ht">Haitian Creole</option><option value="he">Hebrew</option><option value="hi">Hindi</option><option value="mww">Hmong Daw</option><option value="hu">Hungarian</option><option value="id">Indonesian</option><option value="it">Italian</option><option value="ja">Japanese</option><option value="ko">Korean</option><option value="lv">Latvian</option><option value="lt">Lithuanian</option><option value="no">Norwegian</option><option value="fa">Persian</option><option value="pl">Polish</option><option value="pt">Portuguese</option><option value="ro">Romanian</option><option value="ru">Russian</option><option value="sk">Slovak</option><option value="sl">Slovenian</option><option value="es">Spanish</option><option value="sv">Swedish</option><option value="th">Thai</option><option value="tr">Turkish</option><option value="uk">Ukrainian</option><option value="vi">Vietnamese</option></select>  
                    </td>  
                </tr>  
            </table>  
        </form>  
        </div>  
        <div style="text-align:center;padding:5px">  
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>  
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>  
        </div>  
    </div>  
    <script>  
        function submitForm(){  
            $('#ff').form('submit');  
        }  
        function clearForm(){  
            $('#ff').form('clear');  
        }  
    </script>  
</body>
</html>
