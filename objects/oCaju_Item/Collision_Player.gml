show_debug_message("CRIANDO DIALOGO");
if (!global.game_paused) {

    var d = instance_create_layer(0, 0, "GUI", oDialogueController);

    d.texts = [
	"Símbolo máximo de Aracaju.",
	"Definindo desde o nome da capital até sua identidade cultura, econômica e afetiva.",
	"O próprio nome da cidade é uma herança direta desse fruto.",
	"Derivado do tupi-guarani, a interpretação mais aceita é “cajueiro dos papagaios”."
	];
    
	
	d.item_sprite = sprite_index;
	
	d.item_name = "Caju"
	
	// Soma item coletado
oGameController.items_collected += 1;

// Vitória
if (oGameController.items_collected >= oGameController.items_to_win)
{
    oGameController.game_win = true;
}

    instance_destroy();
}
