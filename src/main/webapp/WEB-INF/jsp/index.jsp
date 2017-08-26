<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  language="java"%>
<%--base jsp--%>
<%@ include file="common/base.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Welcome</title>
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,700|Quattrocento+Sans:400,700|Palanquin:400,600|Raleway|Josefin+Sans" rel='stylesheet' type='text/css'>
    <link rel="stylesheet"  href="../../static/css/font-awesome.css"/>
    <link rel="stylesheet"  href="../../static/css/owl.carousel.css"/>
    <link rel="stylesheet"  href="../../static/css/owl.theme.css"/>
    <link rel="stylesheet"  href="../../static/css/bootstrap.min.css"/>
    <link rel="stylesheet"  href="../../static/css/style.css"/>
</head>
<body>
<!--*********************************************************************************************************-->
<header>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="logo">
                    <h2>Hi GLGGAG </h2>
                </div>
            </div>
            <div class="col-md-8">
                <div id="menu" class="menu">
                    <ul>
                        <li><a href="${basePath}/main/home.html" class="active">Home</a></li>
                        <li>
                            <a href="${basePath}/category/home.html" class="Category">Category</a>
                            <ul>
                                <c:if test="${categoryVos !=  null}">
                                    <c:forEach var="baseCategoryVo"  items="${categoryVos}">
                                    <li>
                                        <a href="${basePath}/category/home.html?category=${baseCategoryVo.categoryNo}">${baseCategoryVo.categoryName}</a>
                                        <c:if test="${baseCategoryVo.subCategoryVo != null}">
                                            <ul>
                                                <c:forEach var="secondCategoryVo"  items="${baseCategoryVo.subCategoryVo}">
                                                <li><a href="${basePath}/category/home.html?category=${secondCategoryVo.categoryNo}">${secondCategoryVo.categoryName}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </c:if>
                                    </li>
                                    </c:forEach>
                                </c:if>
                            </ul>
                        </li>
                        <li><a href="${basePath}/write/home.html">Write</a></li>
                        <li><a href="${basePath}/contact.html">Contact</a></li>
                        <li><a href="${basePath}/manage/home.html">Manage</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<!--*********************************************************************************************************-->
<div class="first-content">
    <div class="pic home-picture" style="background: url(../../static/images/homebg.jpg);">
        <div class="overlay"></div>
        <div class="content">
            <h3>Welcome to eden</h3>
        </div>
    </div>
</div>
<div class="container">
    <div class="second-section">
        <div class="filters">
            <ul id="filters">
                <li class="active" data-filter="*">All</li>
                <li data-filter=".recommend">Recommend</li>
                <li data-filter=".newest">Newest</li>
                <li data-filter=".star">Star</li>
            </ul>
        </div>
    </div>
    <div class="row masonry">
        <div class="col-md-3 col-sm-4 col-xs-12 selector design">
            <div class="item">
                <img src="../../static/images/pencil.jpg" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">Creative</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector design">
            <div class="item">
                <img src="../../static/images/pic2.jpg" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">Envato</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector photography">
            <div class="item">
                <img src="../../static/images/saltimage.jpg" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">How we do</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector art">
            <div class="item">
                <img src="../../static/images/photo.jpg" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">Imagine</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector art">
            <div class="item">
                <img src="../../static/images/22.jpg" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">Paradise</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector photography">
            <div class="item">
                <img src="../../static/images/world.png" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">White</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector design">
            <div class="item">
                <img src="../../static/images/interior.jpg" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">History</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector art">
            <div class="item">
                <img src="../../static/images/coffee1.jpeg.jpg" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">Books</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector design">
            <div class="item">
                <img src="../../static/images/pic10.png" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">Sky</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector">
            <div class="item">
                <img src="../../static/images/pic4.png" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">Words</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-12 selector">
            <div class="item">
                <img src="../../static/images/vitke.jpg" alt="">
                <div class="overlay">
                    <div class="overlay-inner">
                        <h3><a href="single1.html">Cover</a></h3>
                        <h5><a href="single1.html">Design</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="btn-load-more">
        <button class="load-more">
            Load More
        </button>
    </div>
</div>
<footer>
    <div class="main-footer">
        <p> Copyright © 2017 By Crafted Theme</p>
        <p>Made with Love from Us.</p>
        <div class="icons">
            <ul>
                <li><a target="_BLANK" href="https://github.com/GLGGAG"><i class="fa fa-github"></i> </a></li>
                <li><a target="_BLANK" href="https://stackoverflow.com/"><i class="fa fa-stack-overflow"></i></a></li>
                <li><a target="_BLANK" href="https://www.google.com"><i class="fa fa-google"></i></a></li>
                <li><a target="_BLANK" href="http://weibo.com/u/6077627335/home?wvr=5"><i class="fa fa-weibo"></i> </a></li>
            </ul>
        </div>
    </div>
</footer>
<script src="../../static/js/jquery-2.1.4.js"></script>
<script src="../../static/js/bootstrap.min.js"></script>
<script src="../../static/js/jquery.slicknav.js"></script>
<script src="../../static/js/isotope.pkgd.min.js"></script>
<script src="../../static/js/owl.carousel.js"></script>
<script src="../../static/js/main.js"></script>
<script src="../../static/js/index.js"></script>
</body>
</html>



