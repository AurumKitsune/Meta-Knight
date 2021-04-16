set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 12);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_DAIR, 6);

//Sweetspot
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2 + has_rune("K") * 90);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 22);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3 + has_rune("K") * 90);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 44);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 26);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Sourspot
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2 + has_rune("K") * 90);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 46);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Late hit
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3 + has_rune("K") * 90);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 16);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 26);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Rune hitboxes
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 92 - has_rune("K") * 90);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 22);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 5, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DAIR, 5, HG_FINAL_BASE_KNOCKBACK, 2);

set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 93 - has_rune("K") * 90);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 16);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, 26);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));