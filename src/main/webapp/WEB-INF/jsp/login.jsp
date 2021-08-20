<%--
  Created by IntelliJ IDEA.
  User: tamsanqakeithncube
  Date: 2021/08/06
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Radarta</title>
    <style>
      html, body {
          position: relative;
          width: 100%;
          height: 100%;
          background-color: #E1ECF4;
      }

      .error {
          color: #ff0000;
      }

      .errorblock {
          color: #000;
          background-color: #FFEEEE;
          border: 3px solid #FF0000;
          padding: 8px;
          margin: 16px;
      }

      #login-view{
        position: absolute;
        top: 40%;
        left: 50%;
        transform: translate(-50%, -50%);
        display: inline-block;
        padding: 20px;
        border: 1px solid #DCD9DC;
        background-color: #E1ECF4;
      }
      /*#welcome {*/
      /*    text-align: center;*/
      /*}*/
      .center-logo {
          display: block;
          margin-left: auto;
          margin-right: auto;
          width: 24%;
      }
      #copyright {
          display: block;
          position: absolute;
          bottom: 10px;
          width: 100%;
      }
      td {
          color: #666666;
      }
      input {
          color: #666666;
      }
    </style>
</head>
<body>
<%--    <div style="margin: 0 auto">--%>
<%--        <h3 id="welcome">Welcome to:</h3>--%>
<%--    </div>--%>
    <div style="margin: auto;">
        <img class="center-logo" src="images/rad-resized.jpg" alt="logo">
    </div>
    <div id="login-view">
        <form:form modelAttribute="login">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <table>
                <tr>
                    <td style="text-align: left">Login</td><td></td><td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <form:errors path="name" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td colspan="2">
                        <form:input path="name"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <form:errors path="password" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td colspan="2">
                        <form:password path="password"/>
                    </td>
                </tr>
                <tr>
                    <td></td><td></td><td style="text-align: right"><input type="submit" value="Login"></td>
                </tr>
            </table>
      </form:form>
    </div>
    <div id="copyright">
        <p style="text-align: center;">Copyright &copy of Radarta Inc. All rights reserced.</p>
    </div>
</body>
</html>
