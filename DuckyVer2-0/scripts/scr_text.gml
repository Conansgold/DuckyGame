///scr_text("Text",speed,x,y,minTime);

txt = instance_create(argument2,argument3,obj_text);
with (txt)
{
    padding = 16;
    maxlength = view_wview[0]/2.5;
    text = argument0;
    spd = argument1;
    font = fnt_lunch;
    substring = text;
    _start = 0;
    _end = string_length(text)-1;
    more = false;
    xx = argument2;
    yy = argument3;
    
    alr = argument4;
    
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2), maxlength);
    text_height = string_height_ext(text,font_size+(font_size/2), maxlength);
    while(text_height > 150)
    {
      more = true;
      _start++;
      _end--;
      text = string_copy(text,0,_end);
      text_height = string_height_ext(text,font_size+(font_size/2), maxlength);
    }
    
    substring = string_copy(substring,_start,string_length(substring));
    text_length = string_length(text);
    
    boxwidth = text_width + (padding*2);
    boxheight = text_height + (padding*2);
    //x = boxwidth/2;
    //y = boxheight+(padding*2);
}
