#define get_key_name
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
if (!variable_global_exists('__GetKeyName__')) {
    // Define the DLL interface just once.
    // function GetKeyName(vkey, distinguish: Double): PChar; stdcall;
    global.__GetKeyName__ = external_define('KeyName.dll', 'GetKeyName', dll_stdcall, ty_string, 2, ty_real, ty_real);
}
// Call the DLL interface.
return external_call(global.__GetKeyName__, argument0, argument1);
#define key_to_ascii
// [Script] key_to_ascii
// [Purpose] get a character which is generated by the specified combination of keys.
// [Input]
//  argument0 : key code (e.g. ord('1'))
//  argument1 : whether the shift key is pressed or not.
// [Return value]
//  Returns a character. (When no character is generated, returns an empty string '')
// [Examples]
//  key_to_ascii(ord('1'), true) returns "!", while key_to_ascii(ord('1'), false) returns "1"
//  key_to_ascii(ord('8'), true) will return either "*" or "(", depending on the keyboard layout.
//  key_to_ascii(vk_f1, false) will result in an empty string "".
if (!variable_global_exists('__KeyToAscii__')) {
    // Define the DLL interface just once.
    // function KeyToAscii(vkey, shift: Double): PChar; stdcall;
    global.__KeyToAscii__ = external_define('KeyName.dll', 'KeyToAscii', dll_stdcall, ty_string, 2, ty_real, ty_real);
}
// Call the DLL interface.
return external_call(global.__KeyToAscii__, argument0, argument1);
#define ascii_to_key
// [Script] ascii_to_key
// [Purpose] get a combination of keys to generate the specified character.
// [Input]
//  argument0 : a character.
// [Return value]
//  Returns the key code to generate the specified character.
//  When it requires that the shift key is pressed, the result becomes negative.
//  When there is no key combination for the given character, returns 0.
// [Examples]
//  ascii_to_key("8") return ord("8").
//  ascii_to_key("!") will return -33, which is equal to -ord("1").
if (!variable_global_exists('__AsciiToKey__')) {
    // Define the DLL interface just once.
    // function AsciiToKey(ascii: PChar): Double; stdcall;
    global.__AsciiToKey__ = external_define('KeyName.dll', 'AsciiToKey', dll_stdcall, ty_real, 1, ty_string);
}
// Call the DLL interface.
return external_call(global.__AsciiToKey__, argument0);