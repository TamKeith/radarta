<%--
  Created by IntelliJ IDEA.
  User: tamsanqakeithncube
  Date: 2021/08/11
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title>Patient</title>
</head>
<body>
    <h3>Patient Info</h3>
    <div id="patient-info">
        <form:form modelAttribute="patient">
            <table>
                <tr>
                    <td>First Name:</td>
                    <td colspan="2"><form:input path="firstName"/></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td colspan="2"><form:input path="lastName"/></td>
                </tr>
                <tr>
                    <td>Date of Birth:</td>
                    <td colspan="2"><form:input path="dob"/></td>
                </tr>
                <tr>
                    <td>Sex:</td>
                    <td colspan="2"><form:input path="sex"/></td>
                </tr>
                <tr>
                    <td>ID:</td>
                    <td colspan="2"><form:input path="id"/></td>
                </tr>
                <tr>
                    <td>Referral:</td>
                    <td colspan="2"><form:input path="referral"/></td>
                </tr>
                <tr>
                    <td>History:</td>
                    <td colspan="2"><form:input path="history"/></td>
                </tr>
                <tr>
                    <td>Examination Required:</td>
                    <td colspan="2"><form:input path="examinationRequired"/></td>
                </tr>
                <tr>
                    <td>Payment:</td>
                    <td colspan="2"><form:input path="payment"/></td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>
