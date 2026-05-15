if (!invincible) {
HP -= 1;
invincible = true;
damage_timer = damage_duration;
audio_play_sound(snd_hit1, 1, false);
};


// Debug (opcional)
show_debug_message("HP Player: " + string(HP));
