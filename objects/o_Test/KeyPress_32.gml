if instance_place(x,y,o_WorldMapPlayer)
{if (!instance_exists(o_textbox)) {
	
	var _tb = instance_create_layer(0,0,"TextBox",o_textbox)
	
	var _list = _tb.messages
	for (var i=0; i<array_length_1d(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list,_arr);
	}
	
if instance_exists(_tb)
{with _tb
{voicesound = other.voicesound 
voiceinterval = 3}}
}
}
