var _arr = messages[| messageID]

var _text = _arr[MSG.TEXT]

messageText = string_copy(_text,1,messageChar)

if (messageChar <= string_length(_text)) messageChar += messageSpeed 

if (messageChar <= string_length(_text)) messageChar += messageSpeed

else if (keyboard_check_pressed(vk_space)) {
	
	if (messageID < ds_list_size(messages) - 1) {
		messageID++
		messageChar = 0
		messageSpeed = messageSpeedset
		lettercatchup = 0
		
	}
	
	else {
		instance_destroy()
	}
}

voicesounduse = _arr[MSG.sound]
while lettercatchup != messageChar div 1
{var letter2 = string_char_at(messageText,lettercatchup )
lettercatchup =lettercatchup + 1
if messageCharlast div voiceinterval != messageChar div voiceinterval and messageChar!=0 and letter2 != " "
{audio_sound_pitch(voicesounduse,random_range(1 - wankyness,1 + wankyness))
	messageCharlast = messageChar audio_play_sound(voicesounduse,0,0)
	}
}
	
if (messageChar <= string_length(_text)) and (keyboard_check_pressed(vk_space)) and messageChar div 1 != 0 and global.CanSkipText=1
{messageSpeed = messageSpeed * 4}

if (keyboard_check_pressed(vk_escape)) and global.CanTextQuit=1
{instance_destroy()}