$(function() {
		$( "#slider" ).slider({
			value:10,
			min: 10,
			max: 100,
			step: 10,
			slide: function( event, ui ) {
				$( "#no_of_shrs" ).val(ui.value );
			}
		});
		$( "#no_of_shrs" ).val($( "#slider" ).slider( "value" ) );
	});