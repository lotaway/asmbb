[css:posts.css]
[css:posteditor.css]
[css:threadnew.css]
[css:markdown.css]
[css:highlight.css]

[case:[special:lang]|
  [equ:Caption=Thread title]
  [equ:Content=Post content]
  [equ:btnPreview=Preview]
  [equ:hintPreview=Ctrl+Enter for preview]
  [equ:btnSubmit=Submit]
  [equ:hintSubmit=Ctrl+S for submit]
  [equ:Attach=Attach file(s)]
  [equ:tabText=Text]
  [equ:tabAttach=Attachments]
  [equ:FileLimit=(count ≤ 10, size ≤ 1MB)]
  [equ:MultiFiles= files selected.]
|
  [equ:Caption=Заглавие на темата]
  [equ:Content=Съдържание на поста]
  [equ:btnPreview=Преглед]
  [equ:hintPreview=Ctrl+Enter за преглед]
  [equ:btnSubmit=Публикувай]
  [equ:hintSubmit=Ctrl+S за публикуване]
  [equ:Attach=Прикачи файл(ове)]
  [equ:tabText=Текст]
  [equ:tabAttach=Файлове]
  [equ:FileLimit=(брой ≤ 10, размер ≤ 1MB)]
  [equ:MultiFiles= файла са избрани.]
|
  [equ:Caption=Название темы]
  [equ:Content=Содержание поста]
  [equ:btnPreview=Просмотр]
  [equ:hintPreview=Ctrl+Enter для предварительного просмотра]
  [equ:btnSubmit=Отправить]
  [equ:hintSubmit=Ctrl+S чтобы отправить]
  [equ:Attach=Прикрепить файл(ы)]
  [equ:tabText=Текст]
  [equ:tabAttach=Вложения]
  [equ:FileLimit=(количество ≤ 10, размер ≤ 1MB)]
  [equ:MultiFiles= выбранные файлы.]
|
  [equ:Caption=Titre du sujet]
  [equ:Content=Contenu du message]
  [equ:btnPreview=Prévisualiser]
  [equ:hintPreview=Ctrl+Entrée pour prévisualiser]
  [equ:btnSubmit=Soumettre]
  [equ:hintSubmit=Ctrl+S pour soumettre]
  [equ:Attach=Pièce(s) jointe(s)]
  [equ:tabText=Texte]
  [equ:tabAttach=Pièces jointes]
  [equ:FileLimit=(count ≤ 10, size ≤ 1MB)]
  [equ:MultiFiles= dossiers sélectionnés.]
|
  [equ:Caption=Titel des Themas]
  [equ:Content=Inhalt des Beitrags]
  [equ:btnPreview=Vorschau]
  [equ:hintPreview=Strg+Eingabe für eine Vorschau]
  [equ:btnSubmit=Absenden]
  [equ:hintSubmit=Strg+S zum Absenden]
  [equ:Attach=Datei(en) anhängen]
  [equ:tabText=Text]
  [equ:tabAttach=Anhänge]
  [equ:FileLimit=(Anzahl ≤ 10, Größe ≤ 1MB)]
  [equ:MultiFiles= ausgewählte Dateien.]
]

<div class="editor" id="editor">
  <div class="navigation3 btn-bar">
      <input form="editform" type="hidden" name="ticket" value="[Ticket]" >
      <input form="editform" class="btn" id="preview-btn" type="submit" name="preview" onclick="this.form.cmd='preview'" value="[const:btnPreview]" title="[const:hintPreview]">
      <input form="editform" class="btn" type="submit" name="submit" onclick="this.form.cmd='submit'" value="[const:btnSubmit]" title="[const:hintSubmit]">
      <div class="spacer"></div>
      <a class="btn img-btn" href="!by_id">
        <svg version="1.1" width="12" height="12" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
           <rect transform="rotate(45)" x=".635" y="-1.53" width="21.4" height="3.05" rx="1.53" ry="1.53"/>
           <rect transform="rotate(135)" x="-10.7" y="-12.8" width="21.4" height="3.05" rx="1.53" ry="1.53"/>
        </svg>
      </a>
  </div>
  <form id="editform" action="!edit" method="post" onsubmit="previewIt(event)" enctype="multipart/form-data">
    <div class="dropdown tabbed-form">

      <input id="tab0" name="tabselector" type="radio" value="0" checked>
      <label for="tab0">[const:tabText]</label>
      <section>

        <p>[const:Content]:</p>
        [include:edit_toolbar.tpl]
        <textarea name="source" id="source" required>[source]</textarea>
      </section>

      <input id="tab1" name="tabselector" type="radio" value="1">
      <label for="tab1">[const:tabAttach]</label>
      <section>
        [case:[special:canupload]||<p>[const:Attach]: <span class="small">[const:FileLimit]</span></p>

        <div class="editgroup">
          <div class="file-browse">
            <label for="attach" id="browse-txt"></label>
            <input type="file" placeholder="[const:phSelect]" id="attach" name="attach" multiple="multiple">
            <label id="browse-btn" class="btn" for="attach">Browse</label>
          </div>
        </div>

        <div id="attachments" class="attach_del">
          [attach_edit:[id]]
        </div>

      </section>

      [case:[special:markup=0]||
      <input id="tab2" name="tabselector" type="radio" value="2">
      <label for="tab2">
        <svg version="1.1" width="16" height="16" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
          <path d="m16 0a16 16 0 00-16 16 16 16 0 0016 16 16 16 0 0016-16 16 16 0
                   00-16-16zm.154 6c2.13 0 3.8.503 5.01 1.51 1.22.998 1.83 2.38 1.83
                   4.14 0 .904-.198 1.72-.594 2.43-.386.718-1.11 1.47-2.18
                   2.27l-1.03.77c-.611.457-1.07.919-1.37 1.38-.296.466-.459.978-.486
                   1.54h-3.6c.0539-.951.311-1.8.77-2.54.467-.746 1.15-1.44 2.05-2.1.961-.69
                   1.64-1.3 2.04-1.82.395-.531.594-1.12.594-1.76
                   0-.821-.262-1.47-.783-1.94-.512-.476-1.24-.715-2.2-.715-.907
                   0-1.67.276-2.29.826-.611.55-.97 1.28-1.08 2.18l-3.84-.168c.243-1.89.992-3.37
                   2.25-4.42 1.26-1.05 2.89-1.58 4.9-1.58zm-2.52 16.2h3.89v3.78h-3.89v-3.78z"/>
        </svg>
        MiniMag
      </label>
      <section class="post post-text help">
        [html:
          [minimag:
            [include:minimag_suffix.tpl]
            [raw:help-minimag.txt]
          ]
        ]
      </section>
      ]

      [case:[special:markup=1]||
      <input id="tab3" name="tabselector" type="radio" value="3">
      <label for="tab3">
        <svg version="1.1" width="16" height="16" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
          <path d="m16 0a16 16 0 00-16 16 16 16 0 0016 16 16 16 0 0016-16 16 16 0
                   00-16-16zm.154 6c2.13 0 3.8.503 5.01 1.51 1.22.998 1.83 2.38 1.83
                   4.14 0 .904-.198 1.72-.594 2.43-.386.718-1.11 1.47-2.18
                   2.27l-1.03.77c-.611.457-1.07.919-1.37 1.38-.296.466-.459.978-.486
                   1.54h-3.6c.0539-.951.311-1.8.77-2.54.467-.746 1.15-1.44 2.05-2.1.961-.69
                   1.64-1.3 2.04-1.82.395-.531.594-1.12.594-1.76
                   0-.821-.262-1.47-.783-1.94-.512-.476-1.24-.715-2.2-.715-.907
                   0-1.67.276-2.29.826-.611.55-.97 1.28-1.08 2.18l-3.84-.168c.243-1.89.992-3.37
                   2.25-4.42 1.26-1.05 2.89-1.58 4.9-1.58zm-2.52 16.2h3.89v3.78h-3.89v-3.78z"/>
        </svg>
        BBCode
      </label>
      <section class="post post-text help">
        [html:
          [bbcode:
            [raw:help-bbcode.txt]
          ]
        ]
      </section>
      ]

    </div>
  </form>
</div>


<script src="[special:skin]/highlight.js"></script>

<script>

function highlightAll() {
  document.querySelectorAll('pre>code').forEach((block) => {
    hljs.highlightBlock(block);
  });
}

var browseBtn = document.getElementById('browse-btn');
var browseTxt = document.getElementById('browse-txt');
var browseEdt = document.getElementById('attach');

browseEdt.style.width = 0;
browseBtn.style.display = 'inline-flex';
browseTxt.style.display = 'block';

browseEdt.onchange = function() {
  var cnt = browseEdt.files.length;

  if (cnt == 0)
    browseTxt.innerText = '';
  else if (cnt == 1)
    browseTxt.innerText = browseEdt.files^[0^].name;
  else {
    browseTxt.innerText = cnt + '[const:MultiFiles]';
    var allFiles = '';
    for (i = 0; i<cnt; i++) {
      allFiles += (browseEdt.files^[i^].name + '\n');
    };
    browseTxt.title = allFiles;
  }
};

browseEdt.onchange();
window.addEventListener('load', previewIt());

function previewIt(e) {

  if ((e == undefined) ^|^| (e.target.cmd === "preview")) {
    if (e) e.preventDefault();

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "!edit?cmd=preview");

    xhr.onload = function(event){
      if (event.target.status === 200) {
        var prv = document.getElementById("preview");
        var attch = document.getElementById("attachments");
        var resp = JSON.parse(event.target.response);

        prv.innerHTML = resp.preview;
        attch.innerHTML = resp.attach_del;
      }
      highlightAll();
      browseEdt.value = null;
      browseEdt.onchange();
      if (e) document.getElementById("source").focus();
    };

    var formData = new FormData(document.getElementById("editform"));
    xhr.send(formData);
  }
}


document.onkeydown = function(e) {
  var key = e.which ^|^| e.keyCode;
  var frm = document.getElementById("editform");
  var stop = true;

  if (e.ctrlKey && key == 13) {
    frm.preview.click();
  } else if (key == 27) {
    window.location.href = "!by_id";
  } else if (e.ctrlKey && key == 83) {
    frm.submit.click();
  } else stop = false;

  if (stop) e.preventDefault();
};


</script>
