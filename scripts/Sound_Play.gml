///Sound_Play(Index,VolumeMultiplier,pitchrangex1,pitchrangex2)
var sound=FMODSoundPlay(argument0,0);
FMODInstanceSetVolume(sound,global.soundvolume*argument1);
FMODInstanceSetPitch(sound,random_range(argument2,argument3));