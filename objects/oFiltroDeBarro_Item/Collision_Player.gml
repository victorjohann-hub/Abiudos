show_debug_message("CRIANDO DIALOGO");
if (!global.game_paused) {

    var d = instance_create_layer(0, 0, "GUI", oDialogueController);

    d.texts = [
	"Há quem diga que nada se compara ao sabor da água fresquinha do filtro de barro.",
	"Cada filtro de barro carrega uma história.",
	"Feito manualmente por artesãos, ele traz o toque da criação humana.",
	"Além da pureza da água, há um fator importante: a mineralização natural que o barro proporciona.",
	"É como se o filtro devolvesse à água um pouco da sua origem, da terra."
	];
    
	
	d.item_sprite = sprite_index;
	
	d.item_name = "Filtro de Barro"
	
	// Soma item coletado
oGameController.items_collected += 1;

// Vitória
if (oGameController.items_collected >= oGameController.items_to_win)
{
    oGameController.game_win = true;
}


    instance_destroy();
}
