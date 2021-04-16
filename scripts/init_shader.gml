if (get_player_color(player) == 9) {
	var rgb = make_color_rgb(get_color_profile_slot_r(9, 0), get_color_profile_slot_g(9, 0), get_color_profile_slot_b(9, 0));
	var hsv = make_color_hsv((color_get_hue(rgb) + 1)% 256, color_get_saturation(rgb), color_get_value(rgb));
	set_color_profile_slot(9, 0, color_get_red(hsv), color_get_green(hsv), color_get_blue(hsv));
	hsv = make_color_hsv(color_get_hue(hsv), color_get_saturation(hsv) - 50, color_get_value(hsv) - 50);
	set_color_profile_slot(9, 2, color_get_red(hsv), color_get_green(hsv), color_get_blue(hsv));
	hsv = make_color_hsv(color_get_hue(hsv), color_get_saturation(hsv)- 50, color_get_value(hsv) - 100);
	set_color_profile_slot(9, 3, color_get_red(hsv), color_get_green(hsv), color_get_blue(hsv));
}
else if (get_player_color(player) == 11) {
	for(i = 0; i < 8; i++) {
		set_character_color_shading(i, 0);
	}
}