var prevButton = '<button type="button" data-role="none" class="slick-prev" aria-label="prev"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" version="1.1"><path fill="#7AA7AD" d="M 16,16.46 11.415,11.875 16,7.29 14.585,5.875 l -6,6 6,6 z" /></svg></button>',
    nextButton = '<button type="button" data-role="none" class="slick-next" aria-label="next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="#FAFBEA" d="M8.585 16.46l4.585-4.585-4.585-4.585 1.415-1.415 6 6-6 6z"></path></svg></button>';

$('.single-item').slick({
  infinite: true,
  dots: true,
  autoplay: true,
  autoplaySpeed: 25000,
  speed: 2000,
  cssEase: 'ease-in-out',
  prevArrow: prevButton,
  nextArrow: nextButton
});

$('.quote-container').mousedown(function(){
  $('.single-item').addClass('dragging');
});
$('.quote-container').mouseup(function(){
  $('.single-item').removeClass('dragging');
});