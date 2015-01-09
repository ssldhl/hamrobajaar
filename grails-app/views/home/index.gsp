<%--
  Created by Sushil Dahal.
  Date: 1/1/15
  Time: 5:35 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
      <title>${applicationTitle}</title>
      <meta name="layout" content="main">
      <asset:stylesheet src="revolution-slider/css/settings.css"/>
      <asset:javascript src="revolutionSlider"/>
      <asset:javascript src="scripts"/>
</head>

<body>
<!-- REVOLUTION SLIDER -->
<div class="fullwidthbanner-container roundedcorners">
      <div class="fullwidthbanner">
            <ul>
                  <g:each in="${featuredData}" var="item">
                        <!-- SLIDE -->
                        <li data-transition="curtain-2" data-slotamount="5" data-masterspeed="700">

                              <!-- COVER IMAGE -->
                              <g:img dir="images" file="demo/revolution_slider/slider7.jpg" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" alt=""/>

                              <div class="tp-caption large_text sft"
                                   data-x="center"
                                   data-y="100"
                                   data-speed="300"
                                   data-start="800"
                                   data-easing="easeOutExpo">${item.getAt('name')}
                              </div>

                              <div class="tp-caption lfb text-center"
                                   data-x="270"
                                   data-y="200"
                                   data-speed="900"
                                   data-start="1700"
                                   data-easing="easeOutBack">
                                    <g:link url="javascript:void(0);" class="fsize20">
                                          <g:img dir="images" file="demo/shop/1.jpg" width="200" height="200" alt="" class="block hover-scale"/>
                                          <strong>
                                                <g:formatNumber number="${item.getAt('price')}" currencyCode="USD" type="currency"/>
                                          </strong>
                                    </g:link>
                              </div>
                        </li>
                  </g:each>


            </ul>

            <div class="tp-bannertimer"></div>
      </div>
</div>
<!-- /REVOLUTION SLIDER -->
</body>
</html>