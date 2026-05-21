if (room == rm_win)
{
    is_win = true;
    screen_title = "VOCE ENCONTROU TODOS OS ARTEFATOS!";
}
else
{
    is_win = false;
    screen_title = "GAME OVER";
}


if (room == rm_win)
{
    screen_title = "VOCE ENCONTROU TODOS OS ARTEFATOS!";
}
else
{
    screen_title = "GAME OVER";
}

// Botões

btn_w = 220;
btn_h = 50;

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
    y : 400,
    w : btn_w,
    h : btn_h,
    text : "Menu"
};

btn_quit = {
    x : center_x,
    y : 480,
    w : btn_w,
    h : btn_h,
    text : "Sair"
};

