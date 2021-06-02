ends += 1;
if place_meeting(x+hspeed, y, block){instance_destroy()}//블럭에 닿았을경우 삭제
if ends > 40 {instance_destroy()}
//ends이라는 변수가 40을 넘겼을때 자신을 삭제

