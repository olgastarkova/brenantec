// Page "About"

$(document).ready(function () {
  $(".tab").on("click", function(e){
    // Change active tab
    $(".tab").removeClass('active');
    $(this).addClass('active');
    // Hide all tab-content (use class="hidden")
    $(".tab-content").addClass('hidden');
    // Show target tab-content (use class="hidden")
    $($(this).data('target')).removeClass('hidden');
  });

});



// Pages "Stages et Ateliers"

$(document).ready(function () {
  $(".alink").on("click", function(e){
    // Change active tab
    $(".alink").removeClass('active');
    $(this).addClass('active');
  });

});