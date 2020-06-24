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
        <@head title="加入我们 - ${blogTitle}">
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

            .ym-join .title-icon {
                color: #ff4500;
                font-style: normal;
                font-weight: 700;
                padding-right: 5px;
            }

            body {
                font-family: Avenir, Helvetica, Arial, sans-serif;
                -webkit-font-smoothing: antialiased;
                font-size: 14px;
            }

            .ym-join .team-title {
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

            .ym-join .team-name {
                font-size: 236px;
            }

            .ym-join .classification {
                padding-top: 30px;
                line-height: 30px;
                padding-bottom: 60px;
            }

            .ym-join .container-fluid {
                width: 90%;
                margin: 0 auto;
                padding-right: 15px;
                padding-left: 15px;
            }

            .ym-join .content-tittle {
                text-align: center;
                line-height: 40px;
                font-size: 24px;
                font-weight: 500;
                margin-bottom: 10px;
            }

            .ym-join .classification .tip {
                background: -webkit-linear-gradient(left, #00c6ff , #0072ff); /* Safari 5.1 - 6.0 */
                background: -o-linear-gradient(left, #00c6ff, #0072ff); /* Opera 11.1 - 12.0 */
                background: -moz-linear-gradient(left, #00c6ff, #0072ff); /* Firefox 3.6 - 15 */
                background: linear-gradient(left, #00c6ff , #0072ff); /* 标准的语法（必须放在最后） */
                color: #fff89d;
                padding: 0 15px;
                display: inline-block;
                line-height: 30px;
            }

            .ym-join .text-align_center {
                text-align: center;
            }

            .ym-join .join-us {
                text-align: left;
                margin-top: 30px;
            }

            .ym-join .desc-title {
                display: block;
                width: 100%;
            }

            .ym-join .mb20 {
                margin-bottom: 20px;
            }

            .ym-join .letters {
                display: inline-block;
                width: 140px;
                vertical-align: baseline;
            }

            .ym-join .letters .letters-li {
                box-sizing: border-box;
                float: left;
                width: 34px;
                height: 34px;
                padding: 2px;
                background-color: #fff;
                list-style: none;
            }

            .ym-join  .letters-li .thumbnail {
                width: 100%;
                height: 100%;
            }

            .ym-join  .letters-li.blank {
                background-color: transparent;
            }

            .ym-join .letters:last-child {
                margin-left: 21px;
            }

            .ym-join .clear::after {
                clear: both;
            }

            .ym-join .show-hover {
                opacity: 0;
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
                .ym-join .team-title {
                    display: block;
                }

                .ym-join .classification {
                    width: 780px
                }

                .ym-join .list-item {
                    position: relative;
                    display: inline-block;
                    width: 100%;
                    height:100%;
                }

                .ym-join .list-item .show-hover {
                    position: absolute;
                    top: -15px;
                    left: -15px;
                    z-index: 1;
                    white-space: nowrap;
                }

                .ym-join .list-item .hover-img {
                    width: 60px;
                    height: 60px;
                    max-width: unset;
                    vertical-align: baseline;
                }

                .ym-join .list-item .hover-name {
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

                .ym-join .list-item:hover .show-hover {
                    animation: fadeIn 2s infinite;
                    animation-iteration-count: 1;
                    -webkit-animation-iteration-count: 1;
                }
            }
            .navbar{
                margin-bottom: 0;
            }
        </style>
    </head>
    <body>
        <#include "header.ftl">
        <div class="ym-join">
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
                        <h3 class="content-tittle">加入我们</h3> <span class="tip">I want you ！注入新鲜的血液！</span>
                    </div>
                    <div class="join-us">
                        <p class="mb20"><b class="desc-title"><i class="title-icon">+</i>我们是谁
                        </b>
                            广州亚美信息科技有限公司（简称“亚美科技”）成立于2011年，是一家领先的车联网智能车载设备制造商、车联网大数据平台商以及车联网生态整合企业。亚美科技创办至今，一直坚持用匠心精神做产品，用互联网模式整合生态链，科学运用大数据平台优势，致力于让每一位车主，都能享受到车联网科技带来的品质生活。<br>
                            亚美科技独特的“无边界”发展理念，以及开放、包容、共赢的合作策略，与业界伙伴一起推动着中国车联网行业的发展，实现着“人、车、生活、社会”的美好共生。
                        </p>
                        <p class="mb20"><b class="desc-title"><i class="title-icon">+</i>岗位职责
                        </b>
                            1、负责车智汇等APP的前端开发工作。<br>
                            2、与产品、设计、研发一起完成面向用户的终端呈现。<br>
                            3、通过技术提高FE团队整体效率。<br></p>
                        <p class="mb20"><b class="desc-title"><i class="title-icon">+</i>职位要求
                        </b>
                            1、本科以上学历（我们注重潜力，并不严格要求计算机技术专业）<br>
                            2、3年以上前端开发经验，负责过复杂应用的前端设计和开发<br>
                            3、熟悉web前端技术，熟悉React/Vue等任意一种前端框架<br>
                            4、有移动端开发开发经验，对前端工程化有较深的理解<br>
                            5、掌握一门后端语言（java/php/python/ruby/golang/nodejs）<br>
                            6、有技术理想，致力于用技术去推动和改变前端研发<br>
                            7、有BAT等一二线公司工作经验者优先<br>
                            <b class="desc-title"><i class="title-icon">+</i>加分项：</b>
                            1、有自己的技术博客<br>
                            2、Github重度使用者<br>
                            3、热爱分享<br></p>
                        <p class="mb20"><b class="desc-title"><i class="title-icon">+</i>待遇环境
                        </b>
                            薪资：面谈。实际多少依据个人能力，绝对不弱于同行。<br>
                            弹性工作制。<br>
                            其余的互联网标配：健身房、生日会、食堂、晚饭补贴、打车补贴等。<br></p>
                        <p class="mb20"><b class="desc-title"><i class="title-icon">+</i>团队价值观
                        </b>
                            自驱性：主动驱动自己，不仅仅是执行力，更重要需要自己去思考，自己去学习，总结、复盘、优化<br>
                            靠谱：低承诺高兑现，先完成后优化，承诺做不到主动请吃鸡翅，或者选择被鄙视人品问题<br>
                            做为fe团队的合伙人，希望你能和我们一起相互扶持，集体学习，共同成长！<br></p>
                        <p class="mb20"><b class="desc-title"><i class="title-icon">+</i>联系方式
                        </b>
                            公司地址在广州市天河区高唐路227号时代E-park3栋<br>
                            简历请发送至邮箱 <a href="mailto:hr@ecpark.cn"> hr@ecpark.cn
                            </a>
                        </p>
                    </div>
                </div>
            </content>
        </div>
        <#include "footer.ftl">
    </body>
</html>
