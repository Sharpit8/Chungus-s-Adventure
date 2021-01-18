
speed=0
image_xscale=1

if keyboard_check_pressed(ord("D")) and blocktimer<=0 and sprite_index!=s_Bison_Duck
{blocktimer=blocktimermax image_speed=0 image_index=0}



if blocktimer>0
{sprite_index=s_Bison_Block}

if blocktimer<=0 and sprite_index!=s_Bison_Duck
{sprite_index=s_Bison_Idle image_speed=1 }

if keyboard_check_pressed(ord("S")) and sprite_index!=s_Bison_Duck
{sprite_index=s_Bison_Duck blocktimer=0 image_speed=1  image_index=0}

if dead=1
{sprite_index=s_Bison_Dead}

