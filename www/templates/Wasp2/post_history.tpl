[case:[special:lang]|
  [equ:tCreated=Created: [PostTime] by]
  [equ:tEdited=Еdited: [EditTime] by]
  [equ:ttlRestore=Restore the message to this version.]
|
  [equ:tCreated=Създадено на [PostTime] от]
  [equ:tEdited=Редактирано на [EditTime] от]
  [equ:ttlRestore=Възстанови съобщението до тази версия.]
|
  [equ:tCreated=Создано [PostTime], участником]
  [equ:tEdited=Отредактировано [EditTime], участником]
  [equ:ttlRestore=Восстановить сообщение до этой версии.]
|
  [equ:tCreated=Crée le: [PostTime] par]
  [equ:tEdited=Édité le: [EditTime] par]
  [equ:ttlRestore=Restaurer le post sur ce contenu.]
|
  [equ:tCreated=Erstellt: [PostTime] von]
  [equ:tEdited=Geändert: [EditTime] von]
  [equ:ttlRestore=Beitrag auf diese Version zurücksetzen.]
]

[case:[EditUser]|
  [equ:ttlUser=[PostUser]]
  [equ:averUser=[AVerP]]
|
  [equ:ttlUser=[EditUser]]
  [equ:averUser=[AVerE]]
]


<div class="post" id="[case:[rowid]|current|[rowid]]">
  <div class="post-header">
    [case:[rowid]|<a href="#current">#current</a>|<a href="#[rowid]">#[rowid]</a>]

    <img class="avatar" alt="(ツ)" src="/!avatar/[url:[const:ttlUser]]?v=[const:averUser]">

    <a href="/!userinfo/[url:[const:ttlUser]]" class="user_name">[const:ttlUser]</a>

    <div>[case:[EditUser]|[const:tCreated]|[const:tEdited]] <a href="/!userinfo/[url:[const:ttlUser]]">[const:ttlUser]</a></div>

    <div class="spacer"></div>

    [case:[rowid]||<a title="[const:ttlRestore]"  href="/[rowid]/!restore">
      <svg version="1.1" width="16" height="16" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
       <path d="m21 16c0-2.76-2.24-5-5-5s-5 2.24-5 5 2.24 5 5 5 5-2.24 5-5z" />
       <path d="m16 3c-7.18 0-13 5.82-13 13h-3l4.5 6 4.5-6h-3c0-5.53 4.48-10 10-10s10 4.47 10 10-4.48 10-10 10c-2.76 0-5.26-1.12-7.07-2.93l-2.12 2.12c2.35 2.35 5.6 3.81 9.19 3.81 7.18 0 13-5.82 13-13s-5.82-13-13-13z"/>
      </svg>
    </a>]

  </div>
  <article class="post-text">
    [html:[[case:[format]|minimag:[include:minimag_suffix.tpl]|bbcode:][Content]]]
  </article>
</div>
