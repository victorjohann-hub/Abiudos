show_debug_message("CRIANDO DIALOGO");
if (!global.game_paused) {

    var d = instance_create_layer(0, 0, "GUI", oDialogueController);

    d.texts = [
	"Em Sergipe, o caranguejo é muito mais do que um prato típico",
	"É o pilar central da identidade cultural, gastronômica e até mesmo histórica do estado.",
	"Ele é oficialmente reconhecido como Patrimônio Cultural Imaterial de Sergipe.",
	
	]
    
	d.item_sprite = sprite_index;
	
	d.item_name = "Pata de Caranguejo"
	
	// Soma item coletado
oGameController.artifact_count += 1;

    instance_destroy();
}
