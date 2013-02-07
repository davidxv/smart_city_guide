TRIP = (function($,undefined){

	var history = [];

	var init = function(){
		_showPhoto("1",true);
	};

	var _showPhoto = function(id,savehistory){
		console.log("show");
		if(savehistory===true){
			history.push(id);
		}
		var backbutton = $("#"+id).find(".backbutton")[0];
		if (history.length<=1){
			$(backbutton).hide();
		} else {
			$(backbutton).show();
		}

		$('.wrapper_photo').hide();
		$('#' + id).show();
		if(phototrip_demo && phototrip_demo.photos && phototrip_demo.photos[id] && phototrip_demo.photos[id].pois){			
			var pois = phototrip_demo.photos[id].pois;
			for (var i = pois.length -1; i >= 0; i--) {
				var poi_id = _getId("image");
				$('#' + id).append("<img id='"+poi_id+"' destination_id='"+pois[i].destination_id+"' class='poi' src='/assets/phototrip/ball.png' style='position:absolute;left:"+pois[i].x+"px;top:"+pois[i].y+"px'/>");
				$("#"+poi_id).on("click", function(){
					var destination_id = $(this).attr("destination_id");
					_showPhoto(destination_id,true);
				});
			};
		}
	};

	var back = function(){
		console.log("back");
		if (history.length>0){
			var id = history.pop();
			if (history.length>0){
				id = history[history.length-1];
				_showPhoto(id,false);
			}
		}
	}

	var _id = 0;
	var _getId = function(prefix){
		return prefix + _id++;
	}

	return {
		init:           init,
		back: 			back
	};
    
}) (jQuery);