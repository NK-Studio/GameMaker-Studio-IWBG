/// @description 조이스틱
if instance_exists(obj_controller){//컨트롤 창이 있을경우
if distance_to_object(obj_Clime)!=0{//사다리에 않닿을시
if obj_controller.con_touch=0 or obj_controller.con_touch=1{ // 컨트롤러 오브젝트에 있는 터치는 변수값이 0 or 1 일때 실행
if global.con_dir =clamp(global.con_dir, 0, 90) // 0~90도일 때 출력 
{hspeed=3;image_xscale=1;h=1;}
if global.con_dir =clamp(global.con_dir, 91, 270) // 91~270도일 때 출력 
{hspeed=-3;image_xscale=-1;h=-1;}
if global.con_dir =clamp(global.con_dir, 271, 359) // 271~359도때 출력 
{hspeed=3;image_xscale=1;h=1;}
}
if obj_controller.con_touch=-1{  // 컨트롤러를 뗐을시 출력  
h=0;
hspeed=0;
obj_controller.image_index=0;
with(obj_controller_draw)instance_destroy();
  }
 }
}
//덩쿨 제어
if instance_exists(obj_controller){
if obj_controller.con_touch=0 or obj_controller.con_touch=1{ // 컨트롤러 오브젝트에 있는 터치는 변수값이 0 or 1 일때 실행
if global.con_dir =clamp(global.con_dir, 0, 90) // 0~90도일 때 출력 
{d=1;}//오른쪽 키를 누른것과 같은 효과
if global.con_dir =clamp(global.con_dir, 90, 270) // 90~270도일 때 출력 
{d=-1;}//왼쪽 키를 누른것과 같은 효과
if global.con_dir =clamp(global.con_dir, 270, 359) // 270~359도일 때 출력 
{d=1;}//오른쪽 키를 누른것과 같은 효과
  }
if obj_controller.con_touch=-1{  // 컨트롤러를 뗐을시 출력  
d=0;//아무것도 않누름
 }
}
//사다리 제어
if instance_exists(obj_controller){//컨트롤 창이 있을경우
if obj_controller.con_touch=0 or obj_controller.con_touch=1{// 컨트롤러 오브젝트에 있는 터치는 변수값이 0 or 1 일때 실행
if global.con_dir =clamp(global.con_dir, 0, 22) // 0~22도일 때 출력 
{c=1}
else if global.con_dir =clamp(global.con_dir, 23, 67) // 23~67도일 때 출력 
{c=2}
else if global.con_dir =clamp(global.con_dir, 68, 112) // 68~112도일 때 출력 
{c=3}
else if global.con_dir =clamp(global.con_dir, 113, 157) // 113~157도일 때 출력 
{c=4}
else if global.con_dir =clamp(global.con_dir, 158, 202) // 158~202도일 때 출력 
{c=5}
else if global.con_dir =clamp(global.con_dir, 203, 247) // 203~247도일 때 출력 
{c=6}
else if global.con_dir =clamp(global.con_dir, 248, 292) // 248~292도일 때 출력 
{c=7}
else if global.con_dir =clamp(global.con_dir, 293, 337) // 293~337도일 때 출력 
{c=8}
}

if obj_controller.con_touch=-1{  // 컨트롤러를 뗐을시 출력  
c=0//아무것도 않누름
 }
}

///키보드
if frozen == false{
if global.grav=0{
if keyboard_check(global.rightKey){hspeed=3;image_xscale=1;h=1;}
if keyboard_check(global.leftKey){hspeed=-3;image_xscale=-1;h=-1;}
}else{
if keyboard_check(global.leftKey){hspeed=3;image_xscale=1;h=1;}
if keyboard_check(global.rightKey){hspeed=-3;image_xscale=-1;h=-1;}
}
}

