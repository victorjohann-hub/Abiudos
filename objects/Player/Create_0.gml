can_run_when_paused = false;

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
    sPlayerRun_D, // LEFT (vai inverter)
    sPlayerRun_D  // RIGHT
];

dir = DIR.DOWN;
state = STATE.IDLE;
