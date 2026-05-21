draw_set_color(c_black);

draw_rectangle(
    0,
    0,
    display_get_gui_width(),
    display_get_gui_height(),
    false
);

// Título
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(
    display_get_gui_width()/2,
    180,
    screen_title
);

// Função botão
function ui_draw_button(_btn)
{
    draw_set_color(c_white);

    draw_rectangle(
        _btn.x,
        _btn.y,
        _btn.x + _btn.w,
        _btn.y + _btn.h,
        false
    );

    draw_set_color(c_black);

    draw_text(
        _btn.x + _btn.w/2,
        _btn.y + _btn.h/2,
        _btn.text
    );
}

// Desenha botões
ui_draw_button(btn_retry);
ui_draw_button(btn_menu);
ui_draw_button(btn_quit);