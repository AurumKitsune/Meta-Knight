//movement
sprite_change_offset("idle", 32, 60);
sprite_change_offset("hurt", 72, 76);
sprite_change_offset("crouch", 32, 34);
sprite_change_offset("walk", 36, 60);
sprite_change_offset("walkturn", 36, 60);
sprite_change_offset("dash", 32, 80);
sprite_change_offset("dashstart", 32, 80);
sprite_change_offset("dashstop", 32, 60);
sprite_change_offset("dashturn", 32, 80);

//hurt
sprite_change_offset("idle_hurt", 25, 48);
sprite_change_offset("crouch_hurt", 25, 24);

//jump
sprite_change_offset("jumpstart", 32, 84);
sprite_change_offset("jump", 76, 66);
sprite_change_offset("doublejump", 76, 100);
sprite_change_offset("walljump", 76, 100);
sprite_change_offset("pratfall", 52, 98);
sprite_change_offset("land", 32, 60);
sprite_change_offset("landinglag", 32, 60);

//parry
sprite_change_offset("parry", 32, 50);
sprite_change_offset("roll_forward", 44, 54);
sprite_change_offset("roll_backward", 44, 54);
sprite_change_offset("airdodge", 44, 54);
sprite_change_offset("waveland", 32, 60);
sprite_change_offset("tech", 32, 60);

//attacks
sprite_change_offset("jab", 38, 64);
sprite_change_offset("dattack", 32, 66);
sprite_change_offset("ftilt", 36, 64);
sprite_change_offset("dtilt", 32, 48);
sprite_change_offset("utilt", 32, 120);
sprite_change_offset("nair", 68, 88);
sprite_change_offset("fair", 70, 86);
sprite_change_offset("bair", 78, 70);
sprite_change_offset("uair", 72, 116);
sprite_change_offset("dair", 60, 92);
sprite_change_offset("fstrong", 64, 50);
sprite_change_offset("ustrong", 38, 124);
sprite_change_offset("dstrong", 65, 92);
sprite_change_offset("nspecial", 46, 98);
sprite_change_offset("fspecial", 72, 108);
sprite_change_offset("fspecial_proj", 21, 21);
sprite_change_offset("fspecial_proj_big", 33, 39);
sprite_change_offset("drill_rush", 32, 54);
sprite_change_offset("uspecial", 52, 90);
sprite_change_offset("dspecial", 42, 58);

//others
sprite_change_offset("taunt", 32, 118);
sprite_change_offset("plat", 64, 94);

set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("victory_theme"));

//kirby
sprite_change_offset("kirby", 46, 98);