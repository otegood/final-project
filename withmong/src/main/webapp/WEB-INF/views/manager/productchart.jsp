<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link class="include" rel="stylesheet" type="text/css" href="/resources/chart/jquery.jqplot.min.css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/resources/chart/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="/resources/chart/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="/resources/chart/plugins/jqplot.barRenderer.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function() {
/*
	'${countChart}'
	'[{"count":5,"regdate":"10/04"},{"count":4,"regdate":"10/06"}]'
*/
	var data = JSON.parse('${countChart}');
	var chartData= [];
	
	$.each(data, function(index, item) {
		var spotData = [];
		spotData.push(item.regdate);
		spotData.push(item.count);
		
		chartData.push(spotData);
	});
	
	console.log(chartData);

	$.jqplot('graph', [ chartData ], {
		title : '주간 상품등록 그래프',
		series : [ {renderer : $.jqplot.BarRenderer	} ],
		axes : {
			xaxis : {renderer : $.jqplot.CategoryAxisRenderer, label : "주간" },
			yaxis : { label : "상품등록 수"	}
		}
	});
		
});
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="graph" style="width:300px; height:300px;"></div>

</body>
</html>