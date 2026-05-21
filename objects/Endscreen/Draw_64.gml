var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

/// FUNDO
draw_set_color(c_black);

draw_rectangle(
    0,
    0,
    gui_w,
    gui_h,
    false
);

/// DESENHA A ARTE CENTRALIZADA
if (is_win)
{
    draw_sprite(
        spr_win_screen,
        0,
        gui_w / 2,
        gui_h / 2 - 120
    );
}
else
{
    draw_sprite(
        spr_gameover_screen,
        0,
        gui_w / 2,
        gui_h / 2 - 120
    );
}

/// ===============================
/// BOTÕES
/// ===============================
function ui_draw_button(_btn)
{
    draw_set_color(c_black);

    draw_rectangle(
        _btn.x,
        _btn.y,
        _btn.x + _btn.w,
        _btn.y + _btn.h,
        false
    );

    draw_set_color(c_white);

    draw_set_font(Silver);

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(
        _btn.x + (_btn.w / 2),
        _btn.y + (_btn.h / 2),
        _btn.text
    );
}

/// BOTÕES
ui_draw_button(btn_retry);
ui_draw_button(btn_menu);
ui_draw_button(btn_quit);