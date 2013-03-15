function showContentGuides() {
  element = document.getElementById("content_guides");
  check = document.getElementById("checkGuides");
  if (check.checked) {
    element.style.display='block';
  }
  else {
    element.style.display='none';
  }
}

function showContentRoutes() {
  element = document.getElementById("content_routes");
  check = document.getElementById("checkRoutes");
  if (check.checked) {
    element.style.display='block';
  }
  else {
    element.style.display='none';
  }
}

function showContentPoints() {
  element = document.getElementById("content_points");
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