/// @description 키패드
if (os_type == os_android or os_type == os_ios){//모바일 경우
if !instance_exists(obj_controller){//화면에 컨트롤러가 없을경우
instance_create(0,0,obj_controller)
instance_create(0,0,obj_jumpbutten)
instance_create(0,0,obj_shotbutten)
instance_create(0,0,obj_restart)
}
}

