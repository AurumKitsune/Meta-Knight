if ("display_debug" in self && display_debug) {
	if ("is_ai" in self) {
		lines = 8;
		line_num = 0;
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, "X: " + string(x) + "  Y: " + string(y));
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, "X Range: " + string(x) + "  Y Range: " + string(yrange));
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, "Above: " + string(above) + "  Left: " + string(left));
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, "Jump Timer: " + string(jump_timer) + "  Offstage Timer: " + string(offstage_timer));
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, "CPU State: " + string(cpu_state) + "  Command: " + string(use_command));
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, "Evade Timer: " + string(evade_timer) + "  NSpec CD: " + string(nspec_cooldown));
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, "FSpec CD: " + string(fspec_cooldown) + "  DSpec CD: " + string(dspec_cooldown));
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, "DI: " + string(di_dir));
	}
	
	if ("is_ai" not in self) {
		lines = 4;
		line_num = 0;
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, `Jumps: ${djumps}  Height: ${djump_speed}`);
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, `State: ${get_state_name(state)}  Timer: ${state_timer}`);
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, `HSP: ${hsp}  VSP: ${vsp}`);
		draw_debug_text(temp_x, temp_y - 12 - 16 * lines + 16 * line_num++, `HSP: ${window}  VSP: ${window_timer}`);
	}
}