<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>emplist</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css" />
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader">
                <p>
                    2019/01/01
                    <br />
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="#">main</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                欢迎!
            </h1>
            <table class="table">
                <tr class="table_header">
                    <td>
                        员工ID
                    </td>
                    <td>
                        部门ID
                    </td>
                    <td>
                        姓名
                    </td>
                    <td>
                        薪资
                    </td>
                    <td>
                        年龄
                    </td>
                    <td>
                        婚否
                    </td>
                    <td>
                        生日
                    </td>
                    <td>
                        登录时间
                    </td>
                </tr>
                <s:iterator value="emps" status="s">
                    <tr class="row${s.index % 2+1 }">
                        <td>
                            <s:property value="emp_id"/>
                        </td>
                        <td>
                            <s:property value="dept_id"/>
                        </td>
                        <td>
                            <s:property value="name"/>
                        </td>
                        <td>
                            <s:property value="salary"/>
                        </td>
                        <td>
                            <s:property value="age"/>
                        </td>
                        <td>
                            <s:if test="marry == true">已婚</s:if>
                            <s:elseif test="marry == false">未婚</s:elseif>
                            <s:else>未知</s:else>
                        </td>
                        <td>
                            <s:property value="birthday"/>
                        </td>
                        <td>
                            <s:property value="lastLoginTime"/>
                        </td>
                    </tr>
                </s:iterator>
            </table>
            <p>
                <input type="button" class="button" value="添加员工"
                       onclick="location.href='toAdd.action'"/>
            </p>
        </div>
    </div>
    <div id="footer">
        <div id="footer_bg">
            ABC@126.com
        </div>
    </div>
</div>
</body>
</html>