$(document).ready(function() {

    /* Home Slideshow Vegas
    -----------------------------------------------*/
    $(function() {
      $('body').vegas({
          slides: [
              { src: 'img/slide-1.jpg' },
              { src: 'img/slide-2.jpg' },
              { src: 'img/slide-3.jpg' }
          ],
          timer: false,
          transition: [ 'zoomOut', ]
      });
    });  
   // $("#dialog").dialog({
        //autoOpen : false, modal : true, show : "blind", hide : "blind"
    //});
    $("#dialog").dialog({
        autoOpen: false,
        show: {
            effect: "blind",
            duration: 1000
        },
        modal: true, 
        hide: {
            effect: "explode",
            duration: 1000
        }
    });
    $("#btn-edit").click(function() {
        $("#dialog").dialog("open");
        return false;
    });
    $("#idForm").submit(function(e) {
        e.preventDefault(); 
        var form = $(this);
        var url = form.attr('action');
        
        $.ajax({
            type: "POST",
            url: url,
            data: form.serialize(), 
            success: function(data){
                let msg=$('.server-message');
                msg.show(); 
                msg.fadeOut (5000);
                $('#idForm').trigger("reset");
                $('#book-title').focus().select() 
            }
        });
    });
}) 
