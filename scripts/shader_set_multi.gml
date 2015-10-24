///shader_set_multi(array)
array=argument0;
var i=0;
repeat(array_length_1d(array))
{
    shader_set(i);
    i++;
}