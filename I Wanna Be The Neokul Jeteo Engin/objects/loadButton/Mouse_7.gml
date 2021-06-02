if file_exists("globalData.ini"){//게임데이터가 있으면 이어서 시작함
instance_create(0,0,load_goto)
}else{//게임 데이터가 없으면 비긴룸으로 이동
room_goto(beginning)
}

