depth = -9999;

//textbox parameters
textbox_width = 200;
textbox_height = 64;
border = 8;
line_sep = 12;
line_width = textbox_width - border * 2;
textb_spr = spr_textbox;
textb_img = 0;
textb_img_speed = 0;
 textb_spr_w = sprite_get_width(textb_spr);
 text_spr_h = sprite_get_height(textb_spr);


//text
page = 0;
page_number = 0;
text[0] = "......";
text[1] = "My head hurts...";
text[2] = "Who am I?";
text[3] = "Is this my room?";
text[4] = "......";
text[5] = "Maybe I should look around a bit.";

text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

setup = false;

