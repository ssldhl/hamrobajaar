<!-- Top Bar -->
<header id="topHead">
      <div class="container">

            <!-- PHONE/EMAIL -->
            <span class="quick-contact pull-left">
                  <i class="fa fa-phone"></i> 1800-555-1234 &bull;
                  <g:link class="hidden-xs" url="mailto:mail@yourdomain.com">mail@domain.com</g:link>
            </span>
            <!-- /PHONE/EMAIL -->

            <!-- LANGUAGE -->
            <div class="btn-group pull-right hidden-xs">
                  <button class="dropdown-toggle language" type="button" data-toggle="dropdown">
                        <g:img dir="images" file="flags/us.png" width="16" height="11" alt="EN Language"/> English
                  </button>
            </div>

            <!-- SIGN IN -->
            <div class="pull-right nav signin-dd">
                  <g:link url="javascript:void(0);" id="quick_sign_in" data-toggle="dropdown">
                        <i class="fa fa-users"></i><span class="hidden-xs"> Sign In</span>
                  </g:link>
                  <div class="dropdown-menu" role="menu" aria-labelledby="quick_sign_in">

                        <h4>Sign In</h4>
                        <g:form action="javscript:void(0);" method="post" role="form">

                              <div class="form-group"><!-- email -->
                                    <input required type="email" class="form-control" placeholder="Username or email">
                              </div>

                              <div class="input-group">

                                    <!-- password -->
                                    <input required type="password" class="form-control" placeholder="Password">

                                    <!-- submit button -->
                                    <span class="input-group-btn">
                                          <g:submitButton name="submit" value="Sign In" class="btn btn-primary"/>
                                    </span>

                              </div>

                              <div class="checkbox"><!-- remmember -->
                                    <label>
                                          <input type="checkbox"> Remember me &bull; <g:link url="javascript:void(0);"> Forgot password?</g:link>
                                    </label>
                              </div>

                        </g:form>

                        <hr />

                        <g:link url="javascript:void(0);" class="btn-facebook fullwidth radius3">
                              <i class="fa fa-facebook"></i> Connect With Facebook
                        </g:link>
                        <g:link url="javascript:void(0);" class="btn-twitter fullwidth radius3">
                              <i class="fa fa-twitter"></i> Connect With Twitter
                        </g:link>
                        <g:link url="javascript:void(0);" class="btn-google-plus fullwidth radius3">
                              <i class="fa fa-google-plus"></i> Connect With Google
                        </g:link>

                        <p class="bottom-create-account">
                              <g:link url="javascript:void(0);">Manual create account</g:link>
                        </p>
                  </div>
            </div>
      <!-- /SIGN IN -->

      <!-- MOBILE BUTTONS -->
            <g:link url="javscript:void(0);" class="btn-mobile-quick pull-right">
                  <i class="fa fa-phone-square"></i>
            </g:link>
            <g:link url="javscript:void(0);" class="btn-mobile-quick pull-right">
                  <i class="fa fa-info-circle"></i>
            </g:link>
      <!-- MOBILE BUTTONS -->

      <!-- LINKS -->
            <div class="pull-right nav hidden-xs">
                  <g:link url="javascript:void(0);">
                        <i class="fa fa-angle-right"></i> About
                  </g:link>
                  <g:link url="javascript:void(0);">
                        <i class="fa fa-angle-right"></i> Contact
                  </g:link>
            </div>
            <!-- LINKS -->

      </div>
</header>
<!-- /Top Bar -->

<!-- TOP NAV -->
<header id="topNav" class="topHead">
      <div class="container">
            <!-- Mobile Menu Button -->
            <button class="btn btn-mobile" data-toggle="collapse" data-target=".nav-main-collapse">
                  <i class="fa fa-bars"></i>
            </button>

            <!-- Logo text or image -->
            <g:link uri="/" class="logo">
                  <g:img dir="images" file="logo.png" alt="${applicationTitle}"/>
            </g:link>

            <!-- Top Nav -->
            <div class="navbar-collapse nav-main-collapse collapse pull-right">
                  <nav class="nav-main mega-menu">
                        <ul class="nav nav-pills nav-main scroll-menu" id="topMain">
                              <li class="dropdown">
                                    <form class="input-group nomargin-bottom top-search" role="search">
                                          <input type="text" class="form-control" placeholder="Search by keywords...">
                                          <span class="input-group-btn">
                                                <g:submitButton name="search" value="Search" class="btn btn-primary"/>
                                          </span>
                                    </form>
                              </li>
                        </ul>
                  </nav>
            </div>
      </div>
</header>

<span id="header_shadow"></span>
<!-- /TOP NAV -->