CKEDITOR.editorConfig = function( config ) {
  config.language = 'fi';
  config.extraPlugins = 'link,pastefromword,filebrowser,image,dialog,language';
  config.filebrowserUploadUrl = '/fileupload';
  config.filebrowserImageUploadUrl = '/imageupload';
  config.uiColor = '#AADC6E';
  config.allowedContent = true;
};