<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>商铺信息</title>
    <meta name="description"
          content="MSUI: Build mobile apps with simple HTML, CSS, and JS components.">
    <meta name="author" content="阿里巴巴国际UED前端">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">


    <!-- Google Web Fonts -->

    <link rel="stylesheet"
          href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
    <link rel="stylesheet"
          href="//g.alicdn.com/msui/sm/0.6.2/css/sm-extend.min.css">

    <link rel="apple-touch-icon-precomposed"
          href="/assets/img/apple-touch-icon-114x114.png">

</head>
<body>
<div class="page-group">
    <div class="page page-current">
        <div class="content">
            <div class="list-block">
                <ul>
                    <!-- Text inputs -->
                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-name"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">店铺名称</div>
                                <div class="item-input">
                                    <input id="shop-name" type="text" placeholder="商铺名称">
                                </div>
                            </div>
                        </div>
                    </li>

                    <!--商铺分类-->
                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-gender"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">商铺分类</div>
                                <div class="item-input">
                                    <select id="shop-category">

                                    </select>
                                </div>
                            </div>
                        </div>
                    </li>

                    <!--区域分类-->
                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-gender"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">所属区域</div>
                                <div class="item-input">
                                    <select id="area">

                                    </select>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-name"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">详细地址</div>
                                <div class="item-input">
                                    <input id="shop-addr" type="text" placeholder="详细地址">
                                </div>
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-name"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">联系电话</div>
                                <div class="item-input">
                                    <input id="shop-phone" type="text" placeholder="联系电话">
                                </div>
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-name"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">缩略图</div>
                                <div class="item-input">
                                    <input id="shop-img" type="file">
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="align-top">
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-comment"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">店铺简介</div>
                                <div class="item-input">
                                    <textarea id="shop-desc" placeholder="店铺简介"></textarea>
                                </div>
                            </div>
                        </div>
                    </li>

                </ul>
            </div>
            <div class="content-block">
                <div class="row">
                    <div class="col-50"><a href="#" class="button button-big button-fill button-danger">返回</a></div>
                    <div class="col-50"><a href="#" class="button button-big button-fill button-success" id="submit">提交</a></div>
                </div>
            </div>
        </div>
    </div>
</div>

<link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css"  charset='utf-8'>
<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
<script type='text/javascript'
        src='../resources/js/shop/shopoperation.js' charset='utf-8'></script>

</body>
</html>


