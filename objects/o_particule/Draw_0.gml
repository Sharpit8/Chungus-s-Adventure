draw_self()




	shader_set(sh_darken)
sh_alpha=shader_get_uniform(sh_darken, "_alpha")
shader_set_uniform_f(sh_alpha,darken)
draw_self()
shader_reset()