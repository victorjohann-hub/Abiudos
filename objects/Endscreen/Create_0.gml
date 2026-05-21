// Descobre qual room estamos

if (room == rm_win)
{
    screen_title = "VOCE ENCONTROU TODOS OS ARTEFATOS!";
}
else
{
    screen_title = "GAME OVER";
}

// Botões

btn_w = 260;
btn_h = 55;

center_x = display_get_gui_width()/2 - btn_w/2;

btn_retry = {
    x : center_x,
    y : 320,
    w : btn_w,
    h : btn_h,
    text : "Jogar Novamente"
};

btn_menu = {
    x : center_x,
    y : 390,
    w : btn_w,
    h : btn_h,
    text : "Menu"
};

btn_quit = {
    x : center_x,
    y : 460,
    w : btn_w,
    h : btn_h,
    text : "Sair"
};