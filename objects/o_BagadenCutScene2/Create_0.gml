image_xscale=-1

if global.CutScene[2]=3
{o_WorldMapCamera.XOffSet=602
	
	}
Sprite_Walk=s_Bagaden_SideWalk
Sprite_Idle=s_Bagaden_FrontIdle

steponce=0
steponce1=0
footstepsound1=so_Hit
footstepsound2=so_Hit
found=0

myEmitter=audio_emitter_create()
audio_falloff_set_model(audio_falloff_linear_distance_clamped)
audio_emitter_falloff(myEmitter,100,1920/2,0.2)
roomgoto=r_AxeManLevel4

once=0