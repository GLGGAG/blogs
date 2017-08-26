<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String path =request.getContextPath();
    int port=request.getServerPort();
    String portStr=port==80?"":":"+port;
    String basePath = request.getScheme()+"://"+request.getServerName()+portStr+path;
%>
<c:set var="ctxPath" value="<%=path %>" />
<c:set var="basePath" value="<%=basePath %>" />
<c:set var="imageServerUrl" value="<%=basePath %>" />
<c:set var="staticSourcePath" value="<%=basePath %>" />
