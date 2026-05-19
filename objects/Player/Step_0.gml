
///  PAUSE

if (global.game_paused && !can_run_when_paused) exit;



/// INPUT

var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var down  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
var up    = keyboard_check(vk_up)    || keyboard_check(ord("W"));

var hor_move = right - left;
var ver_move = down - up;

var moving = (hor_move != 0 || ver_move != 0);



/// DASH
/// CARAIO QUE COISA CHATA
if (can_dash && (keyboard_check_pressed(vk_shift) || keyboard_check_pressed(vk_space)) && dash_cooldown_timer <= 0) {

    if (hor_move != 0 || ver_move != 0) {

        is_dashing = true;
        dash_timer = dash_duration;
        dash_cooldown_timer = dash_cooldown;

        dash_dir = point_direction(0, 0, hor_move, ver_move);
    }
}

/// cooldown do dash
if (dash_cooldown_timer > 0) {
    dash_cooldown_timer--;
}



/// ATAQUE AUTOMÁTICO

shoot_cooldown--;

if (instance_exists(oEnemy)) { /// Check pra saber se existem inimigos pq eu sou burro

    var e = instance_nearest(x, y, oEnemy);
    var dist = point_distance(x, y, e.x, e.y);

    if (dist < 200 && shoot_cooldown <= 0) {

        var shoot_dir = point_direction(x, y, e.x, e.y);

        var b = instance_create_layer(x, y, "Bullets", oBulletPlayer);

        b.direction = shoot_dir;
        b.speed = 3;

        audio_play_sound(snd_shoot1, 1, false);

        shoot_cooldown = shoot_delay;
    }
}



/// INVENCIBILIDADE / HIT

if (invincible) {

    damage_timer--;

    if (damage_timer mod 6 < 3) {
        image_blend = c_red;
        image_alpha = 0.5;
    } else {
        image_blend = c_white;
        image_alpha = 1;
    }

    if (damage_timer <= 0) {
        invincible = false;
        image_blend = c_white;
        image_alpha = 1;
    }

} else {
    image_blend = c_white;
    image_alpha = 1;
}



/// MORTE

if (HP <= 0) {
    global.game_paused = true;
    instance_destroy();
}



/// MOVIMENTO + DASH

var spd = 2;

var move_x = 0;
var move_y = 0;

if (is_dashing) {

    move_x = lengthdir_x(dash_speed, dash_dir);
    move_y = lengthdir_y(dash_speed, dash_dir);

    dash_timer--;

    if (dash_timer <= 0) {
        is_dashing = false;
    }

} else {

    move_x = hor_move;
    move_y = ver_move;

    // normaliza diagonal (palhaçada)
    if (hor_move != 0 && ver_move != 0) {
        move_x *= 0.7071;
        move_y *= 0.7071;
    }

    move_x *= spd;
    move_y *= spd;
}



/// SUBPIXEL (ESSENCIAL)

hsp += move_x;
vsp += move_y;

var mx = floor(hsp);
var my = floor(vsp);

hsp -= mx;
vsp -= my;



/// STATE MACHINE

switch (state) {

    case STATE.IDLE:
        if (moving && !is_dashing) state = STATE.RUN;
        sprite_index = spr_idle[dir];
    break;

    case STATE.RUN:

        if (!moving) state = STATE.IDLE;

        if (abs(hor_move) > abs(ver_move)) {
            dir = (hor_move > 0) ? DIR.RIGHT : DIR.LEFT;
        } else {
            dir = (ver_move > 0) ? DIR.DOWN : DIR.UP;
        }

        image_xscale = (dir == DIR.LEFT) ? -1 : 1;
        sprite_index = spr_run[dir];

    break;
}
/// =========================
/// 🧱 COLISÃO (VERSÃO ANTIGA)
/// =========================

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
/// 🎨 DEPTH
/// =========================
depth = -y;