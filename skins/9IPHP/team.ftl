<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="团队介绍 - ${blogTitle}">
            <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
        </@head>
        <style>
            body,
            html,
            div,
            p,
            span,
            ul,
            ol,
            li {
                margin: 0;
                padding: 0;
            }


            li {
                list-style: none;
            }

            body {
                font-family: Avenir, Helvetica, Arial, sans-serif;
                -webkit-font-smoothing: antialiased;
                font-size: 14px;
            }

            .ym-team .team-title {
                display: none;
                width: 100%;
                padding: 40px 0;
                font-size: 0;
                font-weight: bold;
                text-align: center;
                letter-spacing: 9px;
                background: -webkit-linear-gradient(left, #00c6ff , #0072ff); /* Safari 5.1 - 6.0 */
                background: -o-linear-gradient(left, #00c6ff, #0072ff); /* Opera 11.1 - 12.0 */
                background: -moz-linear-gradient(left, #00c6ff, #0072ff); /* Firefox 3.6 - 15 */
                background: linear-gradient(left, #00c6ff , #0072ff); /* 标准的语法（必须放在最后） */
                color: #ffffff;
            }

            .ym-team .team-name {
                font-size: 236px;
            }

            .ym-team .classification {
                padding-top: 30px;
                line-height: 30px;
                padding-bottom: 60px;
            }

            .ym-team .container-fluid {
                width: 90%;
                margin: 0 auto;
                padding-right: 15px;
                padding-left: 15px;
            }

            .ym-team .team-place-list {
                width: 90%;
                margin: 0 auto;
                font-size: 0;
            }

            .ym-team .content-tittle {
                text-align: center;
                line-height: 40px;
                font-size: 24px;
                font-weight: 500;
                margin-bottom: 10px;
            }

            .ym-team .classification .tip {
                background: -webkit-linear-gradient(left, #00c6ff , #0072ff); /* Safari 5.1 - 6.0 */
                background: -o-linear-gradient(left, #00c6ff, #0072ff); /* Opera 11.1 - 12.0 */
                background: -moz-linear-gradient(left, #00c6ff, #0072ff); /* Firefox 3.6 - 15 */
                background: linear-gradient(left, #00c6ff , #0072ff); /* 标准的语法（必须放在最后） */
                color: #fff89d;
                padding: 0 15px;
                display: inline-block;
                line-height: 30px;
            }

            .ym-team .text-align_center {
                text-align: center;
            }

            .ym-team .team-desc {
                text-align: left;
                margin-top: 30px;
            }

            .ym-team .team-desc .desc-title {
                display: block;
                width: 100%;
            }

            .ym-team .team-desc .mb20 {
                margin-bottom: 20px;
            }

            .ym-team .letters{
                display: inline-block;
                width: 140px;
                vertical-align: baseline;
            }

            .ym-team .letters-li {
                box-sizing: border-box;
                float: left;
                width: 34px;
                height: 34px;
                padding: 2px;
                background-color: #fff;

            }

            .ym-team .letters-li .thumbnail {
                width: 100%;
                height: 100%;
            }

            .ym-team .letters-li.blank {
                background-color: transparent;
            }

            .ym-team .letters:last-child {
                margin-left: 21px;
            }

            .ym-team .clear::after {
                clear: both;
            }

            .ym-team .show-hover {
                opacity: 0;
            }

            .ym-team .team-place {
                padding-top: 30px;
                padding-bottom: 60px;
                width: 100%;
                background: #f8f8f8
            }

            .ym-team .team-place-list .place-img {
                width: 40%;
                height: 180px;
                background: #999;
                margin: 0 5px 5px 0;
                display: inline-block;
            }


            @keyframes fadeIn {
                from {
                    opacity: 0;
                }

                to {
                    opacity: 1;
                }
            }

            @-webkit-keyframes fadeIn {
                from {
                    opacity: 0;
                }

                to {
                    opacity: 1;
                }
            }

            @media (min-width: 992px) {
                .ym-team .team-title {
                    display: block;
                }

                .ym-team .classification {
                    width: 780px;
                }

                .ym-team .list-item {
                    position: relative;
                    display: inline-block;
                    width:100%;
                    height:100%;
                }

                .ym-team .list-item .show-hover {
                    position: absolute;
                    top: -15px;
                    left: -15px;
                    z-index: 1;
                    white-space: nowrap;
                }

                .ym-team .list-item .hover-img {
                    width: 60px;
                    height: 60px;
                    max-width: unset;
                    vertical-align: baseline;
                }

                .ym-team .list-item .hover-name {
                    display: inline-block;
                    width: 20px;
                    height: 60px;
                    z-index: 1;
                    background: #000;
                    color: #fff;
                    line-height: 20px;
                    -webkit-writing-mode: vertical-rl;
                    -ms-writing-mode: tb-rl;
                    writing-mode: vertical-rl;
                    font-size: 14px;
                    vertical-align: baseline;
                    letter-spacing: 1px;
                    text-align: center;
                }

                .ym-team .list-item:hover .show-hover {
                    animation: fadeIn 2s infinite;
                    animation-iteration-count: 1;
                    -webkit-animation-iteration-count: 1;
                }

                .ym-team .team-place-list {
                    width: 800px;
                }

                .ym-team .team-place-list .place-img {
                    width: 260px;
                }

                .ym-team .team-place-list .place-img .loaded {
                    width: 100%;
                    height: 100%;
                }
            }
            .navbar{
                margin-bottom: 0;
            }
            @media (max-width: 700px) {
                .ym-team .team-place-list .place-img {
                     width: unset;
                     height: unset;
                }
            }
        </style>
    </head>
    <body>
        <#include "header.ftl">
        <div class="ym-team">
            <header class="team-title">
                <span class="team-name">YM</span>
                <ul class="letters">
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg"
                                 alt=""><span class="hover-name">王征</span>
                        </span>
                        </a>
                    </li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/weiru.png" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/weiru.png"
                                 alt=""><span class="hover-name">陈敏辉</span>
                        </span>
                        </a>
                    </li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhangying.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhangying.png"
                                 alt=""><span class="hover-name">林晓铭</span>
                        </span>
                        </a>
                    </li>

                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhaohuijie.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhaohuijie.png"
                                 alt=""><span class="hover-name">周子琦</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhangying.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhangying.png"
                                 alt=""><span class="hover-name">邓荟</span>
                        </span>
                        </a></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/xupeiyuan.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/xupeiyuan.png"
                                 alt=""><span class="hover-name">李嘉星</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhangying.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhangying.png"
                                 alt=""><span class="hover-name">覃月满</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/huangjiaxing.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/huangjiaxing.png"
                                 alt=""><span class="hover-name">利振光</span>
                        </span>
                        </a>
                    </li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg"
                                 alt=""><span class="hover-name">于辉</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/You1.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/You1.png"
                                 alt=""><span class="hover-name">等你来</span>
                        </span>
                        </a>
                    </li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhangying.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zhangying.png"
                                 alt=""><span class="hover-name">黄成</span>
                        </span>
                        </a></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank clear"></li>
                </ul>
                <ul class="letters">
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/xupeiyuan.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/xupeiyuan.png"
                                 alt=""><span class="hover-name">李国梁</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/weiru.png" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/weiru.png"
                                 alt=""><span class="hover-name">潘仪洪</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg"
                                 alt=""><span class="hover-name">张铭伦</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/weiru.png" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/weiru.png"
                                 alt=""><span class="hover-name">英煜峥</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg"
                                 alt=""><span class="hover-name">罗光明</span>
                        </span>
                        </a></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/xupeiyuan.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/xupeiyuan.png"
                                 alt=""><span class="hover-name">张长征</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg"
                                 alt=""><span class="hover-name">向超</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/weiru.png" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/weiru.png"
                                 alt=""><span class="hover-name">谢祥清</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zoucunyang.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zoucunyang.png"
                                 alt=""><span class="hover-name">张迪</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/huangjiaxing.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/huangjiaxing.png"
                                 alt=""><span class="hover-name">陈江川</span>
                        </span>
                        </a>
                    </li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li blank"></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zoucunyang.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zoucunyang.png"
                                 alt=""><span class="hover-name">邱俊荣</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/huangjiaxing.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/huangjiaxing.png"
                                 alt=""><span class="hover-name">等你来</span>
                        </span>
                        </a>
                    </li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zoucunyang.png"
                                 alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.58cdn.com.cn/zhuanzhuan/ZZOpenBusiness/static/img/blog/zoucunyang.png"
                                 alt=""><span class="hover-name">等你来</span>
                        </span>
                        </a></li>
                    <li class="letters-li">
                        <a class="list-item" href="javascript:;">
                            <img class="thumbnail" src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg" alt="">
                            <span class="show-hover">
                            <img class="hover-img"
                                 src="http://img.alicdn.com/tps/TB1o3cwKXXXXXapXVXXXXXXXXXX-450-300.png_80x80.jpg"
                                 alt=""><span class="hover-name">等你来</span>
                        </span>
                        </a></li>
                </ul>
            </header>
            <content>
                <div class="container-fluid classification">
                    <div class="text-align_center">
                        <h3 class="content-tittle">团队介绍</h3> <span class="tip">是的，我们是这样的年轻人！</span>
                    </div>
                    <div class="team-desc">
                        <p class="mb20">
                            亚美前端研发部，这是一个仅有几个月历史的部门，部门成员每个人都有自己的擅长技术领域，且都是热爱前端技术的大好青年。

                        </p>
                        <p class="mb20">从成立那一刻起，面向技术专业性疯跑，成为这个团队的主旋律。</p>
                        <p class="mb20"><b class="desc-title">有关亚美FE的战略目标：</b></p>
                        <p class="mb20">不管是APP还是web，页面性能一流，不仅仅指首屏，还包括webview初始化等我们从浏览器做到客户端。

                        </p>
                        <p  class="mb20">对页面体验负责，包括但不限于加载方式，对UI还原度，对交互方式。

                        </p>
                        <p  class="mb20">对项目开发效率负责，前端工程化、脚手架、hybrid框架，vue&amp;react技术栈。

                        </p>
                        <p  class="mb20"><b class="desc-title">有关亚美FE的价值观：</b></p>
                        <p  class="mb20">自驱性：主动驱动自己，不仅仅是执行力，更重要需要自己去思考，自己去学习，总结、复盘、优化。

                        </p>
                        <p  class="mb20">靠谱：低承诺高兑现，先完成后优化，承诺做不到主动请吃鸡翅，或者选择被鄙视人品问题。

                        </p>
                        <p>做为亚美FE的合伙人，希望你能和我们一起相互扶持，集体学习，共同成长！

                        </p>
                        <p  class="mb20">亚美科技，是一家领先的车联网智能车载设备制造商、车联网大数据平台商以及车联网生态整合企业。亚美科技创办至今，一直坚持用匠心精神做产品，用互联网模式整合生态链，科学运用大数据平台优势，致力于让每一位车主，都能享受到车联网科技带来的品质生活。</p>
                    </div>

                </div>
                <div class="team-place">
                    <h3 class="content-tittle">工作环境</h3>
                    <ul class="team-place-list">
                        <li class="place-img"><img class="loaded" src="${staticServePath}/images/team/1.png"></img></li>
                        <li class="place-img"><img class="loaded" src="${staticServePath}/images/team/2.png"></img></li>
                        <li class="place-img"><img class="loaded" src="${staticServePath}/images/team/3.png"></img></li>
                        <li class="place-img"><img class="loaded" src="${staticServePath}/images/team/4.png"></img></li>
                        <li class="place-img"><img class="loaded" src="${staticServePath}/images/team/5.jpg"></img></li>
                        <li class="place-img"><img class="loaded" src="${staticServePath}/images/team/6.jpg"></img></li>
                    </ul>
                </div>
            </content>
        </div>
        <#include "footer.ftl">
    </body>
</html>
