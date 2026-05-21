var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left))
{

// RESTART
if (point_in_rectangle(mx, my,
    btn_retry.x,
    btn_retry.y,
    btn_retry.x + btn_retry.w,
    btn_retry.y + btn_retry.h))
{
    // RESET GLOBALS
    global.dialog_active = false;
    global.game_paused = false;

    // DESTROI QUALQUER DIALOGO EXISTENTE
    if (instance_exists(oDialogueController))
    {
        with (oDialogueController)
        {
            instance_destroy();
        }
    }

    // REINICIA A ROOM
    room_goto(Room1);
}

// MENU
if (point_in_rectangle(mx, my,
        btn_menu.x,
        btn_menu.y,
        btn_menu.x + btn_menu.w,
        btn_menu.y + btn_menu.h))
    {
        room_goto(rm_menu);
    }

// SAIR
if (point_in_rectangle(mx, my,
        btn_quit.x,
        btn_quit.y,
        btn_quit.x + btn_quit.w,
        btn_quit.y + btn_quit.h))
    {
        game_end();
    }
}