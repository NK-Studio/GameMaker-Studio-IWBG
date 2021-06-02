/// @description 시체가 땅에 닿을시
if other.x >= x-2 and other.x <= x+33 { //top or bottom collision
    if other.y <= y+8 {
        if other.vspeed > 2 {other.vspeed *= -0.5;} //bounce
        else if other.vspeed > 0 {
            other.vspeed = 0;
            other.gravity = 0;
        }
    } else if other.y >= y+24 {
        if other.vspeed < 0 {other.vspeed *= -2;}
    }
    if other.hspeed > 2 {other.hspeed -= 0.2;}
    else if other.hspeed > 0 {other.hspeed = 0;}
    if other.hspeed < -2 {other.hspeed += 0.2;}
    else if other.hspeed < 0 {other.hspeed = 0;}
}
if other.y >= y-2 and other.y <= y+33 { //left or right collision
    if other.x <= x+4 and other.hspeed > 0 { //left
        other.hspeed *= -0.5;
    } else if other.x >= x+28 and other.hspeed < 0 { //right
        other.hspeed *= -0.5;
    }
}

