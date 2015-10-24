//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;

uniform sampler2D s_multitex;
uniform float glow_boost;

void main()
{

vec4 color1 = texture2D(gm_BaseTexture,v_texcoord);
vec4 color2 = texture2D(s_multitex,v_texcoord);
color2 *= glow_boost;
//color1.rgb = (color1.rgb * 0.5) + 0.5; //soft dream lighting
vec3 blendcolor = (color1.rgb + color2.rgb) - (color1.rgb * color2.rgb); //screen blending pixel = (src + dst) - (src * dst)
//vec3 blendcolor = color1.rgb + color2.rgb; //additive blending (pixel = src + dst)

gl_FragColor = vec4(blendcolor, color1.a);
}
