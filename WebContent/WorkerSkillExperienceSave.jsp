
<%@page import="bean.WorkerSkillExperienceDao"%>
<jsp:useBean id="obj" class="bean.WorkerSkillExperienceBean"/>

<jsp:setProperty property="*" name="obj"/>

<%
boolean status = WorkerSkillExperienceDao.validate(obj);
	
if(status){
out.println("Information has successfully saved into the database.");
session.setAttribute("session","TRUE");
}
else
{
out.print("Sorry, There are some issues in the information provided. Please check again and submit. Thanks !!!!");
}
%>
<jsp:include page="TaskDetail.jsp"></jsp:include>
