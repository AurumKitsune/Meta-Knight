draw_indicator = false;
switch (attack) {
	case AT_JAB:
		if (window == 2 || window == 4) clear_button_buffer(PC_ATTACK_PRESSED);
		break;
	

	case AT_DATTACK:
		if (has_rune("B") && window != 1) can_jump = true;
		break;
	
	case AT_FTILT:
		if (get_window_value(AT_FTILT, window, AG_WINDOW_CANCEL_TYPE) == 1 && window_timer > get_window_value(AT_FTILT, window, AG_WINDOW_CANCEL_FRAME)
			&& is_attack_pressed(DIR_ANY)) {
				window++;
				window_timer = 0;
		}
		if (window == 2 || window == 4) {
			clear_button_buffer(PC_ATTACK_PRESSED);
			clear_button_buffer(PC_LEFT_STICK_PRESSED);
			clear_button_buffer(PC_RIGHT_STICK_PRESSED);
			clear_button_buffer(PC_UP_STICK_PRESSED);
			clear_button_buffer(PC_DOWN_STICK_PRESSED);
		}
		break;
	
	
	case AT_NSPECIAL:
		can_fast_fall = false;
		can_wall_jump = true;
		
		if (window == 1) vsp /= 2;
		
		if (window == 2) {
			used_nspecial = true;
			if (window_timer == 1 && has_rune("L")) soft_armor = 12;

			if (!hitpause && window_timer % 4 == 0 && !has_rune("N")) create_hitbox(AT_NSPECIAL, 1, x + 32 * spr_dir, y - 36);
			
			var tornado_hsp_max = 6;
			var tornado_hsp_accel = 0.45;
			var tornado_vsp_accel = 0.25;

			if (!joy_pad_idle) hsp += lengthdir_x(tornado_hsp_accel, joy_dir);
			else hsp /= 1 + tornado_hsp_accel;
			
			hsp = clamp(hsp, -tornado_hsp_max, tornado_hsp_max);
			
			if (down_down) vsp = fast_fall;
			else if (special_down) vsp -= tornado_vsp_accel;
		}
		
		if (window == 3 && window_timer == 1) vsp /= 2;
		break;
	
	
	case AT_FSPECIAL:
		if (window == 1 && window_timer == 1) was_aerial = false;
		
		if (window == 2 && window_timer == 1) create_hitbox(AT_FSPECIAL, 1 + has_rune("H"), x + 32 * spr_dir, y - 36);
		
		if (has_rune("C") && was_aerial && !free) window = 3;
		if (free) was_aerial = true;
		break;
	
	
	case AT_FSPECIAL_2:
		can_fast_fall = false;
		
		if (window == 1) times_through = 0;
		
		if (window == 2 && window_timer == 1) {
			can_wall_jump = true;
			times_through++;
			if (times_through > 5) {
				window = 3;
				window_timer = 0;
			}
		}
		break;
	
	
	case AT_USPECIAL:
		used_uspecial = true;
		can_fast_fall = false;
		
		if (window < 3 && has_rune("D")) super_armor = true;
		else super_armor = false;
		
		if (window > 5) can_wall_jump = true;
		break;
	
	
	case AT_DSPECIAL:
		can_fast_fall = false;
		can_move = false;
		used_dspecial = true;
		if (window == 1 && window_timer == 1) flipper_value = 0;
		
		if (window == 2) {
			var cape_hsp_accel = 1.0 + has_rune("E") * 0.25;
			var cape_vsp_accel = 0.75;

			fall_through = true;
			draw_indicator = false;
			if (!joy_pad_idle) {
				hsp += lengthdir_x(cape_hsp_accel, joy_dir);
				vsp += lengthdir_y(cape_vsp_accel, joy_dir);
			}
			else {
				hsp *= .5;
				vsp *= .5;
			}
		}
		if ((window == 2 && window_timer >= 12 && special_pressed) || (window == 3 && special_down)) {
			draw_indicator = true;
			window = 4;
			window_timer = 0;
		}
		if (window == 4 && window_timer == 1 && has_hit_player) spr_dir *= -1;
		if (window < 6 && window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH) - 1) {
			window++;
			window_timer = 0;
		}
		
		if (window > 3) can_wall_jump = true;
		break;
	
	
	case AT_TAUNT:
		draw_indicator = false;
		move_cooldown[AT_TAUNT] = 5;
		
		if (special_pressed) use_drillrush = !use_drillrush;
		
		if (use_drillrush == 1 && window_timer == 1) {
			if (window == 2) {
				window = 8;
				window_timer = 0;
			}
			if (window == 4) {
				window = 9;
				window_timer = 0;
			}
		}
		
		if (window_timer == 12) {
			if (window == 8) {
				window = 3;
				window_timer = 0;
			}
			if (window == 9) {
				window = 5;
				window_timer = 0;
			}
		}
		break;
}
