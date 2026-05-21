show_debug_message("CRIANDO DIALOGO");
if (!global.game_paused) {

    var d = instance_create_layer(0, 0, "GUI", oDialogueController);

    d.texts = [
	"O chapéu de couro de Lampião é o maior símbolo da resistência e da estética do cangaço.",
	"Carregando significados que misturam proteção física, status e misticismo.",
	"Diferente do chapéu de vaqueiro comum . . .",
	"O chapéu de Lampião tinha a aba frontal e a traseira dobradas para cima, criando o formato de meia-lua."
	];
    
	
	d.item_sprite = sprite_index;
	
	d.item_name = "Chapéu de Cangaceiro"
	
	// Soma item coletado
oGameController.artifact_count += 1;

// Vitória
if (oGameController.artifact_count >= oGameController.required_artifacts)
{
    oGameController.game_win = true;
}


    instance_destroy();
}
