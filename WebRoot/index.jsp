<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%--加载动画--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>首页</title>
		<meta http-equiv="refresh" content="1;url=login/uIndex">
	</head>
	<body>
	<head>
		<meta charset="utf-8">
		<title></title>
		<style>
			body{
				margin: 0;
				padding: 0;
				background: #292729;
			}
			.loading{
				position: absolute;
				top:50%;
				left: 50%;
				transform: translate(-50%,-50%);
				height: 40px;
				display: flex;
				align-items: center;
			}
			.item{
				width: 6px;
				height: 40px;
				background: #fff;
				margin: 0 3px;
				border-radius: 10px;
				animation: loading 0.8s infinite;
			}
			.item:nth-child(2){
				animation-delay: 0.1s;
			}
			.item:nth-child(3){
				animation-delay: 0.2s;
			}
			.item:nth-child(4){
				animation-delay: 0.3s;
			}
			.item:nth-child(5){
				animation-delay: 0.4s;
			}
			.item:nth-child(6){
				animation-delay: 0.5s;
			}
			.item:nth-child(7){
				animation-delay: 0.6s;
			}
			.item:nth-child(8){
				animation-delay: 0.7s;
			}
			@keyframes loading{
				0%{
					height: 0;
				}
				50%{
					height: 40px;
				}
				100%{
					height: 0;
				}
			}
		</style>
	</head>
	<body>
	<div class="loading">
		<div class="item"></div>
		<div class="item"></div>
		<div class="item"></div>
		<div class="item"></div>
		<div class="item"></div>
		<div class="item"></div>
		<div class="item"></div>
		<div class="item"></div>
		<div class="item"></div>
	</div>
	</body>
	</body>
	
</html>
