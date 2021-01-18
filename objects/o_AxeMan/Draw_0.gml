draw_sprite_ext(s_shadow, 0 , x, y, 1.1*image_xscale, 1, 0, c_white,0.3)
draw_self()

//draw_text(x,y+90,states)

draw_healthbar(x-80,y+10,x+80,y+30,(hp/maxhp)*100,c_black,c_red,c_green,-1,1,1)

draw_set_font(fo_Hp)
draw_set_color(c_white)
draw_text_ext(x+85,y,string(hp div 1) + "/" + string(maxhp div 1),1,1000)


if (position_meeting(mouse_x, mouse_y, id)) and global.selection=-2 and hp>0
{shader_set(sh_glowwhite)
draw_self()
shader_reset()
}

if instance_exists(o_PrinceChungus)
{if (position_meeting(mouse_x, mouse_y, id)) and global.selection=-2 and global.turning=o_PrinceChungus and hp>0
{potentaildamage=o_PrinceChungus.damage}
}

if instance_exists(o_Bison)
{if (position_meeting(mouse_x, mouse_y, id)) and global.selection=-2 and global.turning=o_Bison and hp>0
{potentaildamage=o_Bison.damage}
}

if global.selection!=-2 or !(position_meeting(mouse_x, mouse_y, id))
{potentaildamage=0}

if potentaildamage>0
{
	draw_set_alpha(0.6)
draw_set_color(c_red)
draw_healthbar(x-79+((hp/maxhp)*160),y+10,x-81+(((hp/maxhp)*160)-(potentaildamage/maxhp*160)),y+30,100,c_black,c_red,c_red,1,0,0)
draw_set_alpha(1)

draw_set_font(fo_Hp)
draw_set_color(c_red)
draw_text_ext(x+160,y,"-" + string(potentaildamage div 1),1,1000)
}


sc_CreatureDraw()