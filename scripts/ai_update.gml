temp_level = 9;
xrange = abs(ai_target.x - x);
yrange = abs(y - ai_target.y);
above = (ai_target.y < y);
left = (ai_target.x < x);
damage = get_player_damage(ai_target.player);
facing = (left && spr_dir == -1) || (!left && spr_dir == 1);

cpu_state = 0;
use_command = 0;

taunt_pressed = false;

if (nspec_cooldown > 0) nspec_cooldown--;
if (fspec_cooldown > 0) fspec_cooldown--;
if (dspec_cooldown > 0) dspec_cooldown--;

if (jump_timer > 0) jump_timer--;
if (state == PS_DOUBLE_JUMP && state_timer == 0) jump_timer = 10;

if (x < stage_x || x > room_width - stage_x) offstage_timer++;
else offstage_timer = 0;

if (state == PS_RESPAWN || ai_target.invince_time > 0 || ai_target.state == PS_RESPAWN) evade_timer = 6;

if (get_training_cpu_action() == CPU_FIGHT) cpu_state = 4;
if (evade_timer > 0) cpu_state = 2;
if (state == PS_PRATFALL) cpu_state = 1;

if (offstage_timer > 100 && free) {
	if (djumps > max_djumps - 2) cpu_state = 1;
	else cpu_state = 4;
}

if (state_cat == SC_HITSTUN && hitpause) {
	cpu_state = 0;
	di_dir = random_func(0, 5, true);
	switch (di_dir) {
		case 0:
			if (left) {
				left_down = true;
				right_down = false;
			}
			else {
				left_down = false;
				right_down = true;
			}
			break;
		case 1:
			if (left) {
				left_down = false;
				right_down = true;
			}
			else {
				left_down = true;
				right_down = false;
			}
			break;
		case 2:
			down_down = true;
			break;
		case 3:
			up_down = true;
			break;
	}
}

switch (cpu_state) {
	case 1:
		if (offstage_timer > 0) {
			if (x < stage_x) {
				left_down = false;
				right_down = true;
			}
			else {
				left_down = true;
				right_down = false;
			}
			if (x > stage_x - 25 || x < room_width - stage_x + 25) jump_pressed = true;
		}
		break;
	case 2:
		if (x > 100 && x < room_width - 100) {
			if (left) {
				left_down = false;
				right_down = true;
			}
			else {
				left_down = true;
				right_down = false;
			}
		}
		jump_pressed = true;
		if (y < get_stage_data(SD_Y_POS) / 0.75 && free) jump_pressed = false;
		evade_timer--;
		break;
	case 3:
		break;
	case 4:
		if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_TURN) {
			if (left) {
				if (xrange < 250) left_down = true;
				else left_hard_pressed = true;
			}
			else {
				if (xrange < 250) right_down = true;
				else right_hard_pressed = true;
			}
		}
		
		if (yrange > 100 && !above && free && !ai_recovering) down_hard_pressed = true;
		
		if (state_cat != SC_HITSTUN && state != PS_PRATFALL && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
			if (free) {
				if (xrange < 45 && yrange < 100) {
					if (above) use_command = 3;
					else use_command = 4;
				}
				else if (yrange < 60) {
					if (xrange < 60) use_command = 1;
					else if (xrange < 125) use_command = 2;
				}
				else if (nspec_cooldown == 0 && xrange < 150 && yrange < 100) use_command = 6;
				else if (dspec_cooldown == 0 && xrange < 150 && yrange < 100) use_command = 9;
				else if (fspec_cooldown == 0 && xrange > 150 && yrange < 250 && facing && offstage_timer == 0) use_command = 7;
			}
			else {
				if (above) {
					if (xrange < 30) {
						if (yrange < 90) {
							if (damage > 100) use_command = 11;
							else use_command = 3;
						}
					}
				}
				else {
					if (yrange < 25) {
						if (damage > 80) {
							if (xrange < 50 && facing) use_command = 2;
							else if (xrange < 75) use_command = 12;
						}
						else if (damage > 50) {
							if (xrange < 75 && facing) use_command = 10;
						}
						else {
							if (xrange < 75 && facing) use_command = 1;
							else if (xrange < 200 && facing) use_command = 5;
						}
					}
					else if (nspec_cooldown == 0 && xrange < 150 && yrange < 100) use_command = 6;
					else if (dspec_cooldown == 0 && xrange < 150 && yrange < 100) use_command = 9;
					else if (fspec_cooldown == 0 && xrange > 150 && yrange < 300 && facing) use_command = 7;
				}
			}
		}
		
		if (attack == AT_JAB && has_hit_player && (window == 3 || window == 5)) attack_pressed = true;
		
		if (attack == AT_FTILT && has_hit_player && (window == 3 || window == 5)) attack_pressed = true;
		
		if (has_hit_player && above && yrange > 80 && can_jump &&
			(attack == AT_JAB || attack == AT_DATTACK || attack == AT_UTILT || attack == AT_UAIR)) jump_pressed = true;
		
		if (attack == AT_NSPECIAL && window == 2) {
			special_down = false;
			joy_pad_idle = false;
			nspec_cooldown = 350;
			
			if (left) joy_dir = 180;
			else joy_dir = 0;
			
			if (above || (has_hit_player && yrange > 50)) special_down = true;
		}
		
		if (attack == AT_FSPECIAL) fspec_cooldown = 150;
		
		if (attack == AT_DSPECIAL) {
			if (window == 2) {
				special_pressed = false;
				special_down = false;
				joy_pad_idle = false;
				dspec_cooldown = 350;
				
				if (left) {
					if (yrange < 30) joy_dir = 180;
					else if (above) joy_dir = 135;
					else joy_dir = 225;
				}
				else {
					if (yrange < 30) joy_dir = 0;
					else if (above) joy_dir = 45;
					else joy_dir = 315;
				}
				
				if (window_timer >= 12 && xrange < 30 && yrange < 30) special_pressed = true;
			}
			if (window == 3 && xrange < 30 && yrange < 30) special_down = true;
		}
		
		if (y < 50 || jump_timer > 0) jump_pressed = false;
		break;
}

if (use_command != 0) {
	joy_pad_idle = true;
	
	jump_down = false;
	jump_pressed = false;

	left_down = false;
	right_down = false;
	up_down = false;
	down_down = false;

	left_pressed = false;
	right_pressed = false;
	up_pressed = false;
	down_pressed = false;

	left_hard_pressed = false;
	right_hard_pressed = false;
	up_hard_pressed = false;
	down_hard_pressed = false;
}

switch (use_command) {
	case 1:
		attack_pressed = true;
		break;
	case 2:
		attack_pressed = true;
		if (left) left_down = true;
		else right_down = true;
		break;
	case 3:
		attack_pressed = true;
		up_down = true;
		break;
	case 4:
		attack_pressed = true;
		down_down = true;
		break;
	case 5:
		attack_pressed = true;
		if (left) left_hard_pressed = true;
		else right_hard_pressed = true;
		break;
	case 6:
		special_pressed = true;
		break;
	case 7:
		special_pressed = true;
		if (left) left_down = true;
		else right_down = true;
		break;
	case 8:
		special_pressed = true;
		up_down = true;
		break;
	case 9:
		special_pressed = true;
		down_down = true;
		break;
	case 10:
		if (left) left_strong_pressed = true;
		else right_strong_pressed = true;
		break;
	case 11:
		up_strong_pressed = true;
		break;
	case 12:
		down_strong_pressed = true;
		break;
}