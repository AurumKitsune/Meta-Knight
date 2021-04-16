if (my_hitboxID.attack == AT_FSPECIAL_2 && window != 3) {
    hit_player_obj.should_make_shockwave = false;
    if (hit_player_obj.x - x > 60) hit_player_obj.x -= 30;
    if (hit_player_obj.x - x < -60) hit_player_obj.x += 30;
    if (hit_player_obj.y - y > 15) hit_player_obj.y -= 20;
    if (hit_player_obj.y - y < -15) hit_player_obj.y += 20;
}
else if (my_hitboxID.attack == AT_NSPECIAL && window == 2) {
    hit_player_obj.should_make_shockwave = false;
    if (hit_player_obj.x - x > 15) hit_player_obj.x -= 25;
    if (hit_player_obj.x - x < -15) hit_player_obj.x += 25;
    if (hit_player_obj.y - y > 20) hit_player_obj.y -= 30;
    if (hit_player_obj.y - y < -20) hit_player_obj.y += 30;
}