var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left))
{
    if (menu_state == "main")
    {
        // PLAY
        if (point_in_rectangle(mx, my,
            btn_play.x,
            btn_play.y,
            btn_play.x + btn_play.w,
            btn_play.y + btn_play.h))
        {
            room_goto(Room1);
        }

        // OPTIONS
        if (point_in_rectangle(mx, my,
            btn_options.x,
            btn_options.y,
            btn_options.x + btn_options.w,
            btn_options.y + btn_options.h))
        {
            menu_state = "options";
        }

        // QUIT
        if (point_in_rectangle(mx, my,
            btn_quit.x,
            btn_quit.y,
            btn_quit.x + btn_quit.w,
            btn_quit.y + btn_quit.h))
        {
            game_end();
        }
    }
    else if (menu_state == "options")
    {
        // VOLTAR
        if (point_in_rectangle(mx, my,
            btn_back.x,
            btn_back.y,
            btn_back.x + btn_back.w,
            btn_back.y + btn_back.h))
        {
            menu_state = "main";
        }

        // SLIDER
        if (point_in_rectangle(mx, my,
            slider_x,
            slider_y - 15,
            slider_x + slider_w,
            slider_y + 15))
        {
            slider_dragging = true;
        }
    }
}

// SOLTOU O MOUSE
if (mouse_check_button_released(mb_left))
{
    slider_dragging = false;
}

// ARRASTANDO SLIDER
if (slider_dragging)
{
    global.volume = clamp((mx - slider_x) / slider_w, 0, 1);

    audio_master_gain(global.volume);
}