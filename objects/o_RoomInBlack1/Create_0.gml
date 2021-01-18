if instance_exists(o_camera)
{x=o_camera.x
y=o_camera.y}

if instance_exists(o_WorldMapCamera)
{x=o_WorldMapCamera.x
y=o_WorldMapCamera.y}

image_xscale=90
image_yscale=90

if global.InWorld1once=1
{instance_destroy()}

