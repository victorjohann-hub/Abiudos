// Fundo animado
draw_sprite_stretched(
    background_sprite,
    floor(current_time / 100) mod sprite_get_number(background_sprite),
    0,
    0,
    display_get_gui_width(),
    display_get_gui_height()
);

// Função botão
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

    draw_text(
        _btn.x + 70,
        _btn.y + 15,
        _btn.text
    );
}

// Fonte padrão
draw_set_font(-1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// MENU PRINCIPAL
if (menu_state == "main")
{
   ui_draw_button(btn_play);
	ui_draw_button(btn_options);
	ui_draw_button(btn_quit);
}

// MENU OPTIONS
else if (menu_state == "options")
{
    draw_set_color(c_white);

    draw_text(
        display_get_gui_width()/2 - 40,
        220,
        "Volume"
    );

    // Fundo slider
    draw_set_color(c_gray);

    draw_rectangle(
        slider_x,
        slider_y,
        slider_x + slider_w,
        slider_y + slider_h,
        false
    );

    // Preenchimento
    draw_set_color(c_white);

    draw_rectangle(
        slider_x,
        slider_y,
        slider_x + (slider_w * global.volume),
        slider_y + slider_h,
        false
    );

    // Bolinha
    draw_circle(
        slider_x + (slider_w * global.volume),
        slider_y + 4,
        10,
        false
    );

    draw_text(
        display_get_gui_width()/2 - 30,
        340,
        string(round(global.volume * 100)) + "%"
    );

    ui_draw_button(btn_back);
}