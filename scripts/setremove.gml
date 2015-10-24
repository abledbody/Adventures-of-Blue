/// setremove(oldarray, item_to_delete)
var i = 0;
var ni = 0;
var found = 0;
repeat(array_length_1d(argument0))
{
    if(argument0[i] != argument1 || found)
    {
        newarr[ni] = argument0[i];
        found = 1;
        ni++;
    }
}
return newarr;