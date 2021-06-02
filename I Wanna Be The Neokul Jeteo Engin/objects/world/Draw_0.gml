/// @description Touch the screen 그리기
draw_set_font(signFont);
if room == startRoom {
draw_set_color(c_white);
    draw_set_font(titleFont);
    
    draw_text(224, 352, string_hash_to_newline("Touch the screen"));
}
//난이도 설정그리기
if room = beginning {
draw_set_color(c_white);
    draw_text(96, 448, string_hash_to_newline("Medium"));
    draw_text(320, 448, string_hash_to_newline("Hard"));
    draw_text(448, 448, string_hash_to_newline("Very Hard"));
    draw_text(576, 448, string_hash_to_newline("Impossible"));
}
//난이도 설정그리기
if room = loadRoom {
draw_set_color(16777215);
draw_set_font(beginning);
draw_text(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Deaths:"))
draw_text(__view_get( e__VW.XView, 0 )+80,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline(deaths))

if world.difficulty=3{
draw_text(__view_get( e__VW.XView, 0 )+610,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Difficulty:"))
draw_text(__view_get( e__VW.XView, 0 )+720,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Expert"))}


if world.difficulty=2{
draw_text(__view_get( e__VW.XView, 0 )+610,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Difficulty:"))
draw_text(__view_get( e__VW.XView, 0 )+720,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Hard"))}



if world.difficulty=1{
draw_text(__view_get( e__VW.XView, 0 )+610,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Difficulty:"))
draw_text(__view_get( e__VW.XView, 0 )+720,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Normal"))}


if world.difficulty=0{
draw_text(__view_get( e__VW.XView, 0 )+610,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Difficulty:"))
draw_text(__view_get( e__VW.XView, 0 )+720,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Easy"))}

if world.difficulty=-1{
draw_text(__view_get( e__VW.XView, 0 )+610,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("Difficulty:"))
draw_text(__view_get( e__VW.XView, 0 )+720,__view_get( e__VW.YView, 0 )+448,string_hash_to_newline("No"))}
}


