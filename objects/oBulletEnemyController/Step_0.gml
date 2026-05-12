// Vida do projétil
life--;
image_angle = direction;
if (life <= 0) {
    instance_destroy();
}