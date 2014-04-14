//= require jquery/dist/jquery
//= require masonry/dist/masonry.pkgd
//= require imagesloaded/imagesloaded
//= require colorbox/jquery.colorbox

var gallery, msnry, imgLoad, colorbox_options;

gallery = function(container, options) {
  imgLoad = imagesLoaded(container);
  imgLoad.on('done', function() {
    document.querySelector('#spinner').style.display = 'none';
    container.style.display = 'block';
    msnry = new Masonry( container, options );
  });
}

colorbox_options = {
  rel:'gallery',
  transition:"none",
  height:"75%",
  closeButton: false,
  previous: "",
  next: "",
  current: ""
};
