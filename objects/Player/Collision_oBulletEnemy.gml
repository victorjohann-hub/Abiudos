if (!invincible) {
hp -= 1;
invincible = true;
damage_timer = damage_duration;
};

// Debug (opcional)
show_debug_message("HP Player: " + string(hp));
