

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
{ButtonDamagemult=0 once=1 speed=12 sprite_index=s_AxeMan_walk
direction=point_direction(x-1300,y+200,global.selection.x,global.selection.y)}

if instance_place(x-1300,y,global.selection)
{
if once2=0
{speed=8 once2=1
sprite_index=s_AxeMan_Charge image_index=0 direction=point_direction(x,y,global.selection.x,global.selection.y)
}}

if once3=0 and instance_place(x-400,y,global.selection)
{once3=1
sprite_index=s_AxeMan_ChargeEnd

}

if once2=1 and once3=0
{speed=speed+0.15}

if once3=1 
{speed=speed-1}

if speed<0
{speed=0}

if once4=0 and once3=1
{once4=1 

	
	with instance_create_layer(global.selection.x,global.selection.y,"DamageText",o_HitBox)
{damage=other.damage attackway="thrust"
	if damage=0
	{word="Missed"}
	team=other.team
	}

	
}





	
	
	}
