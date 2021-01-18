image_index = 0;
image_speed = 1;


global.turning=-1
global.selection=-1




x=global.playerx
y=global.playery

if room=r_StartForest
{x=11000}

if global.InWorld1once=0 and room=r_WorldMap1
{x=300 y=1080/2 global.playermove=0}


intimer=3

audio_listener_orientation(0,1,0,0,0,1)
global.mainEmitter=audio_emitter_create()


key_up = vk_up
key_down = vk_down
key_left = vk_left
key_right = vk_right

key_up_alt = ord("W")
key_down_alt = ord("S")
key_left_alt = ord("A")
key_right_alt = ord("D")

movement_speed = 8
facing_angle = 0

axis_x = 0
axis_y = 0
axis_x_max = movement_speed
axis_y_max = movement_speed

axis_x_acceleration = 4
axis_y_acceleration = 4
axis_x_reasitution = 1.3
axis_y_reasitution = 1.3

steponce=0
steponce1=0
footstepsound1=so_Hit
footstepsound2=so_Hit

myEmitter=audio_emitter_create()
audio_falloff_set_model(audio_falloff_linear_distance_clamped)
audio_emitter_falloff(myEmitter,100,1920/2,0.2)


