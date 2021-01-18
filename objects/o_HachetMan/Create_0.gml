sc_CreatureCreate()

maxhp=90

if room=r_AxeManLevel3
{maxhp=45}
hp=maxhp
turnspeed=10
attackmult=1
spattackmult=1
turn=1
turnnow=0
startx=x
starty=y
once=0
once2=0
once3=0
once4=0
word="Missed"
team=-1
me=o_HachetMan
blocktimer=0
attacktimes=0
flash=0
damage=6
potentaildamage=0
hplast=hp
hoveronce=0
speakturn=0
donetalking=1
speakdelay=0

states=states.HachetMan_Idle

movegap=300

voicesound = so_AxeManVoice
font = fo_AxeMan


