global.game_paused = false;
gpu_set_texfilter(false);

if (keyboard_check_pressed(vk_f11)) {
    
    var fs = !window_get_fullscreen();
    window_set_fullscreen(fs);

    if (fs) {
        var w = display_get_width();
        var h = display_get_height();
        surface_resize(application_surface, w, h);
    }
}
