is_ai = true;
temp_level = 9;
evade_timer = 125;
facing = false;
di_dir = 0;
nspec_cooldown = 0;
fspec_cooldown = 0;
dspec_cooldown = 0;
offstage_timer = 0;
jump_timer = 0;
stage_x = get_stage_data(SD_X_POS);

cpu_state = 0;
/*	0 = stand
	1 = recovering
	2 = evade
	3 = 
	4 = fight*/

use_command = 0;
/*	0 = nothing
	1 = neutral_attack
	2 = forward_attack
	3 = up_attack
	4 = down_attack
	5 = dash_attack
	6 = neutral_special
	7 = forward_special
	8 = up_special
	9 = down_special
	10 = forward_strong
	11 = up_strong
	12 = down_strong*/
