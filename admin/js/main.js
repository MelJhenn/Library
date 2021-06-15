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
