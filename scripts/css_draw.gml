var num_colors = 12;
var name = "";
var color;
var version = "V1.45";

var frames = get_color_profile_slot_r(99, 0);
var seconds = get_color_profile_slot_g(99, 0);

frames++;
if (frames % 60 == 0) seconds++;

set_color_profile_slot(99, 0, frames, seconds, 0);

switch(get_player_color(player)) {
	case 0:
		name = "Default";
		color = c_ltgray;
		break;
	case 1:
		name = "Blue";
		color = c_teal;
		break;
	case 2:
		name = "Red";
		color = c_red;
		break;
	case 3:
		name = "Green";
		color = c_green;
		break;
	case 4:
		name = "Black";
		color = c_gray;
		break;
	case 5:
		name = "Purple";
		color = c_purple;
		break;
	case 6:
		name = "Dark Meta Knight";
		color = c_dkgray;
		break;
	case 7:
		name = "Galacta Knight";
		color = c_fuchsia;
		break;
	case 8:
		name = "Morpho Knight";
		color = c_maroon;
		break;
	case 9:
		name = "Rainbow";
		color = make_color_rgb(get_color_profile_slot_r(9, 0), get_color_profile_slot_g(9, 0), get_color_profile_slot_b(9, 0));
		init_shader();
		break;
	case 10:
		name = "Abyss";
		color = c_purple;
		init_shader();
		break;
	case 11:
		name = "Early Access";
		color = make_color_rgb(136, 176, 16);
		init_shader();
		break;
}

//Draw symbols
shader_end();
if (get_player_color(player) >= 6 && get_player_color(player) <= 9) draw_sprite_ext(asset_get("prem_skin_spr"), 0, x + 208, round(y + 144), 2, 2, 0, c_white, 1);
else if (get_player_color(player) = 10) draw_sprite_ext(asset_get("prem_skin_spr"), 3, x + 208, round(y + 144), 2, 2, 0, c_white, 1);
else if (get_player_color(player) = 11) draw_sprite_ext(asset_get("prem_skin_spr"), 2, x + 208, round(y + 144), 2, 2, 0, c_white, 1);

//draw_debug_text(x + 6, round(y + 210), `Seconds: ${seconds}   Frames: ${frames}`);

draw_set_alpha(3 - frames / 150);
draw_debug_text(x + 10, round(y + 43), version);
draw_set_alpha(1);

draw_debug_text(x + 10, round(y + 129), name);
draw_text_color(x + 10, round(y + 129), name, color, color, color, color, 1);

//Draw rectangles based on number of colors
draw_rectangle_color(x + 10, (y + 143), x + 209, (y + 151), c_black, c_black, c_black, c_black, false);

var rect_x = x + 9;
var rect_width = floor(160 / num_colors) - 3;
var rect_color;
for (i = 0; i < num_colors; ++i) {
	if (i == get_player_color(player)) rect_color = c_white;
	else rect_color = c_gray;
	draw_rectangle_color(rect_x, round(y + 145), rect_x + rect_width, round(y + 149), rect_color, rect_color, rect_color, rect_color, false);
	rect_x += rect_width + 3;
}

if (y > 320) set_color_profile_slot(99, 0, 0, 0, 0);