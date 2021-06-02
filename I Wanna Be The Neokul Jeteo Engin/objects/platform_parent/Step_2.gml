if place_meeting(x+hs, y, block) {hs *= -1}
if place_meeting(x, y+vs, block) {vs *= -1}
x += hs;
y += vs;

if global.grav=0{
if collision_rectangle(x, y-4-vs, x+31, y, player, 1, 1) {
    //platform collisions
    //this is a little complicated, read the documentation
    if (player.y - player.vspeed/2 <= y) {
        if (player.vspeed >= 0) {
            if !place_meeting(x, y-21+vs, block) {
                player.vspeed = vs;
                player.y = y-8;
            }
        }
    }
    if !collision_rectangle(player.x-8+hs, player.y-12, player.x+8+hs, player.y+8, block, 1, 1) {
        player.x += hs;
    }
    player.onPlatform = 1;
    player.djump = 1;
    player.gravity = 0;
}
}else{
if collision_rectangle(x, y+28-vs, x+31, y, player, 1, 1) {
    if (player.y + player.vspeed/2 >= y) {
        if (player.vspeed <= 0) {
            if !place_meeting(x, y+21-vs, block) {
                player.vspeed = vs;
                player.y = y+24;
            }
        }
    }
 if !collision_rectangle(player.x-8+hs, player.y-12, player.x+8+hs, player.y+8, block, 1, 1) {
        player.x += hs;
    }
    player.onPlatform = 1;
    player.djump = 1;
    player.gravity = 0;
}
}

