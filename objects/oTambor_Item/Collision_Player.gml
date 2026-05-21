show_debug_message("CRIANDO DIALOGO");
if (!global.game_paused) {

    var d = instance_create_layer(0, 0, "GUI", oDialogueController);

    d.texts = [
	"O tambor não é apenas um instrumento de percussão.",
	"Ele é o 'coração' que dita o ritmo da ancestralidade, da resistência negra e das festas populares",
	"Sua simbologia está ligada aos grupos folclóricos e as religiões de matriz africana",
	]
    d.item_sprite = sprite_index;
	
	d.item_name = "Chaveiro de Tambor"
	
	// Soma item coletado
oGameController.artifact_count += 1;



    instance_destroy();
}
