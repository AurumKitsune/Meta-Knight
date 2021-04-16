hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
//char_width = 56;
char_height = 44;

//weight
knockback_adj = 1.1;
gravity_speed = 0.35;
hitstun_grav = 0.45;
air_friction = 0.04;
air_accel = 0.35;
max_fall = 9;
fast_fall = 12;

//movement
ground_friction = 0.4;
dash_speed = 6.5;
initial_dash_speed = 7.5;
initial_dash_time = 14;
dash_stop_time = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
walk_speed = 3;
walk_accel = 0.25;
walk_turn_time = 6;
wave_land_time = 8;
wave_friction = 0.06;

//aerial
air_max_speed = 6;
max_djumps = 5;
jump_start_time = 5;
jump_speed = 8;
djump_speed_max = 7;
djump_speed = 7;
short_hop_speed = 5;
max_jump_hsp = 6;
leave_ground_max = 6;
walljump_vsp = 8;
walljump_hsp = 6;
air_dodge_speed = 7.5 + has_rune("A") * 4;
prat_fall_accel = 0.6;
prat_land_time = 12;
land_time = 4;

//misc
roll_forward_max = 9;
roll_backward_max = 9;
techroll_speed = 9;

// idk
dash_stop_percent = .35;
moonwalk_accel = 1.35;
jump_change = 2;
double_jump_time = 32;
walljump_time = 32;
wave_land_adj = 1.35;

//crouch animation frames
crouch_startup_frames = 0;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 0;
dodge_recovery_frames = 0;

//tech animation frames
tech_startup_frames = 0;
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;

//airdodge animation frames
air_dodge_startup_frames = 4;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 4;

//roll animation frames
roll_forward_startup_frames = 4;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 4;

roll_back_startup_frames = 4;
roll_back_active_frames = 1;
roll_back_recovery_frames = 4;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//variables
use_drillrush = false;
used_nspecial = false;
used_dspecial = false;
used_uspecial = false;

display_debug = false;

//kirby
kirbyability = 16;
enemykirby = noone;