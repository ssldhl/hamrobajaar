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
                  <g:each in="${featuredData}" var="item" status="i">
                        <g:if test="${i==0}">
                        <!-- SLIDE -->
                        <li data-transition="random" data-slotamount="5" data-masterspeed="500" data-delay="3000">

                              <!-- COVER IMAGE -->
                              <g:img dir="images" file="demo/revolution_slider/sliderbg.jpg" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" alt=""/>

                              <div class="tp-caption large_bold_grey lfl stl"
                                   data-x="50"
                                   data-y="20"
                                   data-speed="100"
                                   data-start="502"
                                   data-easing="easeOutExpo" data-end="2500" data-endspeed="300" data-endeasing="easeInSine">${item.getAt('description')}
                              </div>
                        </li>
                        </g:if>
                        <g:else>
                              <li data-transition="random" data-slotamount="5" data-masterspeed="500" data-delay="3000">

                                    <!-- COVER IMAGE -->
                                    <g:img dir="images" file="demo/revolution_slider/sliderbg.jpg" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" alt=""/>

                                    <div class="tp-caption large_bold_grey lfl stl"
                                         data-x="50"
                                         data-y="20"
                                         data-speed="100"
                                         data-start="502"
                                         data-easing="easeOutExpo" data-end="2500" data-endspeed="300" data-endeasing="easeInSine">${item.getAt('description')}
                                    </div>
                              </li>
                              
                        </g:else>                        
                  </g:each>


            </ul>

            <div class="tp-bannertimer"></div>
      </div>
</div>
<!-- /REVOLUTION SLIDER -->
</body>
</html>