/// Afetado pelo Pause

if (global.game_paused && !can_run_when_paused) exit;

shoot_cooldown--;

if (!instance_exists(Player)) exit;

if (HP <= 0) {
    instance_destroy();
}



var dx = Player.x - x;
var dy = Player.y - y;


var dist = point_distance(x, y, Player.x, Player.y);

if (dist < 200 && shoot_cooldown <=0) {
    var dir = point_direction(x, y, Player.x, Player.y);

    var b = instance_create_layer(x, y, "Bullets", oBulletEnemy);

    b.direction = dir;
    b.speed = 3;
	audio_play_sound(snd_shoot1, 1, false);

    shoot_cooldown = shoot_delay;
	};



var stop_dist = 50; // distância mínima


/// MOVIMENTO

if (dist > stop_dist) {
    
    // Normaliza
    dx /= dist;
    dy /= dist;
    
    x += dx * spd;
    y += dy * spd;
}


depth = -y;