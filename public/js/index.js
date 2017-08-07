function openDialog(visualforcePage){

    var j$ = jQuery.noConflict();
    var iframe_url = '{!URLFOR("/apex/' + visualforcePage +'")}';
    var child_domain = iframe_url.substring(0, iframe_url.indexOf('/', 9));
    var parent_domain = window.location.protocol + '//' + window.location.host;
    var j$modalDialog = j$('<div></div>')

    .html('<iframe id="iframeContentId" src="' + iframe_url + '&parent_domain=' + parent_domain + '" frameborder="0" height="100%" width="100%" marginheight="0" marginwidth="0" scrolling="no" />')

    .dialog({
        autoOpen: false,
        title: 'Submit Quote Document',
        resizable: false,
        width: 900,
        height: 700,
        autoResize: true,
        modal: true,
        draggable: false,
        overflow: scroll
    });
    j$modalDialog.dialog('open');

}
openDialog("SubmitQuoteDocument?Id="+opportunityId);// JS here
