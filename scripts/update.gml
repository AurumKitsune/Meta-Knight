djump_speed = djump_speed_max - (djumps * 0.5) * has_rune("F");

if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
	used_nspecial = false;
	used_dspecial = false;
	used_uspecial = false;
}

move_cooldown[AT_NSPECIAL] = 100 * used_nspecial;
move_cooldown[AT_DSPECIAL] = 100 * used_dspecial;
move_cooldown[AT_USPECIAL] = 100 * used_uspecial;


if (get_player_color(player) == 9) init_shader();

user_event(0);
user_event(15);