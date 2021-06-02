if instance_exists(player) {
    x = player.x;
    y = player.y;
    image_xscale = player.image_xscale;
    image_yscale = player.image_yscale;
}

//플레이어가 없거나 난이도가 이지 이상이면 표현하지 않음
if world.difficulty > 0 or !instance_exists(player) {instance_destroy()}

