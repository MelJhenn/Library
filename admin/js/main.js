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
})  