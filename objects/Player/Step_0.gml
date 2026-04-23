///Pause Check
if (global.game_paused && !can_run_when_paused) exit;
show_debug_message("paused: " + string(global.game_paused));

hor_move = keyboard_check(vk_right) - keyboard_check(vk_left);
ver_move = keyboard_check(vk_down) - keyboard_check(vk_up);




var moving = (hor_move != 0 or ver_move != 0);

switch (state) {

    case STATE.IDLE:
        
        if (moving) state = STATE.RUN;

        sprite_index = spr_idle[dir];
        
    break;


    case STATE.RUN:
        
        if (!moving) state = STATE.IDLE;

        // Atualiza direção
        if (abs(hor_move) > abs(ver_move)) {
            dir = (hor_move > 0) ? DIR.RIGHT : DIR.LEFT;
        } else {
            dir = (ver_move > 0) ? DIR.DOWN : DIR.UP;
        }
		
		//// Rotacionar o Sprite para A e D
		
		if (dir == DIR.LEFT) {
		image_xscale = -1;
		} else {
		image_xscale = 1;
		}
		
		

        // Movimento
        var _dir = point_direction(0, 0, hor_move, ver_move);
        x += lengthdir_x(2, _dir);
        y += lengthdir_y(2, _dir);

        sprite_index = spr_run[dir];

    break;
}

