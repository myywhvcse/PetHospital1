
<div id="main">
    <%
        User user = (User) request.getAttribute("user");
    %>
    <table>
        <tr>
            <td>客户姓名</td>
            <td><input disabled="disabled" value="<%=user.getName()%>" /></td>
        </tr>
        <tr>
            <td>联系电话</td>
            <td><input disabled="disabled" value="<%=user.getTel()%>" /></td>
        </tr>
        <tr>
            <td>家庭地址</td>
            <td><input disabled="disabled" value="<%=user.getAddress()%>" /></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <%--<a href="PetServlet?m=toAdd&cid=<%=user.getId()%>&cname=<%=URLEncoder.encode(user.getName(), "utf-8")%>">添加新宠物</a>--%>
                <%--<input value="返回" type="button" onclick="history.back(-1)"/用history.back不合理，导致如果在添加宠物页面保存宠物成功并跳转到本页后，又返回了添加宠物页面，改为指定跳转到客户查询页 --%>
                <input value="返回" type="button" onclick="location.href='customersearch.jsp'"/>

            </td>
        </tr>
    </table>
    <%--比较request.getAttribute()和request.getAttribute()的区别--%>
    <h4 align="center" style="color:red"><%=request.getAttribute("msg") == null ? "" : request.getAttribute("msg")%><%=request.getParameter("msg") == null ? "" : request.getParameter("msg")%></h4>
    <hr>
    <table>
        <tr>
            <td colspan="2">宠物信息</td>
            <%--<td>操作</td>--%>
        </tr>

        <%
            for (Pet pet : user.getPets())
            {
        %>
        <tr>
            <td><img src="<%=pet.getPhoto()%>" width="48px" height="48px"></td>
            <td class="minWidth">姓名:<%=pet.getName()%><br/>生日:<%=pet.getBirthdate()%>
            </td>
            <%--<td class="minWidth">--%>
            <%--<a href="PetServlet?m=delete&pid=<%=pet.getId()%>&cid=<%=user.getId()%>" onclick=" return confirmDialog();">删除</a>|--%>
            <%--<a href="VisitServlet?m=toAdd&customerId=<%=user.getId()%>&petId=<%=pet.getId()%>&petName=<%=URLEncoder.encode(pet.getName(), "UTF-8")%>">添加病例</a>|--%>
            <%--<a href="VisitServlet?m=showHistory&petId=<%=pet.getId()%>">浏览病例</a></td>--%>
        </tr>
        <%
            }
        %>

    </table>

</div>
<div id="footer"></div>
</div>
</body>
</html>
</html>