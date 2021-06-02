/// @description 효과 생성
if instance_exists(player){
if global.grav=0{//중력 체인지가 안되었을 경우
effect_create_above(ef_smokeup,player.x,player.y+15,0,1128430);
effect_create_above(ef_smokeup,player.x,player.y+15,0,33023);
}else{//중력 체인지가 안되었을 경우
effect_create_above(ef_smokeup,player.x,player.y-15,0,1128430);
effect_create_above(ef_smokeup,player.x,player.y-15,0,33023);
}}else{
instance_destroy()
}

