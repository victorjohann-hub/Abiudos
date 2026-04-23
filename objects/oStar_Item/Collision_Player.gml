if (!global.game_paused) {

    var d = instance_create_layer(0, 0, "GUI", oDialogueController);

    d.texts = dialog_texts;
    d.item_sprite = sprite_index;

    instance_destroy();
}
