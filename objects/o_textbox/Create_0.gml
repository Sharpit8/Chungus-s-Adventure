
messages = ds_list_create()
messageID = 0
 
messageText =""
messageChar = 0
messageSpeedset = 0.4
messageSpeed = messageSpeedset
voiceinterval = 3
lettercatchup = 0
letter2 = ""
wankyness = 0.2

enum MSG {
	TEXT,
	NAME,
	Image,
	sound,
	font,
}




var _guiW = display_get_gui_width()
var _guiH = display_get_gui_height()

height = floor(_guiH * 0.20)
width = _guiW

x = 0
y = _guiH - height

padding = 8
messageCharlast = messageChar