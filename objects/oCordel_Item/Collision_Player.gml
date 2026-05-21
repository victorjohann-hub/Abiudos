show_debug_message("CRIANDO DIALOGO");
if (!global.game_paused) {

    var d = instance_create_layer(0, 0, "GUI", oDialogueController);

    d.texts = [
	"O cordel é a alma do Sertão em forma de poesia e papel.",
	"Não é apenas um folheto.",
	"É um sistema completo de comunicação, arte e resistência que ajudou a alfabetizar e entreter gerações no Nordeste.",
	];
    
	
	d.item_sprite = sprite_index;
	
	d.item_name = "Livro de Cordel"
	
	// Soma item coletado
oGameController.items_collected += 1;

// Vitória
if (oGameController.items_collected >= oGameController.items_to_win)
{
    oGameController.game_win = true;
}


    instance_destroy();
}
