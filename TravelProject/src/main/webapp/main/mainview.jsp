<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<script type="text/javascript">
var sch;
$(function(){
	$sch = $("#searchText");
        $sch.keyup(function(){
	        var val = $(this).val();
            $('#searchTxtArea').html(val);
        });
});
function searchBtn(){
	$('#travel_search').submit();
}
</script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
 <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['å����', '������'],
          <c:forEach var="vo" items="${list}">
           ['<c:out value="${vo.title}"/>',<c:out value="${vo.star}"/>],
          </c:forEach>
        ]);

        var options = {
          title: 'å ������ ��Ʈ',
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
          ['å����', '����Ʈ'],
          <c:forEach var="vo" items="${list}">
           ['<c:out value="${vo.title}"/>',<c:out value="${vo.star}"/>],
          </c:forEach>
        ]);

        var options = {
          title: 'å ������ ��Ʈ',
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
          ['å����', '����Ʈ', '����'],
          <c:forEach var="vo" items="${list}">
          ['<c:out value="${vo.title}"/>',  
           <c:out value="${vo.review}"/>, 
           <c:out value="${vo.star}"/>
          ],
          </c:forEach>          
        ]);

        var options = {
          title: 'Company Performance',
          hAxis: {title: '��ȭ��',  titleTextStyle: {color: '#333'}},
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
        ['��ȭ��',  '����',  '����'],
        <c:forEach var="vo" items="${list}">
        ['<c:out value="${vo.title}"/>',                  
         <c:out value="${vo.review}"/>,       
         <c:out value="${vo.star}"/>
        ],
        </c:forEach>
      ]);

      var options = {
        title: '2014 å ���',
        hAxis: {title: '��'},
        vAxis: {title: '����'},
        bubble: {textStyle: {fontSize: 11}}
      };

      var chart = new google.visualization.BubbleChart(document.getElementById('chart5'));
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
        data.addColumn('number', 'Reserve');
        data.addColumn('number', 'Star');
        data.addColumn('string', 'Location');
        data.addRows([
          ['�����ڵ�',  new Date (2015,0,1), 1000, 300, 'CGV'],
          ['����ȭ��', new Date (2015,0,1), 1150, 200, '�ް��ڽ�'],
          ['�ƺ���', new Date (2015,0,1), 300,  250, '�Ե��ó׸�'],
          ['�����ڵ�',  new Date (2015,6,1), 1200, 400, 'CGV'],
          ['����ȭ��', new Date (2015,6,1), 750,  150, '�ް��ڽ�'],
          ['�ƺ���', new Date (2015,6,1), 788,  617, '�Ե��ó׸�']
        ]);

        var chart = new google.visualization.MotionChart(document.getElementById('chart7'));

        chart.draw(data, {width: 900, height:500});
      }
    </script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['����', 'Count'],
          <c:forEach var="vo" items="${mList}">
           ['<c:out value="${vo.word}"/>',<c:out value="${vo.count}"/>],
          </c:forEach>
        ]);

        var options = {
          title: '${title} ���� ��Ʈ',
          is3D:true,
          //pieHole: 0.4
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart3'));

        chart.draw(data, options);
      }
    </script>
<!-- �����̴� ���� -->
<div class="section">
<section class="mbr-slider mbr-section mbr-section--no-padding carousel slide" data-ride="carousel" data-wrap="true" data-interval="5000" id="slider-64" style="background-color: rgb(255, 255, 255);">
	<div class="searchArea">
		<div id="searchTxtArea" class="searchTxtArea">OBOOK.COM</div>
		<fieldset>
		<form method="post" action="travel_search.tvl" id="travel_search" name="travel_search">
			<input type="text" placeholder="å�� �Է��ϼ���" id="searchText" title="�˻���" class="placeholder" name="searchText">
		</form>
			<a onclick="searchBtn()" class="searchBtn"><img src="backgroundimg/main/btn_search.png" alt="�˻�"></a>
		</fieldset>
<!-- 		<ul class="favorSList">
		
				<li><a href="#none" onclick="$KE.search('�õ��'); return false;">�õ��</a></li>
				
				<li><a href="#none" onclick="$KE.search('��Ŭ����'); return false;">��Ŭ����</a></li>
				
				<li><a href="#none" onclick="$KE.search('����'); return false;">����</a></li>
				
				<li><a href="#none" onclick="$KE.search('��'); return false;">��</a></li>
				
				<li><a href="#none" onclick="$KE.search('���þ�'); return false;">���þ�</a></li>
				
		</ul> -->
	</div>
	
    <div class="mbr-section__container">
        <div>
            <ol class="carousel-indicators">
                <li data-app-prevent-settings="" data-target="#slider-64" class="active" data-slide-to="0"></li><li data-app-prevent-settings="" data-target="#slider-64" data-slide-to="1"></li><li data-app-prevent-settings="" data-target="#slider-64" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height active" style="background-image: url(backgroundimg/main/visualbg_3.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding">
                        <div class=" container">
                            
<!--                             <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">Slide 1</h1>
                                    <p class="mbr-hero__subtext">Develop fully responsive, mobile-optimized websites that look amazing on any devices and browsers. Preview how your website will appear on phones, tablets and desktops directly in the visual editor.</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="http://mobirise.com">FOR WINDOWS</a> <a class="mbr-buttons__btn btn btn-lg btn-default" href="http://mobirise.com">FOR MAC</a></div>
                            </div></div> -->
                        </div>
                    </div>
                </div><div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(backgroundimg/main/visualbg_1.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding">
                        <div class=" container">
                            
<!--                             <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">Slide 2</h1>
                                    <p class="mbr-hero__subtext">Mobirise is based on Bootstrap 3 - most powerful mobile first framework. Use any bootstrap themes with no extra work.</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="http://mobirise.com">FOR WINDOWS</a> <a class="mbr-buttons__btn btn btn-lg btn-default" href="http://mobirise.com">FOR MAC</a></div>
                            </div></div> -->
                        </div>
                    </div>
                </div><div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(backgroundimg/main/visualbg_2.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding">
                        <div class=" container">
                            
<!--                             <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">Slide 3</h1>
                                    <p class="mbr-hero__subtext">Choose from the large selection of latest pre-made blocks - jumbotrons, hero images, parallax scrolling, video backgrounds, hamburger menu, sticky header and more.</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="http://mobirise.com">FOR WINDOWS</a> <a class="mbr-buttons__btn btn btn-lg btn-default" href="http://mobirise.com">FOR MAC</a></div>
                            </div></div> -->
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</section>
</div>
<div class="section">
<section class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--full-height mbr-section--bg-adapted mbr-parallax-background" id="header1-71" style="height: 1400px;">
    <div class="mbr-box__magnet mbr-box__magnet--sm-padding mbr-box__magnet--center-center" style="position: absolute">   
				  <div class=" col-sm-8 col-sm-offset-2">
                   <div id="chart3" style="width: 700px; height: 500px;"></div>
                </div>
                	 <div id="chart1" style="width: 300px; height: 280px; float: right;"></div>
                   <!-- <div id="chart2" style="width: 300px; height: 280px;"></div> -->
                   <div id="chart2" style="width: 300px; height: 280px; float: right;"></div>
                   <div id="chart4" style="width: 300px; height: 280px; float: right;"></div>
                   <div id="chart5" style="width: 300px; height: 280px; float: right;"></div>
                   <div id="chart6" style="width: 300px; height: 280px; float: right;">	</div>
                   <div id="chart7" style="width: 900px; height: 500px; float: right; padding-left: 90px;"></div>
                	</div>
            </section>
            </div>

<div class="section">
<!-- ī�װ� ��Ŭ��� -->
<tiles:insertAttribute name="categori"></tiles:insertAttribute>
 <!-- ���� -->
 <tiles:insertAttribute name="map"></tiles:insertAttribute>
 </div>

