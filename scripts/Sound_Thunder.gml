if random_range(0,1)=0
var thunder=FMODSoundPlay(global.Thunder1sound,0);
else
var thunder=FMODSoundPlay(global.Thunder2sound,0);
FMODInstanceSetVolume(thunder,global.soundvolume);
FMODInstanceSetPitch(thunder,random_range(0.7,1.1));