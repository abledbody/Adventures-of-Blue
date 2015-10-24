if random_range(0,1)=0
var clipclop=FMODSoundPlay(global.Clipclop1sound,0);
else
var clipclop=FMODSoundPlay(global.Clipclop2sound,0);
FMODInstanceSetVolume(clipclop,global.soundvolume*0.5);
FMODInstanceSetPitch(clipclop,random_range(1.5,2));