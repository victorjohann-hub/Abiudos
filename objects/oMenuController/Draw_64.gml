// Fundo animado
draw_sprite_stretched(
    background_sprite,
    floor(current_time / 100) mod sprite_get_number(background_sprite),
    0,
    0,
    display_get_gui_width(),
    display_get_gui_height()
);

// ========================
// FUNÇÃO BOTÃO
// ========================

function ui_draw_button(_btn)
{
    // Fundo botão
    draw_set_color(make_color_rgb(15, 15, 15));

    draw_roundrect(
        _btn.x,
        _btn.y,
        _btn.x + _btn.w,
        _btn.y + _btn.h,
        false
    );

    // Borda dourada
    draw_set_color(make_color_rgb(205, 175, 90));

    draw_roundrect(
        _btn.x,
        _btn.y,
        _btn.x + _btn.w,
        _btn.y + _btn.h,
        true
    );

    // Texto
    draw_set_font(Silver);

    draw_set_color(c_white);

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(
        _btn.x + (_btn.w / 2),
        _btn.y + (_btn.h / 2),
        _btn.text
    );
}

// ========================
// CONFIGURAÇÕES TEXTO
// ========================

draw_set_font(Silver);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// ========================
// MENU PRINCIPAL
// ========================

if (menu_state == "main")
{
    ui_draw_button(btn_play);
    ui_draw_button(btn_options);
    ui_draw_button(btn_quit);
}

// ========================
// MENU OPTIONS
// ========================

else if (menu_state == "options")
{
    // TEXTO VOLUME
    draw_set_font(Silver);

    draw_set_color(make_color_rgb(205, 175, 90));

    draw_set_halign(fa_center);

    draw_text(
        display_get_gui_width()/2,
        250,
        "Volume"
    );

    // FUNDO SLIDER
    draw_set_color(make_color_rgb(40, 40, 40));

    draw_roundrect(
        slider_x,
        slider_y,
        slider_x + slider_w,
        slider_y + slider_h,
        false
    );

    // PREENCHIMENTO DOURADO
    draw_set_color(make_color_rgb(205, 175, 90));

    draw_roundrect(
        slider_x,
        slider_y,
        slider_x + (slider_w * global.volume),
        slider_y + slider_h,
        false
    );

    // BOLINHA
    draw_circle(
        slider_x + (slider_w * global.volume),
        slider_y + 4,
        10,
        false
    );

    // PORCENTAGEM
    draw_set_color(c_white);

    draw_text(
        display_get_gui_width()/2,
        390,
        string(round(global.volume * 100)) + "%"
    );

    ui_draw_button(btn_back);
	
	// RESET ALIGN
draw_set_halign(fa_left);
draw_set_valign(fa_top);
}