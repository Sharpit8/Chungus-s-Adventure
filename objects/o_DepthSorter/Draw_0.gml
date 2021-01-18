
var dgrid = ds_depthgrid

var inst_num = instance_number(Parent_Depth)
ds_grid_resize(dgrid,2,inst_num)

var yy = 0; with(Parent_Depth){
	dgrid[# 0,yy] = id
	dgrid[# 1,yy] = y
	yy++
}

ds_grid_sort(dgrid,1,true)
var inst
yy= 0; repeat(inst_num){
	
	 inst = dgrid[# 0 ,yy]
	
	with(inst){
		draw_self()
		event_perform(ev_draw,0)
	}
	
	yy++
}