
window_set_fullscreen(true)

audio_pause_sound(so_Burning)
audio_pause_sound(so_Burning)
audio_pause_sound(so_BagadenTheme)



audio_pause_sound(so_WoodLandBattleSong)

if audio_is_paused(so_WoodLandSong)
{audio_resume_sound(so_WoodLandSong)}

if !audio_is_playing(so_WoodLandSong) 
{audio_play_sound(so_WoodLandSong,0,1)}
