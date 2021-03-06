<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>登录页面</title>
    <link rel="stylesheet" href="/plugin/layui/css/layui.css" />
    <script type="text/javascript" src="/js/jquery-3.4.0.js"></script>
    <script type="text/javascript" src="/js/jquery.serializeObject.js"></script>
    <script src="/plugin/layui/layui.js"></script>
    <style>
        #bodyDiv{
            width: 100%;
            height: 100%;
            background: url(/images/loginBackImg.PNG);
            background-size: cover;
        }

        .fontSize{
            font-size: 40px;
            letter-spacing: 12px;
            font-weight: 800;
        }
    </style>
</head>
<body>
<div align="center" id="bodyDiv">
    <div style="padding-top: 100px;">
        <h1 class="fontSize">${systemName}</h1>
    </div>
    <div style="padding-top: 60px;">
        <form id="login" action="/loginRegister/login" method="post" class="layui-form">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label" style="font-size: 16px;font-weight: 600">用户账号：</label>
                <div class="layui-input-inline">
                    <label>
                        <input type="text" name="loginName" autocomplete="off" placeholder="请输入标题" class="layui-input">
                    </label>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label" style="font-size: 16px;font-weight: 600">密&emsp;&emsp;码：</label>
                <div class="layui-input-inline">
                    <label>
                        <input type="password" name="password" autocomplete="off" placeholder="请输入标题" class="layui-input">
                    </label>
                </div>
            </div>
        </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label" style="font-size: 16px;font-weight: 600">用户类型：</label>
                    <div class="layui-input-inline">
                        <label>
                            <select name="userType"  class="layui-input">
                                <option value="">请选择用户类型</option>
                                <option value="0">管理员</option>
                                <option value="1">患者</option>
                                <option value="2">医生</option>
                            </select>
                        </label>
                    </div>
                </div>
            </div>
        <div class="layui-form-item">
            <div class="layui-inline" style="text-align: left;">
                <label class="layui-form-label" style="font-size: 14px;font-weight: 600;margin-left: -180px;"><a onclick="foundPassword()" style="color: #007DDB;">找回密码</a></label>
            </div>
        </div>
        <div class="layui-form-item">
            <label>
                <button type="submit" name="login" class="layui-btn layui-btn-normal">登录</button><!-- onclick="loginSystem()" -->
                <button type="reset" name="reset" class="layui-btn layui-btn-warm" style="margin-left: 48px;">重置</button>
            </label>
        </div>
    </form>
    </div>
    <%--<button type="button" onclick="register()">注册</button>--%>
</div>
</body>
<script type="text/javascript">

    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use(['form'], function(){
        var form = layui.element;

        //表单初始赋值
        form.val('example', {
            "username": "贤心" // "name": "value"
            ,"password": "123456"
            ,"interest": 1
            ,"like[write]": true //复选框选中状态
            ,"close": true //开关状态
            ,"sex": "女"
            ,"desc": "我爱 layui"
        })
    });

    $(function () {
        var data = $("#systemName").val();
        var val = eval("("+data+")");
        console.log(val);
    });

    function register() {
        window.location.replace("/loginRegister/goRegisterView")
    }

    function foundPassword() {
        alert("功能建设中！！！")
    }

</script>
</html>