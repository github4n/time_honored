<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:if test="${data != null && data.items != null}">
	<c:forEach var="menu" items="${data.items}">
	    <tr>
	        <td>${menu.mc}</td>
	        <td>${menu.cdlx}</td>
	        <td>${menu.url}</td>
	        <td>${menu.sx}</td>
         	<td>${menu.cjsj}</td>
         	<td>${menu.xgsj}</td>
	        <td>
	         	<a class="btn btn-sm btn-info edit_link" data-id="${menu.id}" data-url="system/menu/edit" href="">编辑</a>
	         	<a class="btn btn-sm btn-danger cancel_link" data-id="${menu.id}" data-url="system/menu/delete" href="">删除</a>
	        </td>
	    </tr>
    </c:forEach>
</c:if>

<c:if test="${data == null || data.items == null}">
	<tr>
		<td colspan="7"><div class="not-data">暂无数据</div></td>
	</tr>
</c:if>

<tr>
	<td colspan="7"><div id="pages" data-page="${data.pageNo-1}" data-total="${data.totalSize}" data-epage="${data.pageSize}"></div></td>
</tr>