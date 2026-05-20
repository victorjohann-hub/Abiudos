event_inherited();
if (HP <= 0 && state != ENEMY_STATE.DEATH) {
    
    state = ENEMY_STATE.DEATH;

    image_index = 0;
    image_speed = 1;

    // opcional
    // audio_play_sound(snd_enemy_death, 1, false);
}



if (state == ENEMY_STATE.DEATH) {

    sprite_index = sCaranguejo_Death_Enemy;

    hsp = 0;
    vsp = 0;

    if (image_index >= image_number - 1) {
        instance_destroy();
    }

    exit; 
}