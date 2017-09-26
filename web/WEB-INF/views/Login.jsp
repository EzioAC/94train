<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 17-9-7
  Time: 下午2:46
  To change this template use File | Settings | File Templates.
--%>

<jsp:include page="common/IncludeTop.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <ul  class="nav nav-tabs">

        <li class="active">
            <a href="#user" data-toggle="tab" onclick="disappear(this)" > 用户登录</a>
        </li>
        <li>
            <a href="#adminster" data-toggle="tab" onclick="disappear(this)" > 管理员登录</a>
        </li>
    </ul>

    <div class="col-xs-offset-2 col-xs-8">
         <div id="myTabContent" class="tab-content">

             <%
                 String msg1 = (String) request.getAttribute("Msg");
                 if(msg1!=null)
                 {
             %>

             <div class="alert alert-danger" id="warnning" style="display: block" role="alert">
                 <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                 <span class="sr-only">Error:</span>
                 ${Msg}
             </div>
             <%
                 }
             %>

            <div class="row tab-pane fade in active" id="user">
                <form class="form-group" role="form" action="/registerAndLogin/Login.do" method="post">
                        <div class="form-group">
                            <label for="UPhoneNum">用户名/手机号</label>
                            <input type="number" id="UPhoneNum" name="PhoneNum" class="form-control" placeholder="用户名/手机号" autofocus>
                        </div>

                        <div class="form-group">
                            <label for="UPassword">密码</label>
                            <input type="password" id="UPassword" name="Password" class="form-control" placeholder="密码" required>
                        </div>

                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="remember-me"> 记住密码 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/user/viewPswGetBack.do">忘记密码</a>
                            </label>
                        </div>
                        <input class="btn btn-lg btn-primary btn-block" type="submit" onclick="appear()" value="登录">
                    </form>
            </div>

            <div class="row tab-pane fade" id="adminster">
                <form class="form-group" role="form" action="/registerAndLogin/Login.do" method="post">

                    <div class="form-group">
                        <label for="APhoneNum">用户名/手机号</label>
                        <input type="number" id="APhoneNum" name="PhoneNum" class="form-control" placeholder="用户名/手机号" autofocus>
                    </div>

                    <div class="form-group">
                        <label for="APassword">密码</label>
                        <input type="password" id="APassword" name="Password" class="form-control" placeholder="密码" required>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me"> 记住密码 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/user/viewPswGetBack.do">忘记密码</a>
                        </label>
                    </div>
                    <input class="btn btn-lg btn-primary btn-block" type="submit" onclick="appear()" value="登录">
                </form>
            </div>

        </div>

    </div>
</div>

<jsp:include page="common/IncludeBottom.jsp"/>

<script>
;
    
    function disappear(obj) {
        var warnning = document.getElementById("warnning");
        warnning.style.display = "none";
    }
    
    function appear() {
        var warnning = document.getElementById("warnning");
        warnning.style.display = "block";
    }
</script>

