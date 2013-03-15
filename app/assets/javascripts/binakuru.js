
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
  function displayResult()
  {
    var x=document.getElementById("checkGuides").defaultChecked;
    alert(x);
  }

function showContentRoutes() {
  element = document.getElementById("content_routes");
  check = document.getElementById("checkRoutes").defaultChecked;
  if (check.checked) {
    element.style.display='block';
  }
  else {
    element.style.display='none';
  }
}

function showContentPoints() {
  element = document.getElementById("content_points");
  check = document.getElementById("checkPoints").defaultChecked;
  if (check.checked) {
    element.style.display='block';
  }
  else {
    element.style.display='none';
  }
}


$(function() {
  $( ".button-resizable" ).click(function(){
    $( ".minimized" ).switchClass( "minimized", "expanded", 1000 );
    $( ".expanded" ).switchClass( "expanded", "minimized", 1000 );
    return false;
  });
});

var x=document.getElementById("myCheck").defaultChecked;