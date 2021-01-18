draw_sprite_ext(s_shadow, 0 , x, y, 1.1*image_xscale, 1, 0, c_white,0.3)
draw_self()

if instance_exists(o_WorldMapPlayer)
{if instance_place(x,y,o_WorldMapPlayer)
{

draw_sprite(s_TextBubble,0,x,y-450)

}
}