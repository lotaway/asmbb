[css:common.css]
[css:navigation.css]
[css:toaster.css]
[css:custom_style.css]

[case:[special:lang]|
[equ:btnCats=Categories]
[equ:btnChat=Chat]
[equ:ttlAllThreads=All tags]
[equ:btnList=Topics]
[equ:ttlPublic=Public topics]
[equ:ttlLimited=Limited access topics]
[equ:Public=Public]
[equ:Limited=Limited]
|
[equ:btnCats=Categories]
[equ:btnChat=Chat]
[equ:ttlAllThreads=All tags]
[equ:btnList=Topics]
[equ:ttlPublic=Публични теми]
[equ:ttlLimited=Теми с ограничен достъп]
[equ:Public=Публични]
[equ:Limited=Ограничени]
|
[equ:btnCats=Categories]
[equ:btnChat=Chat]
[equ:ttlAllThreads=All tags]
[equ:btnList=Topics]
[equ:ttlPublic=Публичные темы]
[equ:ttlLimited=Темы с ограниченным доступом]
[equ:Public=Публичные]
[equ:Limited=Ограниченные]
|
[equ:btnCats=Categories]
[equ:btnChat=Chat]
[equ:ttlAllThreads=All tags]
[equ:btnList=Topics]
[equ:ttlPublic=Discussions publiques]
[equ:ttlLimited=Discussions restreintes]
[equ:Public=Publiques]
[equ:Limited=Restreintes]
|
[equ:btnCats=Categories]
[equ:btnChat=Chat]
[equ:ttlAllThreads=All tags]
[equ:btnList=Topics]
[equ:ttlPublic=Öffentliche Themen]
[equ:ttlLimited=Themen mit beschränktem Zugang]
[equ:Public=Öffentliche]
[equ:Limited=Beschränkt]
]


<!DOCTYPE html>
<html lang="[case:[special:lang]|en|bg|ru|fr|de]">

<head>
  <meta charset="utf-8">
  <title>[special:title]</title>
  [case:[special:limited]|
  <link href="!feed" type="application/atom+xml" rel="alternate" title="Atom feed">|]
  <meta name="description" content="[special:description]">
  <meta name="keywords" content="[special:keywords]">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  [special:allstyles]
  <link rel="apple-touch-icon" sizes="57x57" href="/images/favicons/apple-touch-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="/images/favicons/apple-touch-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="/images/favicons/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="/images/favicons/apple-touch-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="/images/favicons/apple-touch-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="/images/favicons/apple-touch-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="/images/favicons/apple-touch-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="/images/favicons/apple-touch-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="/images/favicons/apple-touch-icon-180x180.png">
  <link rel="icon" type="image/png" href="/images/favicons/favicon-32x32.png" sizes="32x32">
  <link rel="icon" type="image/png" href="/images/favicons/favicon-194x194.png" sizes="194x194">
  <link rel="icon" type="image/png" href="/images/favicons/favicon-96x96.png" sizes="96x96">
  <link rel="icon" type="image/png" href="/images/favicons/android-chrome-192x192.png" sizes="192x192">
  <link rel="icon" type="image/png" href="/images/favicons/favicon-16x16.png" sizes="16x16">
  <link rel="manifest" href="/images/favicons/manifest.json">
  <link rel="mask-icon" href="/images/favicons/safari-pinned-tab.svg">
  <link rel="shortcut icon" href="/images/favicons/favicon.ico">
  <link rel="preload" href="/templates/Light/_images/main_img@2x.jpg" as="image" fetchpriority="high" />
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/images/favicons/mstile-144x144.png">
  <meta name="msapplication-config" content="/images/favicons/browserconfig.xml">
  <meta name="theme-color" content="#ffcc40">

  <noscript>
    <style>
      .jsonly {
        display: none !important
      }
    </style>
  </noscript>

  <script>
    var ActiveSkin = '[special:skin]';
    [raw: realtime.js]
  </script>
  <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1932701109982157"
    crossorigin="anonymous"></script>
</head>

<body>
  <div class="main_image" loading="lazy">
    <div class="header" style="magrin-top:150px; padding:10px;">
      <a href="/" style="color:#105289; text-decoration:none;">[special:header]</a>
      <div class="spacer"></div>
      <div style="margin-top:3%!important;">
        [case:[special:userid]
        |<a href="/!login/" class="button_style">[case:[special:lang]|Login|Вход|Вход|Connexion|Anmelden]</a><br>
[case:[special:canregister]||<a href="/!register/" class="button_style">[case:[special:lang]|Join now, it's
          FREE!|Регистрация|Регистрация|Inscription|Registrieren]</a>]
        |<form method="POST" action="/!logout"><input class="logout button_style" type="submit" name="logout"
            value="[case:[special:lang]|Logout|Изход|Выйти|Se déconnecter|Abmelden] ([enc:[special:username]])"></form>
        <a href="/!userinfo/[url:[special:username]]" class="button_style">[case:[special:lang]|User
          profile|Профил|Профиль|Profil|Profil]</a>
        ]
      </div>
    </div>
  </div>
  <div>
    <form class="tags" id="search_form" action="[case:[special:cmdtype]||/|../]!search/" method="get">
      <input class="search_line small" type="search" name="s"
        placeholder="[case:[special:lang]|text search|търсене на текст|поиск текста|recherche de texte|Textsuche]"
        value="[special:search]">
      <input class="search_line small" type="search" name="u"
        placeholder="[case:[special:lang]|user search|потребител|пользователь|recherche d'utilisateur|Benutzersuche]"
        value="[special:usearch]">
      <a class="icon_btn"><input class="img_input" type="image" width="32" height="32"
          src="[special:skin]/_images/search.svg" alt="&nbsp;Search&nbsp;"
          title="[case:[special:lang]|Search|Търсене|Поиск|Rechercher|Suchen]"></a>
      <a class="jsonly rounded_button" onclick="switchNotificationCookie();" title="[const:ttlNotifications]"
        style="margin-left: auto;">
        <svg width="16" height="16" version="1.1" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"
          style="padding-right: 3px">
          <circle cx="10" cy="17" r="3" style="fill:#ffffff" />
          <path d="m20 17h-20c0-1.37 1.7-1.08 2-3 .663-4.28 1.1-11 8-11 7.12 0 7.41 6.61 8 11 .239 1.78 2 1.73 2 3z"
            style="fill:#ffffff" />
          <path
            d="m10 0a3 3 0 00-3 3 3 3 0 003 3 3 3 0 003-3 3 3 0 00-3-3zm0 2a1 1 0 011 1 1 1 0 01-1 1 1 1 0 01-1-1 1 1 0 011-1z"
            style="fill:#ffffff" />
          <line id="notiStroked" x1="0" y1="20" x2="20" y2="0"
            style="stroke-width:4;stroke:hsl(0, 70%, 50%);visibility:hidden;" />
        </svg> Get Notifications
      </a>
    </form>
  </div>
  <div class="alone">
    <a href="/[case:[special:limited]||(o)/]"><img class="tagicon"
        src="[special:skin]/_images/alltags[case:[special:variant]|||_gray].svg" alt="/"
        title="[case:[special:lang]|Show all topics|Покажи всички теми|Показать все темы|Montrer tous les sujets|Alle Themen zeigen]"></a>
    <label class="tag-upper-new btn-new ui" for="tags-collapse">
      [case:[special:dir]|[const:ttlAllThreads]|<span>#[special:dir]</span>]
    </label>
    <!--[case:[special:thread]||
    <a class="btn" href="/[case:[special:limited]||(o)/][special:dir][case:[special:dir]||/]">[const:btnList]</a>]-->
    <a class="ui left" href="/!categories">[const:btnCats]</a>
    [case:[special:canchat] | |<a class="ui left" href="/!chat">[const:btnChat]</a>]
    [case:[special:userid]||
    <a class="[case:[special:limited]|ui|ui3] left" href="/[case:[special:dir]||[special:dir]/]"
      title="[const:ttlPublic]">[const:Public][special:unread]</a>
    <a class="[case:[special:limited]|ui3|ui] left" href="/(o)/[case:[special:dir]||[special:dir]/]"
      title="[const:ttlLimited]">[const:Limited][special:unreadLAT]</a>
    ]
    [case:[special:limited]|<a class="rounded_button" href="!feed" title="[const:rssfeed]"
      style="margin-left: auto;"><img src="[special:skin]/_images/rss.svg" alt="RSS" style="padding-right: 3px;">
      Subscribe NOW!</a>|]
  </div>

  <input type="checkbox" id="tags-collapse" accesskey="t" class="checkbox-input-new">
  <div class="tags-container-new">
    <div class="tags tags-new">
      [special:alltags]
    </div>
  </div>
  <script>
    const checkbox = document.getElementById("tags-collapse");
    const icon = document.querySelector(".tag-upper-new.btn-new");

    checkbox.addEventListener("change", function() {
      if (checkbox.checked) {
        icon.classList.add("active");
      } else {
        icon.classList.remove("active");
      }
    });
  </script>
  <div class="ads ad_header">
    <!-- top advert -->
    <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-1932701109982157" data-ad-slot="1570066149"
      data-ad-format="auto" data-full-width-responsive="true"></ins>
    <script>
      (adsbygoogle = window.adsbygoogle || []).push({});
    </script>
  </div>
  <div class="main_content_container">