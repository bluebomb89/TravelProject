<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
</script>
<!-- 슬라이더 메인 -->
<section class="mbr-slider mbr-section mbr-section--no-padding carousel slide" data-ride="carousel" data-wrap="true" data-interval="5000" id="slider-64" style="background-color: rgb(255, 255, 255);">
	<div class="searchArea">
		<div id="searchTxtArea" class="searchTxtArea">오렌지ㅌ</div>
		<fieldset>
			<legend>검색</legend>
			<input type="text" placeholder="검색어를 입력하세요." id="searchText" title="검색어" class="placeholder">
			<ul class="autoSearchWord" style="display: none;">
				<li></li>
			</ul>
			<a href="http://travel.koreanair.com/content/koreanair-travel/kr.html#none" class="searchBtn" onclick="$KE.search(null, '#searchText');"><img src="./대한항공 여행정보사이트_files/btn_search.png" alt="검색"></a>
		</fieldset>
	</div>
	
    <div class="mbr-section__container">
        <div>
            <ol class="carousel-indicators">
                <li data-app-prevent-settings="" data-target="#slider-64" class="active" data-slide-to="0"></li><li data-app-prevent-settings="" data-target="#slider-64" data-slide-to="1"></li><li data-app-prevent-settings="" data-target="#slider-64" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height active" style="background-image: url(../backgroundimg/main/visualbg_1.jpg);">
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
                </div><div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(../backgroundimg/main/visualbg_2.jpg);">
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
                </div><div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(../backgroundimg/main/visualbg_3.jpg);">
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
            
            <a data-app-prevent-settings="" class="left carousel-control" role="button" data-slide="prev" href="#slider-64">
                <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a data-app-prevent-settings="" class="right carousel-control" role="button" data-slide="next" href="#slider-64">
                <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</section>

<section class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--full-height mbr-section--bg-adapted mbr-parallax-background" id="header1-71" style="background-image: url(../backgroundimg/main/bg.jpg);">
    <div class="mbr-box__magnet mbr-box__magnet--sm-padding mbr-box__magnet--center-center">
        
        <div class="mbr-box__container mbr-section__container container">
            <div class="mbr-box mbr-box--stretched"><div class="mbr-box__magnet mbr-box__magnet--center-center">
                <div class="row"><div class=" col-sm-8 col-sm-offset-2">
                    <div class="mbr-hero animated fadeInUp">
                        <h1 class="mbr-hero__text">MOBIRISE WEBSITE BUILDER</h1>
                        <p class="mbr-hero__subtext">Create awesome mobile-friendly websites. No coding and free.</p>
                    </div>
                    <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger animated fadeInUp delay" href="http://mobirise.com">FOR WINDOWS</a> <a class="mbr-buttons__btn btn btn-lg btn-default animated fadeInUp delay" href="http://mobirise.com">FOR MAC</a></div>
                </div></div>
            </div></div>
        </div>
        <div class="mbr-arrow mbr-arrow--floating text-center">
            <div class="mbr-section__container container">
                <a class="mbr-arrow__link" href="#next"><i class="glyphicon glyphicon-menu-down"></i></a>
            </div>
        </div>
    </div>
</section>