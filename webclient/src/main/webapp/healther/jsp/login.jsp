<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html lang="en">
<%String path = request.getContextPath();%>
<head>
    <meta charset="UTF-8">
    <title>保健员登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/xadmin/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/xadmin/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/xadmin/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/jquery-3.5.1.js" ></script>
    <script src="${pageContext.request.contextPath}/healther/js/login.js" ></script>
    <script src="${pageContext.request.contextPath}/static/xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
</head>
<body class="login-bg">

<div class="login layui-anim layui-anim-up">
    <input type="hidden" id="path" value=<%=path%>>
    <div class="message">保健员登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" class="layui-form">
        <input id="healtherPhone" name="healtherPhone" placeholder="电话" type="text" lay-verify="required" class="layui-input" >
        <hr class="hr15">
        <input id="healtherPwd" name="healtherPwd" lay-verify="required" placeholder="密码" type="password" class="layui-input" >
        <hr class="hr15">
        <input id="vCode" name="vCode" lay-verify="required" placeholder="验证码" type="text" class="layui-input">
        <hr class="hr15">
        <img id="vCodeImg" style="width: 160px; height: 60px" onclick="changeImg()" src="${pageContext.request.contextPath}/VerifyCodeControl/code">
        <a style="text-decoration:none;" value="" onclick="changeImg()">看不清，换一张</a>
        <hr class="hr15">
        <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="button" onclick="ajax()">
        <hr class="hr20">
    </form>
</div>

<%--<script>--%>
<%--    $(function () {--%>
<%--        layui.use('form', function () {--%>
<%--            var form = layui.form;--%>
<%--            // layer.msg('玩命卖萌中', function(){--%>
<%--            //   //关闭后的操作--%>
<%--            //   });--%>
<%--            //监听提交--%>
<%--            form.on('submit(login)', function (data) {--%>
<%--                // alert(888)--%>
<%--                layer.msg(JSON.stringify(data.field), function () {--%>
<%--                    location.href = 'index.jsp'--%>
<%--                });--%>
<%--                return false;--%>
<%--            });--%>
<%--        });--%>
<%--    })--%>
<%--</script>--%>
<!-- 底部结束 -->
<%--<script>--%>
<%--    //百度统计可去掉--%>
<%--    var _hmt = _hmt || [];--%>
<%--    (function () {--%>
<%--        var hm = document.createElement("script");--%>
<%--        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";--%>
<%--        var s = document.getElementsByTagName("script")[0];--%>
<%--        s.parentNode.insertBefore(hm, s);--%>
<%--    })();--%>
<%--</script>--%>
</body>
</html>