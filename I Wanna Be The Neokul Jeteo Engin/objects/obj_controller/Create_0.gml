con_x=x  // 동그라미를 드로우할때 동그라임 x축 좌표값을 담는 변수 

con_y=y   // 동그라미를 드로우할때 동그라임 y축 좌표값을 담는 변수 

con_touch=-1  // 컨트롤러를 터치했는지 안했는지 판단하는 변수 

global.con_dis=0  // 마우스와 컨트롤러 원점의 거리를 담는 변수 
global.con_dir=0  // 마우스와 컨틀롤러 원점의 각도를 담는 변수 

image_speed=0
image_index=0

instance_create(x,y,obj_controller_extra)

