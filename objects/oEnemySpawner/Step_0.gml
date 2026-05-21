if (global.dialog_active) exit;

spawn_timer--;

// conta quantos inimigos existem
var enemy_count = instance_number(oCaranguejo_Enemy);

if (spawn_timer <= 0 && enemy_count < max_enemies) {

    spawn_timer = random_range(spawn_min, spawn_max);

    // tenta achar posição válida
    var tries = 20;

    repeat (tries) {

        var margin = 64;

        var x_spawn = random_range(margin, room_width - margin);
        var y_spawn = random_range(margin, room_height - margin);

        // não spawnar em parede nem perto do player
        if (!place_meeting(x_spawn, y_spawn, oSolid) &&
            point_distance(x_spawn, y_spawn, Player.x, Player.y) > 100) {

            // escolhe inimigo aleatório
            var obj = enemy_list[irandom(array_length(enemy_list) - 1)];

            instance_create_layer(x_spawn, y_spawn, layer, obj);

            break;
        }
    }
}