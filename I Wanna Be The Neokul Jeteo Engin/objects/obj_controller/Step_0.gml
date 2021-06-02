for(i=0;i<=4;i+=1 ){// 멀티터치
    if device_mouse_check_button(i,mb_left) and collision_point(device_mouse_x(i),device_mouse_y(i),object_index,1,0){
           con_touch=i;  
        break ;
    }}
for( fff=0; fff<=4; fff+=1 ){
if device_mouse_check_button_pressed(fff,mb_left)and collision_point(device_mouse_x(fff),device_mouse_y(fff),object_index,1,0){
instance_create(x,y,obj_controller_draw)
image_index=1
}}
global.con_dir = floor( point_direction(x,y,device_mouse_x(con_touch),device_mouse_y(con_touch))); // 각도 구한다.
global.con_dis = floor(point_distance(device_mouse_x(con_touch),device_mouse_y(con_touch),x,y))// 거리 구한다.

if!(con_touch == -1) { // 멀티 터치가 시작되면 
    
    if  global.con_dis < 30 {//원점과 마우스가 거리가 50 미만일때는
    
        con_x = device_mouse_x(con_touch);// 동그라미가 마우스를 따라다닌다.
        con_y = device_mouse_y(con_touch);  
    }
    if global.con_dis > 30  {//원점과 동그라미 거리가 50 이상 벌어졌을때 
    
        con_x = x + lengthdir_x( 30,global.con_dir) ;  // 거리와 각도를 x축에 넣는다.
        con_y = y + lengthdir_y( 30,global.con_dir) ;  // 거리와 각도를 y축에 넣는다.
        
    }
 if device_mouse_check_button_released( con_touch , mb_left ){  // 컨트롤러를 터치를 뗐을때 
    
        con_touch = -1 ;
    }
}
else{

    con_x=x;//이동 방향을 가르키던 동그라미가 컨트롤러 터치를  뗐을시 원점으로 돌아간다.
    con_y=y;

}



