if (keyboard_check_pressed(vk_f11)) {
    
    var fs = !window_get_fullscreen();
    window_set_fullscreen(fs);

    if (fs) {
        var w = display_get_width();
        var h = display_get_height();
        surface_resize(application_surface, w, h);
    }
}


// DERROTA

if (!game_over && instance_exists(Player))
{
    if (Player.HP <= 0)
    {
        game_over = true;
    }
}

// VITÓRIA

if (game_win)
{
    room_goto(rm_win);
}

// DERROTA

if (game_over)
{
    room_goto(rm_gameover);
}
