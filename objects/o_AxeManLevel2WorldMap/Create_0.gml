roomgoto=r_AxeManLevel2
Sprite_Walk=s_HachetMan_Walk
Sprite_Idle=s_HachetMan_Idle

steponce=0
steponce1=0
footstepsound1=so_Hit
footstepsound2=so_Hit
found=0

myEmitter=audio_emitter_create()
audio_falloff_set_model(audio_falloff_linear_distance_clamped)
audio_emitter_falloff(myEmitter,100,1920/2,0.2)

if global.AxeManLevel2=1
{instance_destroy()}