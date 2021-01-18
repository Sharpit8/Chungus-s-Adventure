if instance_exists(o_camera)
{x=o_camera.x
y=o_camera.y}

if instance_exists(o_WorldMapCamera)
{x=o_WorldMapCamera.x
y=o_WorldMapCamera.y}

image_alpha=image_alpha-0.005

if image_alpha<=0
{instance_destroy()}