set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("mk_tornado"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 51);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.25);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 7 - has_rune("O") * 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 18 - has_rune("L") * 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_accel * 1.5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, air_accel * 1.5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.75);

set_num_hitboxes(AT_NSPECIAL, 3);

//Multihits
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2 + has_rune("N") * 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 85);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DRIFT_MULTIPLIER, 0.001);
set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);

//Finisher
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3 + has_rune("N") * 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 115);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 130);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);

//Rune hitbox
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 92 - has_rune("N") * 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 54);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 115);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 130);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 18);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 1);