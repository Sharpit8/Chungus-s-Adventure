direction=point_direction(x,y,startx,starty)
speed=12
sprite_index=s_HachetMan_Walk
image_xscale=1

if startx-10 < x
{x=startx y=starty}



if startx div 1 = x div 1 and starty div 1 = y div 1
{states=states.HachetMan_Idle global.turning=-1 global.selection=-1  }