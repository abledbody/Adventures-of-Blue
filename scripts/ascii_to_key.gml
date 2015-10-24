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
global.__AsciiToKey__ = external_define('KeyName.dll', 'AsciiToKey', dll_stdcall, ty_real, 1, ty_string);
// Call the DLL interface.
return external_call(global.__AsciiToKey__, argument0);
