


if flash>0
{flash=flash-0.1
	
	shader_set(sh_flash)
sh_alpha=shader_get_uniform(sh_flash, "_alpha")
shader_set_uniform_f(sh_alpha,flash)
draw_self()
shader_reset()}

var symboldraw=0
while ds_list_size(Effects)>symboldraw
{
draw_sprite(ds_list_find_value(Effects,symboldraw),0,x-60+(symboldraw*40),y+draweffectsgap)

if instance_place(x-60+(symboldraw*40),y+draweffectsgap,o_mouse)
{


if ds_list_find_value(Effects,symboldraw)=s_SymbolTaunt
{
draw_set_color(c_black)
draw_rectangle(mouse_x,mouse_y,mouse_x+300,mouse_y-100,c_black)
draw_set_color(c_white)
draw_set_font(fo_Symbol)
draw_text_ext(mouse_x+5,mouse_y-100,"All Enemies will attack this unit until " + string(taunt div 1) + " turn passes.",20,300)
draw_set_color(c_black)
}


}
symboldraw=symboldraw+1
}