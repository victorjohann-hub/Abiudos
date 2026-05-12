can_run_when_paused = false;
hp = 10;
damage_timer = 0;
invincible = false;
damage_duration = 30; /// meio segundo


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

// Idle (você só tem um, então repete)
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
