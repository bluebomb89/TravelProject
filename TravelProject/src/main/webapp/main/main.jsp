<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v2.4.1, http://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v2.4.1, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="css/main/main.min.css">
  <link rel="stylesheet" href="css/main/animate.min.css">
  <link rel="stylesheet" href="css/main/style.css">
  <link rel="stylesheet" href="css/main/slidestyle.css">
  <link rel="stylesheet" href="css/main/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="css/main/search.css" type="text/css">  
  <link rel="stylesheet" href="css/main/gstyle.css">
  <link rel="stylesheet" href="css/main/mbr-additional.css" type="text/css">
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
  <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['책제목', '별점순'],
          <c:forEach var="vo" items="${list}">
           ['<c:out value="${vo.title}"/>',<c:out value="${vo.star}"/>],
          </c:forEach>
        ]);

        var options = {
          title: '책 별점순 차트',
          //is3D:true,
          pieHole: 0.4
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart1'));

        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['책제목', '베스트'],
          <c:forEach var="vo" items="${list}">
           ['<c:out value="${vo.title}"/>',<c:out value="${vo.star}"/>],
          </c:forEach>
        ]);

        var options = {
          title: '영화찜별 차트',
          //is3D:true
        };

        var chart = new google.visualization.ScatterChart(document.getElementById('chart2'));

        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['책제목', '베스트', '별점'],
          <c:forEach var="vo" items="${list}">
          ['<c:out value="${vo.title}"/>',  
           <c:out value="${vo.review}"/>, 
           <c:out value="${vo.star}"/>
          ],
          </c:forEach>          
        ]);

        var options = {
          title: 'Company Performance',
          hAxis: {title: '영화명',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0}
        };

        var chart = new google.visualization.AreaChart(document.getElementById('chart4'));
        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">
    google.load("visualization", "1", {packages:["corechart"]});
    google.setOnLoadCallback(drawSeriesChart);

    function drawSeriesChart() {

      var data = google.visualization.arrayToDataTable([
        ['영화명',  '리뷰',  '별점'],
        <c:forEach var="vo" items="${list}">
        ['<c:out value="${vo.title}"/>',                  
         <c:out value="${vo.review}"/>,       
         <c:out value="${vo.star}"/>
        ],
        </c:forEach>
      ]);

      var options = {
        title: '2015 영화 통계',
        hAxis: {title: '예매율'},
        vAxis: {title: '별점'},
        bubble: {textStyle: {fontSize: 11}}
      };

      var chart = new google.visualization.BubbleChart(document.getElementById('chart5'));
      chart.draw(data, options);
    }
    </script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
  function drawChart() {
    var data = google.visualization.arrayToDataTable([
  <c:forEach var="vo" items="${list}">                                               
       ['<c:out value="${vo.title}"/>',    
        <c:out value="${vo.review}"/>,              
        <c:out value="${vo.star}"/>,       
        <c:out value="${vo.most}"/>,
        <c:out value="${vo.most}"/>],
  </c:forEach>
      ], true);

    var options = {
      legend:'none'
    };

    var chart = new google.visualization.CandlestickChart(document.getElementById('chart6'));

    chart.draw(data, options);
  }
    </script>
        <script type="text/javascript">
      google.load("visualization", "1", {packages:["motionchart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Movie');
        data.addColumn('date', 'Date');
        data.addColumn('string', 'Star');
        data.addColumn('string', 'Location');
        data.addRows([
          ['내부자들',  new Date (2015,0,1), 1000, 300, 'CGV'],
          ['도리화가', new Date (2015,0,1), 1150, 200, '메가박스'],
          ['맥베드', new Date (2015,0,1), 300,  250, '롯데시네마'],
          ['내부자들',  new Date (2015,6,1), 1200, 400, 'CGV'],
          ['도리화가', new Date (2015,6,1), 750,  150, '메가박스'],
          ['맥베드', new Date (2015,6,1), 788,  617, '롯데시네마']
        ]);

        var chart = new google.visualization.MotionChart(document.getElementById('chart7'));

        chart.draw(data, {width: 900, height:500});
      }
    </script>
</head>

<body>

<section class="engine"><a rel="nofollow" href="http://mobirise.com">Mobirise website maker</a></section>
<!-- 메뉴바 -->
<section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--transparent mbr-navbar--sticky mbr-navbar--auto-collapse" id="menu-21">
    <div class="mbr-navbar__section mbr-section">
        <div class="mbr-section__container container">
            <div class="mbr-navbar__container">
                <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                    <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                        <a class="mbr-brand__logo" href="main.tvl"><img class="mbr-navbar__brand-img mbr-brand__img" alt="" src="backgroundimg/main/logo/otravel.png"></a>
                        <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="main.tvl">OTRAVEL</a></span>
                    </span>
                </div>
                <div class="mbr-navbar__hamburger mbr-hamburger text-white"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div class="mbr-navbar__column">
                        	<ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active">
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="main.tvl">HOME</a>
                        		</li>
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="koreabook.tvl">국내도서</a>
                        		</li>
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="usabook.tvl">국외도서</a>
                        		</li>
         		                <li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="img.tvl">IMG</a>
                        		</li>
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="join.tvl">JOIN</a>
                        		</li>
               		       		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="travel_insert.tvl">Board</a>
                        		</li>
                        	</ul>
                        </div>
                        <div class="mbr-navbar__column">
                        	<ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-inverse mbr-buttons--active">
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__btn btn btn-default" href="http://mobirise.com">DOWNLOAD</a>
                        		</li>
                        	</ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
<div id="fullpage">
<div class="section" id="pagepage">
<!-- 메인 인클루드 -->
<tiles:insertAttribute name="view"></tiles:insertAttribute>
</div>
<%-- 
<div class="section">
<!-- 카테고리 인클루드 -->
<tiles:insertAttribute name="categori"></tiles:insertAttribute>
 <!-- 지도 -->
 <tiles:insertAttribute name="map"></tiles:insertAttribute>
 </div>
  --%>
 </div>
<!-- 푸터 -->
<footer class="mbr-section mbr-section--relative mbr-section--fixed-size" id="footer1-23" style="background-color: rgb(68, 68, 68);">
    
    <div class="mbr-section__container container">
        <div class="mbr-footer mbr-footer--wysiwyg row">
            <div class="col-sm-12">
                <p class="mbr-footer__copyright">Copyright (c) 2015 Company Name. <a class="mbr-footer__link text-gray" href="http://mobirise.com/">Terms of Use</a>  | <a class="mbr-footer__link text-gray" href="http://mobirise.com/">Privacy Policy</a></p>
            </div>
        </div>
    </div>
</footer> 

  <script src="js/main/jquery.min.js"></script>
  <script src="js/main/bootstrap.min.js"></script>
  <script src="js/main/SmoothScroll.js"></script>
  <script src="js/main/bootstrap-carousel-swipe.js"></script>
  <script src="js/main/jarallax.js"></script>
  <script src="js/main/script.js"></script>
  <script src="js/main/gscript.js"></script>
  <script src="js/main/masonry.pkgd.min.js"></script>
  <script src="js/main/imagesloaded.pkgd.min.js"></script>
  
  
  
</body>
</html>