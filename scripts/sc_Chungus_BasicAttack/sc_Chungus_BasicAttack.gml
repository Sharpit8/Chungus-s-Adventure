
if global.selection!=-1 and global.selection!=-2
{
if once=0
{ButtonDamagemult=0 once=1 speed=12 sprite_index=s_Chungus_Walk image_speed=1
direction=point_direction(x,y,global.selection.x,global.selection.y)}

if instance_place(x+90,y,global.selection)
{
if once2=0
{speed=0 once2=1
sprite_index=s_Chungus_BasicAttack image_index=0 
}

if once3=0 and (floor(image_index)>=52)
{once3=1 

	
	with instance_create_layer(global.selection.x,global.selection.y,"DamageText",o_HitBox)
{damage=other.damage attackway="normal"
	if damage=0
	{word="Missed"}
	team=other.team
	}

	
}


if sprite_index=s_Chungus_BasicAttack and (floor(image_index)<=49)
{
	
	}


	
	
	}
}