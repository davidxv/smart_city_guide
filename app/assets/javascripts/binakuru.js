function showContentGuides() {
  element = document.getElementById("item-guides");
  check = document.getElementById("checkGuides");
  if (check.checked) {
    element.style.display='block';
  }
  else {
    element.style.display='none';
  }
}

function showContentRoutes() {
  element = document.getElementById("item-routes");
  check = document.getElementById("checkRoutes");
  if (check.checked) {
    element.style.display='block';
  }
  else {
    element.style.display='none';
  }
}

function showContentPoints() {
  element = document.getElementById("item-points");
  check = document.getElementById("checkPoints");
  if (check.checked) {
    element.style.display='block';
  }
  else {
    element.style.display='none';
  }
}


function displayResult() {
  var x=document.getElementById("checkGuides").defaultChecked;
  alert(x);
}


$(function() {
  $( ".button-resizable" ).click(function(){
    $( ".minimized" ).switchClass( "minimized", "expanded", 1000 );
    $( ".expanded" ).switchClass( "expanded", "minimized", 1000 );
    return false;
  });
});

//popover
$(document).ready(function(){
  $('#logIn').popover({ 
    html : true,
    content: function() {
      return $('#popover_content_wrapper').html();
    }
  });
});