draw_self()

draw_set_font(fo_Cost)
draw_set_color(c_lime)
draw_text_ext(x+5,y+35,"Cost" + ":" + string(staminacost div 1),1,1000)

draw_set_font(fo_Cost)
draw_set_color(c_white)
draw_text_ext(x-130,y+35,"Hp" + ":+" + string(hpgain div 1),1,1000)


if(position_meeting(mouse_x, mouse_y, id)) and global.selection=-1 and o_Bison.states=o_Bison.states.Bison_Idle
{shader_set(sh_glowwhite)
draw_self()
shader_reset()

o_Bison.damage=damage
o_Bison.staminacost=staminacost
o_Bison.hpgain=hpgain
o_Bison.hpgaintimer=o_Bison.hpgaintimermax

draw_set_color(c_black)
draw_rectangle(1000,906,1920,720,0)

draw_set_color(c_white)
draw_set_font(fo_Cost)
draw_text_ext(1020,720,attackname,50,1920-1020)

draw_set_font(fo_Chungus)
draw_text_ext(1020,770,Description,30,1920-1020)


}

if  o_Bison.stamina<staminacost or global.selection!=-1
{shader_set(sh_glowblack)
draw_self()
shader_reset()}