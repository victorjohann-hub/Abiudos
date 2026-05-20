// tempo entre spawns (em frames)
spawn_min = 60; // 1 segundo
spawn_max = 360; // 6 segundos

spawn_timer = random_range(spawn_min, spawn_max); /// Aleatório

// limite de inimigos vivos pra não ser um darksouls também
max_enemies = 30;

// lista de inimigos possíveis
enemy_list = [
    oCaranguejo_Enemy
];