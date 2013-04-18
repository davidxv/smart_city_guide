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

function showContentPlaces() {
  element = document.getElementById("item-places");
  check = document.getElementById("checkPlaces");
  if (check.checked) {
    element.style.display='block';
  }
  else {
    element.style.display='none';
  }
}

// Remove new comment avatar
$(function() {
  $(".new_comment").find('div.avatar').remove();
});


function displayResult() {
  var x=document.getElementById("checkGuides").defaultChecked;
  alert(x);
}
// items trips

$(function() {
  $( ".button-resizable" ).click(function(){
    var newDiv = $(this).closest(".item-object");
    if (newDiv.hasClass("minimized")) {
      newDiv.switchClass( "minimized", "expanded", 1000 );
    } else {
      newDiv.switchClass( "expanded", "minimized", 1000 );
    }
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

$(document).ready(function(){
  $('.btn-add').popover({ 
    html : true,
    content: function() {
      return $('#popover_add').html();
    }
  });
});


// $(document).ready(function(){
//   $('.btn-add').each(function () {
//     $(this).popover({ 
//       html : true,
//       content: function() {
//         return $('#popover_add').html();
//       }
//     });
//   });
// });


// $('body').on('click', function (e) {
//   $('.btn-add').each(function () {
//     //the 'is' for buttons that triggers popups
//     //the 'has' for icons within a button that triggers a popup
//     if (!$(this).is(e.target) && $(this).has(e.target).length === 0 && $('.popover').has(e.target).length === 0) {
//       $(this).popover('hide');
//     }
//   });
// });

// filter

$(function() {
 $( "#button" ).click(function(){
   $(".newClass" ).switchClass( "newClass", "anotherNewClass", 1000 );
   $(".anotherNewClass" ).switchClass( "anotherNewClass", "newClass", 1000 );
   if($("#button").attr("class")==="buttonFilter") {

    $("#button").removeClass("buttonFilter");
    $("#button").addClass("buttonFilterActive");
    $("#button").html("x");
  }
  else if ($("#button").attr("class")==="buttonFilterActive") {
    $("#button").removeClass("buttonFilterActive");
    $("#button").addClass("buttonFilter");
    $("#button").html("filter");
  }
  return false;
});
});

//tooltip
$(document).ready(function() {
    $("li[rel='tooltip']").tooltip({'placement': 'top'});
});



//centrar verticalmente textos
$(document).ready(function(e){
  $('.vAling').vAlign();
});

//map mode
$(function() {
  $(".btn_map").click(function(){
    if ($(".info_photo").css("display") == "block") {
      $(".info_photo").css("display", "none");
    } else {
      $(".info_photo").css("display", "block");
    }
    return false;
  });
});