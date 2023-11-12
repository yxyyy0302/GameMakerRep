textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 144;

accept_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

//setup
if setup == false
	{
		setup = true;
		draw_set_font(global.font_main);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		
		//loop through the pages
		page_number = array_length(text);
		for (var p = 0; p < page_number; p++){
			
			//store the number of characters on each page
			text_length[p] = string_length(text[p]);
			
			//get the x position for the textbox
			
			//no character (center the textbox)
			text_x_offset[p] = 44;
		}
		
}

//typing the text
if draw_char < text_length[page]{
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//flip through pages
if accept_key {
	//if typing is done
	if draw_char == text_length[page]{
		
		//next page
		if page < page_number - 1 {
			page++;
			draw_char = 0;
		} 
		//destroy textbox
		else {
			instance_destroy();
		}
		
	}
	
	//if typing isn't done
	else {
		draw_char = text_length[page];
	}
}

//draw the textbox
textb_img += textb_img_speed;


//back of the textbox
draw_sprite_ext(textb_spr, textb_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/textb_spr_w, textbox_height/textb_spr_h, 0,  c_white, 1);

//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);