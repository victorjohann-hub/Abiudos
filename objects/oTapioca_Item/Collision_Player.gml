show_debug_message("CRIANDO DIALOGO");
if (!global.game_paused) {

    var d = instance_create_layer(0, 0, "GUI", oDialogueController);

    d.texts = [
	"A tapioca representa a própria identidade e ancestralidade nordestina.",
	"Mais que alimento, é um símbolo de resistência e união familiar.",
	"Herdada dos povos indígenas e adotada pelos colonizadores na escassez do trigo, ela substitui o pão no dia a dia.",
	"É o afeto e a memória afetiva em forma de massa."
	];
    
	
	d.item_sprite = sprite_index;
	
	d.item_name = "Tapioca"
	
	// Soma item coletado
oGameController.items_collected += 1;

// Vitória
if (oGameController.items_collected >= oGameController.items_to_win)
{
    oGameController.game_win = true;
}

    instance_destroy();
}
