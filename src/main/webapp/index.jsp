<%@ page import="Service.UserService" %>
<%@ page import="Model.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html data-wf-domain="staycations.webflow.io" data-wf-page="602e6eb1f1736b385e175fca"
      data-wf-site="602e6eb1f1736b540d175fc9">

<head>
    <meta charset="utf-8" />
    <title>UniFinder 360</title>
    <meta
            content="Modern staycation property listing website, built with the Webflow CMS, includes tutorials on how to extend the Filtering functionality with third party plugins."
            name="description" />
    <meta content="Staycations - Webflow HTML website template" property="og:title" />
    <meta
            content="Modern staycation property listing website, built with the Webflow CMS, includes tutorials on how to extend the Filtering functionality with third party plugins."
            property="og:description" />
    <meta content="Staycations - Webflow HTML website template" property="twitter:title" />
    <meta
            content="Modern staycation property listing website, built with the Webflow CMS, includes tutorials on how to extend the Filtering functionality with third party plugins."
            property="twitter:description" />
    <meta property="og:type" content="website" />
    <meta content="summary_large_image" name="twitter:card" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="Webflow" name="generator" />
    <link href="https://assets.website-files.com/602e6eb1f1736b540d175fc9/css/staycations.webflow.aad588e40.min.css"
          rel="stylesheet" type="text/css" />

    <link href="https://fonts.googleapis.com" rel="preconnect" />
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
    <script
            type="text/javascript">WebFont.load({ google: { families: ["Poppins:100,200,300,regular,500,600,700,800,900"] } });</script>
    <script
            type="text/javascript">!function (o, c) { var n = c.documentElement, t = " w-mod-"; n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch") }(window, document);</script>
    <link href="https://assets.website-files.com/602e6eb1f1736b540d175fc9/60d06a02f6b86092c9f4226d_Favicon.png"
          rel="shortcut icon" type="image/x-icon" />
    <link href="https://assets.website-files.com/602e6eb1f1736b540d175fc9/60d06aa484807a240828f7d3_App%20Icon.png"
          rel="apple-touch-icon" />
    <style>
        * {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>
</head>

<body>
<div class="policy-banner">
    <div class="container banner"><img
            src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/609652e4dc99fc8972d53855_icons8_coronavirus.svg"
            loading="lazy" alt="" class="banner-icon" />
        <div>See our full Covid-19 policy. <a href="/covid-policy" target="_blank" class="banner-link">Details
            here</a></div>
    </div>
</div>
<div data-collapse="medium" data-animation="default" data-duration="400"
     data-w-id="0cd9dcc2-2c77-21d9-95aa-d47767ae8ad1" data-easing="ease" data-easing2="ease" role="banner"
     class="navbar w-nav">
<%--    This is  for logo--%>
    <div class="container nav"><a href="/" aria-current="page" class="navbar-logo w-nav-brand w--current"><img
            src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/60cc8d267f4df766e35ee705_Logo%20Icon.svg"
            loading="lazy" alt="" class="navbar-logo-image" />
        <div class="navbar-logo-type">UniFinder 360</div>
    </a>
        <nav role="navigation" class="nav-menu w-nav-menu">
            <div data-hover="true" data-delay="200" data-w-id="0cd9dcc2-2c77-21d9-95aa-d47767ae8ad8"
                 class="nav-link w-dropdown">
                <div class="dropdown-toggle w-dropdown-toggle">
                    <div>Locations</div>
                    <div class="dropdown-icon w-icon-dropdown-toggle"></div>
                </div>
                <nav class="dropdown-list w-dropdown-list">
                    <div class="w-dyn-list">
                        <div role="list" class="nav-dropdown-list w-dyn-items">
                            <div role="listitem" class="nav-dropdown-item w-dyn-item"><a href="user?page=sorting"
                                                                                         class="nav-dropdown-link w-inline-block">
                                <div>Kathmandu</div>
                            </a></div>
                            <div role="listitem" class="nav-dropdown-item w-dyn-item"><a href="user?page=sorting1"
                                                                                         class="nav-dropdown-link w-inline-block">
                                <div>Lalitpur</div>
                            </a></div>
                            <div role="listitem" class="nav-dropdown-item w-dyn-item"><a href="user?page=sorting2"
                                                                                         class="nav-dropdown-link w-inline-block">
                                <div>Bhaktapur</div>
                            </a></div>
<%--                            <div role="listitem" class="nav-dropdown-item w-dyn-item"><a href="/locations/scotland"--%>
<%--                                                                                         class="nav-dropdown-link w-inline-block">--%>
<%--                                <div>Master</div>--%>
<%--                            </a></div>--%>
                        </div>
                    </div><a href="user?page=allcolleges" class="dropdown-link w-dropdown-link">See all locations +</a>
                </nav>
            </div><a href="#collections" class="nav-link w-nav-link">Collections</a><a href="/properties"
                                                                                       class="nav-link w-nav-link">Properties</a>
            <div data-w-id="18911133-97cb-3283-327f-bb7fd70f4865" class="nav-link search">
                <div class="search-button-search-text">Search</div>
                <div class="search-button-close-text">Close</div>
            </div>
<%--            <a href="user?page=dashboard" class="nav-link cta w-nav-link">Dashboard</a>  --%>
            <% if (session.getAttribute("user") != null) { %>
            <a href="user?page=dashboard" class="nav-link cta w-nav-link">Dashboard</a>
            <% } else { %>
            <span class="nav-link cta w-nav-link">Please <a href="user?page=gotologin">log in</a> to access the dashboard</span>
            <% } %>

        <%--            <a href="user?page=gotologin" class="nav-link log-in w-nav-link">Log in</a>--%>
            <% if (session.getAttribute("name") != null) { %>
            <a href="user?page=gotologin" class="nav-link log-in w-nav-link">
                Welcome, <%= session.getAttribute("name") %>
            </a>
            <% } else { %>
            <a href="user?page=gotologin" class="nav-link log-in w-nav-link">Log in</a>
            <% } %>

        </nav>
        <div class="menu-button w-nav-button">
            <div class="menu-button-container">
                <div data-is-ix2-target="1" class="nav-menu-lottie" data-w-id="e17d8c92-68d2-a954-91ac-1cccbf090b76"
                     data-animation-type="lottie"
                     data-src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/60b6117aa065ab76decf4276_lottieflow-menu-nav-11-6-144364-easey.json"
                     data-loop="0" data-direction="1" data-autoplay="0" data-renderer="svg"
                     data-default-duration="3.25" data-duration="0" data-ix2-initial-state="0"></div>
                <div>Menu</div>
            </div>
        </div>
    </div>
    <div class="search-bar-wrapper">
        <div class="container">
            <form action="/search" class="search w-form"><input type="search" class="search-input w-input"
                                                                maxlength="256" name="query" placeholder="Search for Devon, Hot Tub, Treehouse..." id="search"
                                                                required="" /><input type="submit" value="Search" class="search-button w-button" /></form>
        </div>
    </div>
</div>
<div class="home-hero-section">
    <div class="container hero">
        <h1 class="home-hero-h1">Get the Result You Deserve</h1>
        <div>College Finder</div>
        <div class="home-hero-collection-wrapper w-dyn-list">
            <div role="list" class="home-hero-collection-list w-dyn-items">
                <div role="listitem" class="home-hero-collection-item w-dyn-item"><a href="#"
                                                                                     class="popoular-location-link w-inline-block">
                    <div>Trust</div>
                </a></div>
                <div role="listitem" class="home-hero-collection-item w-dyn-item"><a href="#"
                                                                                     class="popoular-location-link w-inline-block">
                    <div>Excellence</div>
                </a></div>
            </div>
        </div><a href="user?page=allcolleges" class="mini-text-link">All Colleges</a>
    </div>
</div>

<%--<div class="home-intro-section">--%>
<%--    <div class="container home-intro">--%>
<%--        <div class="intro-section-title">Featured Colleges</div>--%>
<%--        <div class="w-dyn-list">--%>
<%--            <div role="list" class="home-intro-property-list w-dyn-items">--%>
<%--                <!-- Replace this code block with your Java code to fetch and iterate through the colleges -->--%>

<%--         UserService userService = new UserService(); HashMap<String, Object> featuredColleges = userService.getFeaturedColleges();--%>
<%--                    for (int i = 0; i < 3; i++) {--%>
<%--                        int id = (int) featuredColleges.get("id" + i);--%>
<%--                        String name = (String) featuredColleges.get("Name" + i);--%>
<%--                        String image = (String) featuredColleges.get("Image" + i);--%>
<%--                        String location = (String) featuredColleges.get("Location" + i);--%>
<%--                        String fee = (String) featuredColleges.get("Fee" + i);--%>
<%--                        int seat = (int) featuredColleges.get("Seat" + i);--%>
<%--                        String scholarship = (String) featuredColleges.get("Scholarship" + i);--%>
<%--                        String level = (String) featuredColleges.get("Level" + i);--%>
<%--                        String faculty = (String) featuredColleges.get("Faculty" + i);--%>
<%--                        String admissionDate = (String) featuredColleges.get("Admission_Date" + i);--%>
<%--                        String type = (String) featuredColleges.get("Type" + i);--%>
<%--                        String admissionDeadline = (String) featuredColleges.get("Admission_Deadline" + i);--%>
<%--                %>--%>
<%--                <div role="listitem" class="w-dyn-item">--%>
<%--                    <div class="property-card">--%>
<%--                        <div>--%>
<%--                            <a style="background-image:url('data:image/jpeg;base64,<%= image %>')"--%>
<%--                               href="#" class="property-card-image w-inline-block">--%>

<%--                            <div class="property-card-from-price-row">--%>
<%--                                    <div class="light-text">FROM</div>--%>
<%--                                    <div>$<%= fee %></div>--%>
<%--                                    <div class="light-text">/SEMESTER</div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                            <div class="property-card-title"><%= name %></div>--%>
<%--                            <div class="property-card-row">--%>
<%--                                <img src="" loading="lazy"--%>
<%--                                     alt="<%= location %>" class="property-card-location-icon" />--%>
<%--                                <div>Location</div>--%>
<%--                                <a href="/locations/<%= location %>"--%>
<%--                                   class="property-card-location-link"><%= location %></a>--%>
<%--                            </div>--%>
<%--                            <p class="property-card-summary">Level: <%= level %>, Faculty: <%= faculty %></p>--%>
<%--                            <div class="property-card-subtitle">Features</div>--%>
<%--                            <div class="property-card-feature-list-wrapper w-dyn-list">--%>
<%--                                <div role="list" class="property-card-features-list w-dyn-items">--%>
<%--                                    <!-- You can add additional features here if needed -->--%>

<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <a href="user?page=gotobook&id=<%=id%> " class="property-card-link">Register</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- End of college iteration loop -->--%>
<%--                <%--%>
<%--                    }--%>
<%--                %>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<a href="/collections" class="mini-text-link">See more +</a>--%>
<%--</div>--%>
<%--</div>--%>


<div class="home-intro-section">
    <div class="container home-intro">
        <div class="intro-section-title">Featured Colleges</div>
        <div class="w-dyn-list">
            <div role="list" class="home-intro-property-list w-dyn-items">
                <div role="listitem" class="w-dyn-item">
                    <div class="property-card">

                        <div><a style="background-image:url('./images/VirnchiCollege.jpeg')"
                                href="/property/country-cabin" class="property-card-image w-inline-block">
                            <div class="property-card-from-price-row">
                                <div class="light-text">FROM</div>
                                <div>Rs</div>
                                <div>82000</div>
                                <div class="light-text">/Semester</div>
                            </div>
                        </a>
                            <div class="property-card-title">Bachelor & Master</div>
                            <div class="property-card-row"><img
                                    src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602eae176cde086b839b6408_icons8_navigation_2.svg"
                                    loading="lazy" alt="Cornwall" class="property-card-location-icon" />
                                <div>Location</div><a href="/locations/cornwall"
                                                      class="property-card-location-link">Manbhawan, lalitpur</a>
                            </div>
                            <p class="property-card-summary">Virinchi College provide BICT and MBA courses for student in a affordable price as well as high quality education</p>
                            <div class="property-card-badge-row">
                                <div class="dog-friendly-badge w-condition-invisible"><img
                                        src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602eaef95c26182dc05e02a3_icons8_dog.svg"
                                        loading="lazy" alt="Dogs Welcome Icon" class="property-card-dog-icon" />
                                    <div>Dogs welcome</div>
                                </div>
                                <div class="max-guest-badge"><img
                                        src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602ebb213abab23da3d4d2a6_icons8_user_1.svg"
                                        alt="15" class="property-card-dog-icon" />
                                    <div>Up to</div>
                                    <div class="property-card-guest-amount">500</div>
                                    <div>students</div>
                                </div>
                            </div>
                            <div class="property-card-subtitle">Level</div>
                            <div class="property-card-feature-list-wrapper w-dyn-list">
                                <div role="list" class="property-card-features-list w-dyn-items">
                                    <div role="listitem" class="property-card-features-item w-dyn-item"><img
                                            src="https://assets.website-files.com/602e861b4a61a628c4e2b964/602ea109b69124c88b0e0cd7_icons8_air_conditioner.svg"
                                            loading="lazy" alt="Air Conditioning"
                                            class="property-card-feature-icon" />
                                        <div>Bachelors</div>
                                    </div>
                                    <div role="listitem" class="property-card-features-item w-dyn-item"><img
                                            src="https://assets.website-files.com/602e861b4a61a628c4e2b964/602ea1a09899b5fca343342d_icons8_bathtub.svg"
                                            loading="lazy" alt="Bath" class="property-card-feature-icon" />
                                        <div>Private</div>
                                    </div>
                                    <div role="listitem" class="property-card-features-item w-dyn-item"><img
                                            src="https://assets.website-files.com/602e861b4a61a628c4e2b964/602ea17fdf00192b0e6e6222_icons8_weber.svg"
                                            loading="lazy" alt="BBQ" class="property-card-feature-icon" />
                                        <div>Personal development</div>
                                    </div>
                                </div>
                            </div>
                        </div><a href="user?page=gotobook&id=5" class="property-card-link">Register</a>
                    </div>
                </div>
                <div role="listitem" class="w-dyn-item">
                    <div class="property-card">
                        <div><a style="background-image:url('./images/VirnchiCollege.jpeg')"
                                href="/property/lost-world-log-cabin" class="property-card-image w-inline-block">
                            <div class="property-card-from-price-row">
                                <div class="light-text">FROM</div>
                                <div>Rs</div>
                                <div>82000</div>
                                <div class="light-text">/Semester</div>
                            </div>
                        </a>
                            <div class="property-card-title">Bachelor & Master</div>
                            <div class="property-card-row"><img
                                    src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602eae176cde086b839b6408_icons8_navigation_2.svg"
                                    loading="lazy" alt="Cornwall" class="property-card-location-icon" />
                                <div>Location</div><a href="/locations/cornwall"
                                                      class="property-card-location-link">Manbhawan, lalitpur</a>
                            </div>
                            <p class="property-card-summary">Virinchi College provide BICT and MBA courses for student in a affordable price as well as high quality education</p>
                            <div class="property-card-badge-row">
                                <div class="dog-friendly-badge w-condition-invisible"><img
                                        src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602eaef95c26182dc05e02a3_icons8_dog.svg"
                                        loading="lazy" alt="Dogs Welcome Icon" class="property-card-dog-icon" />
                                    <div>Dogs welcome</div>
                                </div>
                                <div class="max-guest-badge"><img
                                        src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602ebb213abab23da3d4d2a6_icons8_user_1.svg"
                                        alt="15" class="property-card-dog-icon" />
                                    <div>Up to</div>
                                    <div class="property-card-guest-amount">500</div>
                                    <div>students</div>
                                </div>
                            </div>
                            <div class="property-card-subtitle">Level</div>
                            <div class="property-card-feature-list-wrapper w-dyn-list">
                                <div role="list" class="property-card-features-list w-dyn-items">
                                    <div role="listitem" class="property-card-features-item w-dyn-item"><img
                                            src="https://assets.website-files.com/602e861b4a61a628c4e2b964/602ea109b69124c88b0e0cd7_icons8_air_conditioner.svg"
                                            loading="lazy" alt="Air Conditioning"
                                            class="property-card-feature-icon" />
                                        <div>Bachelors</div>
                                    </div>
                                    <div role="listitem" class="property-card-features-item w-dyn-item"><img
                                            src="https://assets.website-files.com/602e861b4a61a628c4e2b964/602ea1a09899b5fca343342d_icons8_bathtub.svg"
                                            loading="lazy" alt="Bath" class="property-card-feature-icon" />
                                        <div>Private</div>
                                    </div>
                                    <div role="listitem" class="property-card-features-item w-dyn-item"><img
                                            src="https://assets.website-files.com/602e861b4a61a628c4e2b964/602ea17fdf00192b0e6e6222_icons8_weber.svg"
                                            loading="lazy" alt="BBQ" class="property-card-feature-icon" />
                                        <div>Personal development</div>
                                    </div>
                                </div>
                            </div>
                        </div><a href="user?page=gotobook&id=5" class="property-card-link">Register</a>
                    </div>
                </div>
                <div role="listitem" class="w-dyn-item">
                    <div class="property-card">
                        <div><a style="background-image:url('./images/VirnchiCollege.jpeg')"
                                href="/property/modern-living" class="property-card-image w-inline-block">
                            <div class="property-card-from-price-row">
                                <div class="light-text">FROM</div>
                                <div>Rs</div>
                                <div>82000</div>
                                <div class="light-text">/Semester</div>
                            </div>
                        </a>
                            <div class="property-card-title">Bachelor & Master</div>
                            <div class="property-card-row"><img
                                    src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602eae176cde086b839b6408_icons8_navigation_2.svg"
                                    loading="lazy" alt="Cornwall" class="property-card-location-icon" />
                                <div>Location</div><a href="/locations/cornwall"
                                                      class="property-card-location-link">Manbhawan, lalitpur</a>
                            </div>
                            <p class="property-card-summary">Virinchi College provide BICT and MBA courses for student in a affordable price as well as high quality education</p>
                            <div class="property-card-badge-row">
                                <div class="dog-friendly-badge w-condition-invisible"><img
                                        src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602eaef95c26182dc05e02a3_icons8_dog.svg"
                                        loading="lazy" alt="Dogs Welcome Icon" class="property-card-dog-icon" />
                                    <div>Dogs welcome</div>
                                </div>
                                <div class="max-guest-badge"><img
                                        src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602ebb213abab23da3d4d2a6_icons8_user_1.svg"
                                        alt="15" class="property-card-dog-icon" />
                                    <div>Up to</div>
                                    <div class="property-card-guest-amount">500</div>
                                    <div>students</div>
                                </div>
                            </div>
                            <div class="property-card-subtitle">Level</div>
                            <div class="property-card-feature-list-wrapper w-dyn-list">
                                <div role="list" class="property-card-features-list w-dyn-items">
                                    <div role="listitem" class="property-card-features-item w-dyn-item"><img
                                            src="https://assets.website-files.com/602e861b4a61a628c4e2b964/602ea109b69124c88b0e0cd7_icons8_air_conditioner.svg"
                                            loading="lazy" alt="Air Conditioning"
                                            class="property-card-feature-icon" />
                                        <div>Bachelors</div>
                                    </div>
                                    <div role="listitem" class="property-card-features-item w-dyn-item"><img
                                            src="https://assets.website-files.com/602e861b4a61a628c4e2b964/602ea1a09899b5fca343342d_icons8_bathtub.svg"
                                            loading="lazy" alt="Bath" class="property-card-feature-icon" />
                                        <div>Private</div>
                                    </div>
                                    <div role="listitem" class="property-card-features-item w-dyn-item"><img
                                            src="https://assets.website-files.com/602e861b4a61a628c4e2b964/602ea17fdf00192b0e6e6222_icons8_weber.svg"
                                            loading="lazy" alt="BBQ" class="property-card-feature-icon" />
                                        <div>Personal development</div>
                                    </div>
                                </div>
                            </div>
                        </div><a href="user?page=gotobook&id=5" class="property-card-link">Register</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


<div class="section">
    <div class="container" id="collections">
        <h2>Levels</h2>
        <div class="w-dyn-list">
            <div role="list" class="collection-list w-dyn-items">
                <div role="listitem" class="w-dyn-item"><a
                        style="background-image:url(&quot;https://assets.website-files.com/602e861b4a61a628c4e2b964/602ebdb836c1257741e5d34f_pexels-jamie-hutt-13759.jpg&quot;)"
                        href="/collections/lakes-rivers" class="collection-link w-inline-block">
                    <div>10</div>
                </a></div>
                <div role="listitem" class="w-dyn-item"><a
                        style="background-image:url(&quot;https://assets.website-files.com/602e861b4a61a628c4e2b964/602ebe0fb91eff330f08b740_pexels-anand-dandekar-1532771.jpg&quot;)"
                        href="/collections/lighthouses" class="collection-link w-inline-block">
                    <div>+2</div>
                </a></div>
                <div role="listitem" class="w-dyn-item"><a
                        style="background-image:url(&quot;https://assets.website-files.com/602e861b4a61a628c4e2b964/602ebea79b864136a7eb8701_pexels-pixabay-235725.jpg&quot;)"
                        href="/collections/barns" class="collection-link w-inline-block">
                    <div>Bachelors</div>
                </a></div>
                <div role="listitem" class="w-dyn-item"><a
                        style="background-image:url(&quot;https://assets.website-files.com/602e861b4a61a628c4e2b964/602ebf0fbcab61106f7e42fe_pexels-nick-wehrli-5717775.jpg&quot;)"
                        href="/collections/glamping" class="collection-link w-inline-block">
                    <div>Diploma</div>
                </a></div>
                <div role="listitem" class="w-dyn-item"><a
                        style="background-image:url(&quot;https://assets.website-files.com/602e861b4a61a628c4e2b964/602ebf97137e65e5ab16b41e_pexels-taryn-elliott-4652170.jpg&quot;)"
                        href="/collections/treehouses" class="collection-link w-inline-block">
                    <div>CTVT</div>
                </a></div>
                <div role="listitem" class="w-dyn-item"><a
                        style="background-image:url(&quot;https://assets.website-files.com/602e861b4a61a628c4e2b964/602ebfc1a2085c0e17bb02db_pexels-eneida-nieves-803975.jpg&quot;)"
                        href="/collections/cabins" class="collection-link w-inline-block">
                    <div>Language Class</div>
                </a></div>
            </div>
        </div>
<%--        <a href="/collections" class="mini-text-link">See all collections +</a>--%>
    </div>
</div>
<div class="section cta"><img
        src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602ecc8b9b13d43ce2e0ad7c_icons8_protect.svg"
        loading="lazy" alt="" class="cta-icon" />
    <div class="cta-title">All our properties are Covid safe</div><a href="/covid-policy"
                                                                     class="button w-button">See our Covid policy</a>
</div>
<div class="trustpilot-section">
    <div class="container">
        <div class="w-layout-grid trustpilot-grid"><img
                src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602ed3ceb50ea35f71869235_588-5885660_adding-trustpilot-image-next-to-logo-on-supply.png"
                loading="lazy" id="w-node-_83b58a77-3724-2619-091f-6b55b09b7b48-b09b7b45" alt="Trustpilot Logo"
                class="trustpilot-logo" />
            <div class="trust-review-card"><img
                    src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602ed59f995ee66fd0b09386_stars-5.svg"
                    loading="lazy" alt="" class="trustpilot-stars" />
                <blockquote class="trustpilot-review">Great service and an even better stay.</blockquote>
                <div>John Gardener</div>
            </div>
            <div class="trust-review-card"><img
                    src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602ed59f995ee66fd0b09386_stars-5.svg"
                    loading="lazy" alt="" class="trustpilot-stars" />
                <blockquote class="trustpilot-review">Great service and an even better stay.</blockquote>
                <div>Sarah Ballent</div>
            </div>
            <div class="trust-review-card"><img
                    src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/602ed59f995ee66fd0b09386_stars-5.svg"
                    loading="lazy" alt="" class="trustpilot-stars" />
                <blockquote class="trustpilot-review">Great service and an even better stay.</blockquote>
                <div>Julie Hassent</div>
            </div><a id="w-node-c58877fb-0e95-89b9-fb32-870084507b63-b09b7b45"
                     href="https://university.webflow.com/integrations/elfsight-instagram-feed-plugin" target="_blank"
                     class="trustpilot-link"><strong>LEARN HOW</strong> | Add a Trustpilot feed to this project +</a>
        </div>
    </div>
</div>
<div class="section list-with-us">
    <div class="container mini">
        <h1>List with us<br /></h1>
        <p>Why should you?</p>
        <div class="list-with-us-row">
            <div class="list-with-us-row-item">Over 10,000 daily visitors</div>
            <div class="list-with-us-row-item">Free Listing</div>
            <div class="list-with-us-row-item">Only 5% payable</div>
            <div class="list-with-us-row-item">Full EPOS System</div>
            <div class="list-with-us-row-item">SEO &amp; Analytics</div>
            <div class="list-with-us-row-item">+ More</div>
        </div><a href="/list-with-us" class="button w-button">List with us +</a>
    </div>
</div>
<footer class="footer">
    <div class="container">
        <div class="footer-flex-container">
            <div>
                <h3 class="footer-heading">Navigate</h3>
                <ul role="list" class="w-list-unstyled">
                    <li><a href="/" aria-current="page" class="footer-link w--current">Home</a></li>
                    <li><a href="/locations" class="footer-link">Locations</a></li>
                    <li><a href="/collections" class="footer-link">Collections</a></li>
                    <li><a href="/contact" class="footer-link">Contact</a><a href="/404" class="footer-link">404
                        Page</a><a href="/401" class="footer-link">Password Page</a></li>
                </ul>
            </div>
            <div>
                <h3 class="footer-heading">About us</h3>
                <ul role="list" class="w-list-unstyled">
                    <li><a href="/tutorials-and-guides" class="footer-link">Tutorials and guides</a></li>
                    <li><a href="/terms-of-use" class="footer-link">Terms of use</a></li>
                    <li><a href="/privacy-policy" class="footer-link">Privacy policy</a></li>
                    <li><a href="/covid-policy" class="footer-link">Covid-19 policy</a></li>
                </ul>
            </div>
            <div>
                <h3 class="footer-heading">Listing with us</h3>
                <ul role="list" class="w-list-unstyled">
                    <li><a href="/list-with-us" class="footer-link">List your property</a></li>
                    <li><a href="/log-in" class="footer-link">Log in</a></li>
                    <li><a href="/register" class="footer-link">Register</a></li>
                </ul>
            </div>
            <div>
                <h3 class="footer-heading">Social</h3>
                <ul role="list" class="w-list-unstyled">
                    <li><a href="http://facebook.com" target="_blank" class="footer-link">Facebook</a></li>
                    <li><a href="http://instagram.com" target="_blank" class="footer-link">Instagram</a></li>
                    <li><a href="http://twitter.com" target="_blank" class="footer-link">Twitter</a></li>
                    <li><a href="http://linkedin.com" target="_blank" class="footer-link">LinkedIn</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-small-print">Copyright © Staycations Inc. All rights reserved.</div>
    <div class="footer-small-print-row">
        <div class="footer-small-print">Powered by <a href="http://www.webflow.com" target="_blank">Webflow</a>
        </div>
        <div class="footer-small-print">Crafted by <a href="http://www.aarongrieve.co.uk" target="_blank">Aaron
            Grieve</a></div>
    </div>
</footer>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=602e6eb1f1736b540d175fc9"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
<script src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/js/webflow.767fd35c6.js"
        type="text/javascript"></script>
</body>

</html>