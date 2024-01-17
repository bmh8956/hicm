tinymce.init({
    language: 'ko_KR',
    selector: '#content',
    height: 300,
    plugins: ['advlist', 'autolink', 'lists', 'link', 'image', 'charmap', 'print', 'preview', 'anchor', 'searchreplace', 'visualblocks', 'code', 'fullscreen', 'insertdatetime', 'media', 'table', 'paste', 'code', 'help', 'wordcount', 'save' ],
    toolbar: 'formatselect fontselect fontsizeselect |'
        + ' forecolor backcolor |'
        + ' bold italic underline strikethrough |'
        + ' alignjustify alignleft aligncenter alignright |'
        + ' bullist numlist |'
        + ' table tabledelete |'
        + ' link custom_image',
    fontsize_formats: '9px 10px 11px 12px 13px 14px 15px 16px 18px 20px 22px 24px 28px 32px 36px 48px',
    content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }',
    menubar: false,
    setup: function(editor) {}
});