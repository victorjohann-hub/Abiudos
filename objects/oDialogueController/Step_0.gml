// Se não tiver texto, cancela o diálogo
if (!is_array(texts))
{
    global.game_paused = false;
    global.dialog_active = false;

    instance_destroy();
    exit;
}

if (array_length(texts) <= 0)
{
    global.game_paused = false;
    global.dialog_active = false;

    instance_destroy();
    exit;
}

if (keyboard_check_pressed(vk_space))
{
    index++;

// Terminou diálogo
    if (index >= array_length(texts))
    {
        global.game_paused = false;
        global.dialog_active = false;

// LIMPA VARIÁVEIS
        texts = [];
        index = -1;
        item_name = "";
        item_sprite = noone;

        show_debug_message("DESTRUIDO DIALOG");

// VITÓRIA APÓS TERMINAR DIÁLOGO
if (global.pending_win)
{
    global.pending_win = false;

    room_goto(rm_win);

    exit;
}
	   
		instance_destroy();
        exit;
    }
}