// Se não tiver texto, cancela o diálogo
if (array_length(texts) == 0) {
    global.game_paused = false;
    instance_destroy();
    exit;
}

if (keyboard_check_pressed(vk_space)) {

    index++;

    if (index >= array_length(texts)) {
        global.game_paused = false;
        instance_destroy();
    }
}
