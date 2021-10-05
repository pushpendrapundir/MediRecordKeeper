<%@page import="java.util.ArrayList"%>
<%@page import="com.medi.docs.dao.DocumentDao"%>
<%@page import="com.medi.docs.helper.ConnectionProvider"%>
<%@page import="java.util.List"%>
<%@page import="com.medi.docs.entities.User"%>
<%@page import="com.medi.docs.entities.Document"%>
<% Document d=(Document)session.getAttribute("docdetail");
List <Document> list=null;
NewDocumentDao dao=new NewDocumentDao(ConnectionProvider.getConnection());
List<Document> l=dao.getDocAll();
for(Document d1:l)
{

%>

<div class="card">
    <div class="card-header">
        <h2><%=d1.getAdmin_name()%></h2>
        <%}%>
</div>