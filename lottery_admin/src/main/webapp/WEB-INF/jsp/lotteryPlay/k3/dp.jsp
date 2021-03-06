<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../../common/header.jsp" />
	
	<style type="text/css">
		input[type="number"] {width:100%;}
		th,td {text-align:center; width: 50px; height: 10px;}
		
		.ball {
		    background: url(assets/images/sz.gif) no-repeat;
		    display: inline-block;
		    width: 27px;
		    height: 27px;
		    font-size: 0px;
		    text-indent: -99999px;
		    margin-right: 2px;
		}
		.b1 {background-position: 0 0px;}
		.b2 {background-position: 0 -27px;}
		.b3 {background-position: 0 -54px;}
		.b4 {background-position: 0 -81px;}
		.b5 {background-position: 0 -108px;}
		.b6 {background-position: 0 -135px;}
	</style>
</head>

<body>
    <div class="ibox-content">
        <div class="row clearfix">
            <div class="col-sm-12">
            	<div class="form-group">
            		快捷设置：
            		<input id="quickSet" type="text" min="0" width="100px;">
            	</div>
            	
	    		<form role="form" class="form-horizontal" id="form" data-url="system/lotteryPlay/editSubmit">
	        	<table class="table table-bordered table-condensed">
	            	<thead>
	            		<tr>
	            			<th>号码</th>
	            			<th>赔率</th>
	            			<th>号码</th>
	            			<th>赔率</th>
	            			<th>号码</th>
	            			<th>赔率</th>
	            		</tr>
					</thead>
					<tbody>
		           		<tr>
			               	<td><span class="ball b1"></span><span class="ball b1"></span></td>
			               	<td><input class="quickNumber" type="number" min="0" name="n11" value="${data.n11.bonus}"></td>
			               	<td><span class="ball b2"></span><span class="ball b2"></span></td>
			               	<td><input class="quickNumber" type="number" min="0" name="n22" value="${data.n22.bonus}"></td>
			               	<td><span class="ball b3"></span><span class="ball b3"></span></td>
			               	<td><input class="quickNumber" type="number" min="0" name="n33" value="${data.n33.bonus}"></td>
		               	</tr>
		               	<tr>
		               		<td><span class="ball b4"></span><span class="ball b4"></span></td>
			               	<td><input class="quickNumber" type="number" min="0" name="n44" value="${data.n44.bonus}"></td>
			               	<td><span class="ball b5"></span><span class="ball b5"></span></td>
			               	<td><input class="quickNumber" type="number" min="0" name="n55" value="${data.n55.bonus}"></td>
			               	<td><span class="ball b6"></span><span class="ball b6"></span></td>
			               	<td><input class="quickNumber" type="number" min="0" name="n66" value="${data.n66.bonus}"></td>
		               	</tr>
	            	</tbody>
            	</table>
            	
            	<input type="hidden" name="roomId" value="${data.roomId}">
            	<input type="hidden" name="lotteryType" value="${data.lotteryType}">
            	<input type="hidden" name="lotteryPlayType" value="${data.lotteryPlayType}">
            	
            	<div class="form-group">
	                 <div class="col-sm-offset-2 col-sm-9" style="text-align: center;">
	                   <input type="submit" class="btn btn-info" value="保存">
	                   <input type="button" id="colse-btn" class="btn btn-danger" value="取消">
	                 </div>
	            </div>
            	</form>
	    	</div>
        </div>
    </div>
    
    <script type="text/javascript" src="assets/js/require.js"></script>
	<script type="text/javascript" src="assets/js/require.config.js"></script>
    <script type="text/javascript">
        requirejs(["jquery","form"],function($,form){
            form();
            
            $("#quickSet").keyup(function(){
            	var value = $("#quickSet").val();
            	var $input = $('input[class$="quickNumber"]');
                $input.each(function(index, el) {
                	$(el).val(value);
                });
            })
        });
    </script>
</body>
</html>