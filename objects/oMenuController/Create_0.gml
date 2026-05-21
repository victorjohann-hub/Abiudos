// Estado do menu
menu_state = "main";

// Volume global
global.volume = 1;

// Diálogo
global.dialog_active = false;

// Fundo animado
background_sprite = spr_menu_bg;

// Botões
btn_w = 220;
btn_h = 50;

btn_play = {
    x : display_get_gui_width() / 2 - btn_w / 2,
    y : 260,
    w : btn_w,
    h : btn_h,
    text : "Jogar"
};

btn_options = {
    x : display_get_gui_width() / 2 - btn_w / 2,
    y : 330,
    w : btn_w,
    h : btn_h,
    text : "Opcoes"
};

btn_quit = {
    x : display_get_gui_width() / 2 - btn_w / 2,
    y : 400,
    w : btn_w,
    h : btn_h,
    text : "Sair"
};

btn_back = {
    x : display_get_gui_width() / 2 - btn_w / 2,
    y : 420,
    w : btn_w,
    h : btn_h,
    text : "Voltar"
};

// Slider
slider_x = display_get_gui_width() / 2 - 125;
slider_y = 300;

slider_w = 250;
slider_h = 8;

slider_dragging = false;