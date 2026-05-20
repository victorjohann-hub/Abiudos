	can_run_when_paused = false;
item_counter = 0;
HP = 10;
HP_max = 10;
shoot_delay = 40;
shoot_cooldown = 0;
damage_timer = 0;
invincible = false;
damage_duration = 30; /// meio segundo


hsp = 0;
vsp = 0;



// DASH
can_dash = true;
dash_speed = 6;
dash_duration = 8;
dash_timer = 0;

dash_cooldown = 30;
dash_cooldown_timer = 0;

is_dashing = false;

enum DIR {
    DOWN,
    UP,
    LEFT,
    RIGHT
}

enum STATE {
    IDLE,
    RUN
}

// Idle (repetida)
spr_idle = [
    sPlayerIdle_S,
    sPlayerIdle_S,
    sPlayerIdle_S,
    sPlayerIdle_S
];

// Run (horizontal reaproveitado)
spr_run = [
    sPlayerRun_S, // DOWN
    sPlayerRun_W, // UP
    sPlayerRun_D, // LEFT inversão
    sPlayerRun_D  // RIGHT
];

dir = DIR.DOWN;
state = STATE.IDLE;



hsp = 0;
vsp = 0;
