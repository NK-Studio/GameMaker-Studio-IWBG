audio_pause_all();//게임의 음악을 일시정지 시킴.
instance_create(0,0,sound_kill);//kill 뮤직을 실행 시킵니다.
/*이곳에 kill 뮤직 실행 함수를 설정하지 않은 이유는 audio_pause_all라는 함수가 게임BGM을 연결하기 위해 게임
음악을 일시적으로 정지 하는데 그순간에 kill 뮤직도 함께 정지대상으로 생각하여 kill뮤직이 안나오게됨 */

//ㅡㅡㅡㅡㅡ플레이어 시체 부분
instance_screate(head,x,y,random(8),random(360));//플레이어 머리를 생성 시킴

instance_screate(gun,x,y,random(8),random(360));//플레이어 총을 생성시킴

instance_screate(deadArm,x,y,random(8),random(360));//플레이어 팔을 생성시킴

instance_screate(deadFoot,x,y,random(8),random(360));//플레이어 다리를 생성시킴

xx = player.x;
yy = player.y;
p=instance_create(xx,yy, bloodSquirt);//플레리어 피를 생성시킴
p.xx = xx;
p.yy = yy;
//ㅡㅡㅡㅡㅡendㅡㅡㅡㅡㅡㅡㅡㅡㅡ
with(player)instance_destroy();//플레이어 삭제//

if instance_exists(bullet){with(bullet) instance_destroy();}//게임화면에 총알이있을시 삭제

instance_create(__view_get( e__VW.XView, 0 )+400, __view_get( e__VW.YView, 0 )+240, GAMEOVER);//죽음 표시안내문

world.deaths+=1;//죽은횟수를 기록

with(world)deaths_save();
//플레이어가 죽을시 발생하는 것들입니다.
