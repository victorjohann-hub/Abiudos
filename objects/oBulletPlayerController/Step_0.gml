
// PAUSE

if (global.game_paused && !can_run_when_paused) {

    speed = 0; // pausa movimento
    image_speed = 0; // pausa animação caso tenha

    exit;
}
else {
    // RESUME automático
    speed = spd;
    image_speed = 1;
}

// LÓGICA DO PROJÉTIL

life--;

image_angle = direction; /// era pra girar direito mas não tá KK

if (life <= 0) {
    instance_destroy();
}