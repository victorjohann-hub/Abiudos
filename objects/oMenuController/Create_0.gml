// Estado do menu
menu_state = "main";

// Volume global
global.volume = 1;

// Diálogo
global.dialog_active = false;

// Fundo animado
background_sprite = spr_menu_bg;

// ========================
// BOTÕES
// ========================

btn_w = 220;
btn_h = 50;

// posição central
var center_x = display_get_gui_width() / 2 - btn_w / 2;

// PLAY
btn_play = {
    x : center_x,
    y : 340,
    w : btn_w,
    h : btn_h,
    text : "Jogar"
};

// OPÇÕES
btn_options = {
    x : center_x,
    y : 420,
    w : btn_w,
    h : btn_h,
    text : "Opcoes"
};

// SAIR
btn_quit = {
    x : center_x,
    y : 500,
    w : btn_w,
    h : btn_h,
    text : "Sair"
};

// VOLTAR
btn_back = {
    x : center_x,
    y : 500,
    w : btn_w,
    h : btn_h,
    text : "Voltar"
};

// ========================
// SLIDER DE VOLUME
// ========================

slider_x = display_get_gui_width() / 2 - 125;

// mais abaixo e alinhado
slider_y = 360;

slider_w = 250;
slider_h = 8;

slider_dragging = false;