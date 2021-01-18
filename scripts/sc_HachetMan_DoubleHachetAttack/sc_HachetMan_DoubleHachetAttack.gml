while global.selection=-1
{


var inst = instance_find(parent_Creature, irandom(instance_number(parent_Creature) - 1))

global.selection = inst

 if global.selection.team=team
 {global.selection=-1}
 
  if global.selection.hp<=0
 {global.selection=-1}
 
  if instance_exists(o_Bison)
{  if global.selection.taunt=0 and o_Bison.taunt>0 and o_Bison.hp>0
 {global.selection=-1}
}

}

if global.selection!=-1 and global.selection!=-2
{
if once=0
{ButtonDamagemult=0 once=1 speed=12 sprite_index=s_HachetMan_Walk
direction=point_direction(x-180,y,global.selection.x,global.selection.y)}

if instance_place(x-220,y,global.selection) and !instance_place(x-367,y,global.selection)
{
if once2=0
{speed=0 once2=1
sprite_index=s_HachetMan_DoubleHachetAttack image_index=0
}

if once3=0 and (floor(image_index)>=36)
{once3=1 

	
	with instance_create_layer(global.selection.x,global.selection.y,"DamageText",o_HitBox)
{damage=other.damage attackway="normal"
	if damage=0
	{word="Missed"}
	team=other.team
	}

	
}





	
	
	}
}