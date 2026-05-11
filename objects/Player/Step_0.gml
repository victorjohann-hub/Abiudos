/// =========================
/// ⏸️ PAUSE
/// =========================
if (global.game_paused && !can_run_when_paused) exit;


// DEBUG (opcional)
show_debug_message("paused: " + string(global.game_paused));


/// =========================
/// 🎮 INPUT
/// =========================
var hor_move = keyboard_check(vk_right) - keyboard_check(vk_left);
var ver_move = keyboard_check(vk_down) - keyboard_check(vk_up);

var moving = (hor_move != 0 || ver_move != 0);


/// =========================
/// ⚡ MOVIMENTO
/// =========================
var spd = 2;

var move_x = 0;
var move_y = 0;

if (moving) {
    var _dir = point_direction(0, 0, hor_move, ver_move);
    move_x = lengthdir_x(spd, _dir);
    move_y = lengthdir_y(spd, _dir);
}


/// =========================
/// 🧠 STATE MACHINE
/// =========================
switch (state) {

    case STATE.IDLE:
        
        if (moving) state = STATE.RUN;

        sprite_index = spr_idle[dir];

    break;


    case STATE.RUN:
        
        if (!moving) state = STATE.IDLE;

        // Direção
        if (abs(hor_move) > abs(ver_move)) {
            dir = (hor_move > 0) ? DIR.RIGHT : DIR.LEFT;
        } else {
            dir = (ver_move > 0) ? DIR.DOWN : DIR.UP;
        }

        // Flip horizontal
        if (dir == DIR.LEFT) {
            image_xscale = -1;
        } else {
            image_xscale = 1;
        }

        sprite_index = spr_run[dir];

    break;
}


/// =========================
/// 🧱 MOVIMENTO COM ACUMULAÇÃO
/// =========================

// Acumula velocidade fracionada
hsp += move_x;
vsp += move_y;

// Parte inteira do movimento
var mx = floor(hsp);
var my = floor(vsp);

// Mantém o restante fracionado
hsp -= mx;
vsp -= my;


// --- X ---
repeat (abs(mx)) {
    
    x += sign(mx);
    
    if (place_meeting(x, y, oSolid)) {
        x -= sign(mx);
        hsp = 0;
        break;
    }
}


// --- Y ---
repeat (abs(my)) {
    
    y += sign(my);
    
    if (place_meeting(x, y, oSolid)) {
        y -= sign(my);
        vsp = 0;
        break;
    }
}


/// =========================
/// 🎨 PROFUNDIDADE
/// =========================
depth = -y;
