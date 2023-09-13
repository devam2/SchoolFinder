<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 9/11/2023
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!-- This site was created in Webflow. https://www.webflow.com --><!-- Last Published: Tue Jul 06 2021 10:30:50 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-domain="staycations.webflow.io" data-wf-page="602ec1e8b91eff1b4008d47d"
      data-wf-site="602e6eb1f1736b540d175fc9">

<head>
    <meta charset="utf-8" />
    <title>Search Results</title>
    <meta content="Search Results" property="og:title" />
    <meta content="Search Results" property="twitter:title" />
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
    <div class="container nav"><a href="/" class="navbar-logo w-nav-brand"><img
            src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/60cc8d267f4df766e35ee705_Logo%20Icon.svg"
            loading="lazy" alt="" class="navbar-logo-image" />
        <div class="navbar-logo-type">Staycations</div>
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
                            <div role="listitem" class="nav-dropdown-item w-dyn-item"><a href="/locations/cornwall"
                                                                                         class="nav-dropdown-link w-inline-block">
                                <div>Cornwall</div>
                            </a></div>
                            <div role="listitem" class="nav-dropdown-item w-dyn-item"><a href="/locations/essex"
                                                                                         class="nav-dropdown-link w-inline-block">
                                <div>Essex</div>
                            </a></div>
                            <div role="listitem" class="nav-dropdown-item w-dyn-item"><a href="/locations/kent"
                                                                                         class="nav-dropdown-link w-inline-block">
                                <div>Kent</div>
                            </a></div>
                            <div role="listitem" class="nav-dropdown-item w-dyn-item"><a href="/locations/scotland"
                                                                                         class="nav-dropdown-link w-inline-block">
                                <div>Scotland</div>
                            </a></div>
                        </div>
                    </div><a href="/locations" class="dropdown-link w-dropdown-link">See all locations +</a>
                </nav>
            </div><a href="/collections" class="nav-link w-nav-link">Collections</a><a href="/properties"
                                                                                       class="nav-link w-nav-link">Properties</a>
            <div data-w-id="18911133-97cb-3283-327f-bb7fd70f4865" class="nav-link search">
                <div class="search-button-search-text">Search</div>
                <div class="search-button-close-text">Close</div>
            </div><a href="/list-with-us" class="nav-link cta w-nav-link">List with us</a><a href="/log-in"
                                                                                             class="nav-link log-in w-nav-link">Log in</a>
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
                                                                required="" value="TreeHouse" /><input type="submit" value="Search"
                                                                                                       class="search-button w-button" /></form>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="w-layout-grid search-results-grid">
            <div>
                <h1>Here&#x27;s what we found</h1>
                <div class="search-result-wrapper">
                    <div class="search-result-list search-result-items">
                        <div class="search-result-item">
                            <div class="property-card">
                                <div style="background-image:url(&quot;https://d3e54v103j8qbb.cloudfront.net/img/generic/image19.jpg&quot;)"
                                     class="property-card-image"></div>
                                <div class="property-card-title">You&#x27;re viewing sample results.</div>
                                <p class="property-card-summary"><span>Qui</span><span>
                                        </span><span>saepe</span><span> </span><span>enim</span><span>
                                        </span><span>sit</span><span> </span><span>consequatur</span><span>
                                        </span><span>omnis</span><span> </span><span>cum</span><span>
                                        </span><span>quae</span><span>. </span><span>Quos</span><span>
                                        </span><span>deleniti</span><span> </span><span>nostrum</span><span>
                                        </span><span>s</span><span>…</span></p><a href="/sample-result"
                                                                                  class="property-card-link">See the details +</a>
                            </div>
                        </div>
                        <div class="search-result-item">
                            <div class="property-card">
                                <div style="background-image:url(&quot;https://d3e54v103j8qbb.cloudfront.net/img/generic/image16.jpg&quot;)"
                                     class="property-card-image"></div>
                                <div class="property-card-title">Add CMS or Business Hosting and index your site to
                                    see real search results!</div>
                                <p class="property-card-summary"><span>Natus</span><span>
                                        </span><span>eos</span><span> </span><span>rerum</span><span>
                                        </span><span>ex</span><span> </span><span>aliquid</span><span>
                                        </span><span>rem</span><span> </span><span>dolore</span><span>
                                        </span><span>aliquid</span><span> </span><span>et</span><span>
                                        </span><span>quaerat</span><span>. </span><span>Veniam</span><span>
                                        </span><span>aut</span><span> </span><span>q</span><span>…</span></p><a
                                    href="/sample-result" class="property-card-link">See the details +</a>
                            </div>
                        </div>
                        <div class="search-result-item">
                            <div class="property-card">
                                <div style="background-image:url(&quot;https://d3e54v103j8qbb.cloudfront.net/img/generic/image18.jpg&quot;)"
                                     class="property-card-image"></div>
                                <div class="property-card-title">Want more from search? Add your idea to our
                                    Wishlist</div>
                                <p class="property-card-summary"><span>Natus</span><span>
                                        </span><span>sunt</span><span> </span><span>iure</span><span>
                                        </span><span>aspernatur</span><span> </span><span>quo</span><span>
                                        </span><span>deleniti</span><span> </span><span>qui</span><span>
                                        </span><span>harum</span><span>. </span><span>Odio</span><span>
                                        </span><span>ex</span><span> </span><span>et</span><span>
                                        </span><span>vitae</span><span> </span><span>ex</span><span>…</span></p><a
                                    href="/sample-result" class="property-card-link">See the details +</a>
                            </div>
                        </div>
                        <div class="search-result-item">
                            <div class="property-card">
                                <div style="background-image:url(&quot;https://d3e54v103j8qbb.cloudfront.net/img/generic/image13.jpg&quot;)"
                                     class="property-card-image"></div>
                                <div class="property-card-title">Define a search image in Page Settings to add some
                                    imagery to results</div>
                                <p class="property-card-summary"><span>Voluptas</span><span>
                                        </span><span>cupiditate</span><span> </span><span>id</span><span>
                                        </span><span>adipisci</span><span> </span><span>blanditiis</span><span>
                                        </span><span>quia</span><span> </span><span>omnis</span><span>
                                        </span><span>omnis</span><span> </span><span>ad</span><span>
                                        </span><span>nihil</span><span>.</span><span>…</span></p><a
                                    href="/sample-result" class="property-card-link">See the details +</a>
                            </div>
                        </div>
                        <div class="search-result-item">
                            <div class="property-card">
                                <div style="background-image:url(&quot;https://d3e54v103j8qbb.cloudfront.net/img/generic/image7.jpg&quot;)"
                                     class="property-card-image"></div>
                                <div class="property-card-title">Search snippets too long? Limit their character
                                    count in the Settings panel</div>
                                <p class="property-card-summary"><span>Rem</span><span>
                                        </span><span>numquam</span><span> </span><span>ducimus</span><span>
                                        </span><span>aut</span><span> </span><span>voluptatem</span><span>
                                        </span><span>doloribus</span><span> </span><span>adipisci</span><span>
                                        </span><span>laboriosam</span><span> </span><span>quisq</span><span>…</span></p>
                                <a href="/sample-result" class="property-card-link">See the details +</a>
                            </div>
                        </div>
                        <div class="search-result-item">
                            <div class="property-card">
                                <div style="background-image:url(&quot;https://d3e54v103j8qbb.cloudfront.net/img/generic/image10.jpg&quot;)"
                                     class="property-card-image"></div>
                                <div class="property-card-title">You can exclude any page from site search in Page
                                    Settings</div>
                                <p class="property-card-summary"><span>Et</span><span>
                                        </span><span>praesentium</span><span> </span><span>iusto</span><span>
                                        </span><span>nesciunt</span><span> </span><span>laboriosam</span><span>
                                        </span><span>asperiores</span><span>. </span><span>Ut</span><span>
                                        </span><span>animi</span><span> </span><span>et</span><span>
                                        </span><span>dolor</span><span>…</span></p><a href="/sample-result"
                                                                                      class="property-card-link">See the details +</a>
                            </div>
                        </div>
                        <div class="search-result-item">
                            <div class="property-card">
                                <div style="background-image:url(&quot;https://d3e54v103j8qbb.cloudfront.net/img/generic/image5.jpg&quot;)"
                                     class="property-card-image"></div>
                                <div class="property-card-title">Components and Collection Lists are excluded from
                                    site search by default</div>
                                <p class="property-card-summary"><span>Mollitia</span><span>
                                        </span><span>earum</span><span> </span><span>amet</span><span>
                                        </span><span>et</span><span> </span><span>rerum</span><span>
                                        </span><span>consequatur</span><span> </span><span>asperiores</span><span>.
                                        </span><span>Libero</span><span> </span><span>odit</span><span>
                                        </span><span>accus</span><span>…</span></p><a href="/sample-result"
                                                                                      class="property-card-link">See the details +</a>
                            </div>
                        </div>
                        <div class="search-result-item">
                            <div class="property-card">
                                <div style="background-image:url(&quot;https://d3e54v103j8qbb.cloudfront.net/img/generic/image18.jpg&quot;)"
                                     class="property-card-image"></div>
                                <div class="property-card-title">Have a super-secret style guide on your site?
                                    Exclude it in Page Settings</div>
                                <p class="property-card-summary"><span>Perspiciatis</span><span>
                                        </span><span>reiciendis</span><span> </span><span>ut</span><span>.
                                        </span><span>Officia</span><span> </span><span>ea</span><span>
                                        </span><span>eveniet</span><span> </span><span>unde</span><span>
                                        </span><span>vero</span><span> </span><span>nostrum</span><span>
                                        </span><span>quas</span><span>.</span><span>…</span></p><a href="/sample-result"
                                                                                                   class="property-card-link">See the details +</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <form action="/search" id="w-node-c74fde11-6b82-bacf-e056-335ab7b8c10b-4008d47d"
                  class="aside-search-wrapper sticky w-form"><label for="search-2" class="aside-title">Search
                again</label>
                <div class="aside-search-row"><input type="search" class="aside-search-input w-input"
                                                     maxlength="256" name="query" placeholder="Treehouse, Lake, Cabin..." id="search-2"
                                                     required="" value="TreeHouse" /><input type="submit" value="Find" class="button w-button" />
                </div><a href="https://www.jetboost.io/" target="_blank"
                         class="how-to-link search-results w-inline-block">
                    <div><strong>LEARN HOW</strong> | Dynamic CMS filtering with</div><img
                        src="https://assets.website-files.com/602e6eb1f1736b540d175fc9/60cc86aae54f64aaea94e130_Jetboost%20Logo%20Mark.svg"
                        loading="lazy" alt="Jet Boost Webflow Filtering Logo" class="how-to-inline-icon" />
                    <div class="jetboost-text"><strong>Jet Boost</strong></div>
                </a>
            </form>
        </div>
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
                    <li><a href="/" class="footer-link">Home</a></li>
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
