///get_key_name(code,distinguish)
// [Script] get_key_name
// [Purpose] get the human readable key name of the given key.
// [Input]
//  argument0 : key code (e.g. vk_shift)
//  argument1 : whether distinguish left and right modification key or not.
// [Return value]
//  Returns the key name.
// [Examples]
//  get_key_name(vk_up, false) returns "Up"
//  get_key_name(vk_lshift, true) will result in "Left Shift" while get_key_name(vk_lshift, false) results in "Shift."
global.__GetKeyName__ = external_define('KeyName.dll', 'GetKeyName', dll_stdcall, ty_string, 2, ty_real, ty_real);
return external_call(global.__GetKeyName__, argument0, argument1);
