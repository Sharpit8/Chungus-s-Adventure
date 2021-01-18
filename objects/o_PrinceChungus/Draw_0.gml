draw_sprite_ext(s_shadow, 0 , x, y, 1.1*image_xscale, 1, 0, c_white,0.3)
draw_self()

//draw_text(x,y+60,ds_list_find_value(global.turnorder,global.turnturn))
//draw_text(x,y+90,states)




draw_healthbar(x-80,y+10,x+80,y+30,(hp/maxhp)*100,c_black,c_red,c_green,-1,1,1)

draw_set_font(fo_Hp)
draw_set_color(c_white)
draw_text_ext(x+85,y,string(hp div 1) + "/" + string(maxhp div 1),1,1000)


draw_healthbar(x-80,y+35,x+80,y+45,(stamina/staminamax)*100,c_black,c_lime,c_lime,-1,1,1)

draw_set_font(fo_Hp)
draw_set_color(c_white)
draw_text_ext(x+85,y+20,string(stamina div 1) + "/" + string(staminamax div 1),1,1000)

if staminacost>0
{
draw_set_alpha(0.6)
draw_set_color(c_red)
draw_healthbar(x-79+((stamina/staminamax)*160),y+35,x-80+(((stamina/staminamax)*160)-(staminacost/staminamax*160)),y+45,100,c_black,c_red,c_red,1,0,0)
draw_set_alpha(1)

draw_set_font(fo_Hp)
draw_set_color(c_red)
draw_text_ext(x+160,y+20,"-" + string(staminacost div 1),1,1000)
}

if staminacost<0
{
draw_set_alpha(0.6)
draw_set_color(c_lime)
draw_healthbar(x-79+((stamina/staminamax)*160),y+35,x-80+(((stamina/staminamax)*160)+(-staminacost/staminamax*160)),y+45,100,c_black,c_lime,c_lime,1,0,0)
draw_set_alpha(1)

draw_set_font(fo_Hp)
draw_set_color(c_lime)
draw_text_ext(x+160,y+20,"+" + string(staminacost div -1),1,1000)
}

if hpgain>0
{
draw_set_alpha(0.6)
draw_set_color(c_lime)
draw_healthbar(x-79+((hp/maxhp)*160),y+10,x-80+(((hp/maxhp)*160)+(hpgain/maxhp*160)),y+30,100,c_black,c_lime,c_lime,1,0,0)
draw_set_alpha(1)

draw_set_font(fo_Hp)
draw_set_color(c_lime)
draw_text_ext(x+160,y-5,"+" + string(hpgain div 1),1,1000)
}

sc_CreatureDraw()