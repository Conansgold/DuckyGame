attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_texcoord;
varying vec4 v_vColour;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    v_texcoord = in_TextureCoord;
    v_vColour = in_Colour;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;
varying vec4 v_vColour;

uniform float fade;

void main()
{    
    vec4 col = texture2D(gm_BaseTexture, v_texcoord);
// lum hard coded values are intended to compensate the human eye sensibility to certain colors
// if I'm not mistaken
    vec3 lum = vec3(0.299, 0.587, 0.114);
    float gray = dot(col.rgb, lum);
// took me a while to figure out how to mix colors with gray... 
    gl_FragColor = v_vColour * vec4(mix(col.rgb,vec3(gray),fade), col.a);    
}
