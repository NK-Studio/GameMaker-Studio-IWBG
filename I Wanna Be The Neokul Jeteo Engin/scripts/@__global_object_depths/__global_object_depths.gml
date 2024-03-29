// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_extra
global.__objectDepths[1] = 0; // block
global.__objectDepths[2] = -2; // disappearingBlock
global.__objectDepths[3] = 0; // invisBlock
global.__objectDepths[4] = 0; // platform_h
global.__objectDepths[5] = 0; // platform_v
global.__objectDepths[6] = 0; // Iforgot1
global.__objectDepths[7] = 0; // Iforgot2
global.__objectDepths[8] = -1; // spikeUp
global.__objectDepths[9] = -1; // spikeRight
global.__objectDepths[10] = -1; // spikeLeft
global.__objectDepths[11] = -1; // spikeDown
global.__objectDepths[12] = -1; // sendDown
global.__objectDepths[13] = -1; // sendUp
global.__objectDepths[14] = -1; // sendLeft
global.__objectDepths[15] = -1; // sendRight
global.__objectDepths[16] = -1; // trap_fast
global.__objectDepths[17] = -1; // trap_slow
global.__objectDepths[18] = -1; // trap_stop
global.__objectDepths[19] = 0; // trigger
global.__objectDepths[20] = 1; // trigger_field_sq
global.__objectDepths[21] = 0; // bloodSquirt
global.__objectDepths[22] = 0; // camera
global.__objectDepths[23] = -6; // playerSpawn
global.__objectDepths[24] = -4; // world
global.__objectDepths[25] = 0; // kill_character
global.__objectDepths[26] = 0; // platform_parent
global.__objectDepths[27] = 0; // sound_kill
global.__objectDepths[28] = 0; // load_goto
global.__objectDepths[29] = 0; // loadButton
global.__objectDepths[30] = 0; // DataButton
global.__objectDepths[31] = -1; // warp
global.__objectDepths[32] = -1; // warp2
global.__objectDepths[33] = -900001; // GAMEOVER
global.__objectDepths[34] = 0; // WussSave
global.__objectDepths[35] = 0; // SavePoint
global.__objectDepths[36] = 0; // SaveHardCore
global.__objectDepths[37] = 0; // Save_noPoint
global.__objectDepths[38] = -3; // blood
global.__objectDepths[39] = -3; // bow
global.__objectDepths[40] = -3; // bullet
global.__objectDepths[41] = 0; // deadArm
global.__objectDepths[42] = 0; // deadFoot
global.__objectDepths[43] = 0; // gun
global.__objectDepths[44] = -3; // head
global.__objectDepths[45] = -2; // player
global.__objectDepths[46] = -30; // effect
global.__objectDepths[47] = -20; // upisdown
global.__objectDepths[48] = 0; // deueomtong32
global.__objectDepths[49] = -20; // water
global.__objectDepths[50] = 0; // vineL
global.__objectDepths[51] = 0; // vineR
global.__objectDepths[52] = 0; // Earthquake
global.__objectDepths[53] = 0; // Eathee
global.__objectDepths[54] = 0; // obj_Clime
global.__objectDepths[55] = 0; // g_red
global.__objectDepths[56] = 0; // g_blue
global.__objectDepths[57] = 0; // obj_change
global.__objectDepths[58] = 0; // moerjumping1
global.__objectDepths[59] = 0; // moerjumping2
global.__objectDepths[60] = 0; // lomoerjumping1
global.__objectDepths[61] = 0; // lomoerjumping2
global.__objectDepths[62] = 0; // softview
global.__objectDepths[63] = 0; // obj_wall
global.__objectDepths[64] = 0; // saka1
global.__objectDepths[65] = 0; // soundmudle
global.__objectDepths[66] = -1; // expe
global.__objectDepths[67] = 0; // timelineboss
global.__objectDepths[68] = 0; // bosshp
global.__objectDepths[69] = -1; // object70
global.__objectDepths[70] = -1; // object71
global.__objectDepths[71] = -1; // object74
global.__objectDepths[72] = 0; // object73
global.__objectDepths[73] = 0; // object77
global.__objectDepths[74] = 0; // object76
global.__objectDepths[75] = -2000; // obj_controller
global.__objectDepths[76] = -2000; // obj_controller_extra
global.__objectDepths[77] = -2001; // obj_controller_draw
global.__objectDepths[78] = -2000; // obj_jumpbutten
global.__objectDepths[79] = -2000; // obj_shotbutten
global.__objectDepths[80] = 0; // obj_restart


global.__objectNames[0] = "obj_extra";
global.__objectNames[1] = "block";
global.__objectNames[2] = "disappearingBlock";
global.__objectNames[3] = "invisBlock";
global.__objectNames[4] = "platform_h";
global.__objectNames[5] = "platform_v";
global.__objectNames[6] = "Iforgot1";
global.__objectNames[7] = "Iforgot2";
global.__objectNames[8] = "spikeUp";
global.__objectNames[9] = "spikeRight";
global.__objectNames[10] = "spikeLeft";
global.__objectNames[11] = "spikeDown";
global.__objectNames[12] = "sendDown";
global.__objectNames[13] = "sendUp";
global.__objectNames[14] = "sendLeft";
global.__objectNames[15] = "sendRight";
global.__objectNames[16] = "trap_fast";
global.__objectNames[17] = "trap_slow";
global.__objectNames[18] = "trap_stop";
global.__objectNames[19] = "trigger";
global.__objectNames[20] = "trigger_field_sq";
global.__objectNames[21] = "bloodSquirt";
global.__objectNames[22] = "camera";
global.__objectNames[23] = "playerSpawn";
global.__objectNames[24] = "world";
global.__objectNames[25] = "kill_character";
global.__objectNames[26] = "platform_parent";
global.__objectNames[27] = "sound_kill";
global.__objectNames[28] = "load_goto";
global.__objectNames[29] = "loadButton";
global.__objectNames[30] = "DataButton";
global.__objectNames[31] = "warp";
global.__objectNames[32] = "warp2";
global.__objectNames[33] = "GAMEOVER";
global.__objectNames[34] = "WussSave";
global.__objectNames[35] = "SavePoint";
global.__objectNames[36] = "SaveHardCore";
global.__objectNames[37] = "Save_noPoint";
global.__objectNames[38] = "blood";
global.__objectNames[39] = "bow";
global.__objectNames[40] = "bullet";
global.__objectNames[41] = "deadArm";
global.__objectNames[42] = "deadFoot";
global.__objectNames[43] = "gun";
global.__objectNames[44] = "head";
global.__objectNames[45] = "player";
global.__objectNames[46] = "effect";
global.__objectNames[47] = "upisdown";
global.__objectNames[48] = "deueomtong32";
global.__objectNames[49] = "water";
global.__objectNames[50] = "vineL";
global.__objectNames[51] = "vineR";
global.__objectNames[52] = "Earthquake";
global.__objectNames[53] = "Eathee";
global.__objectNames[54] = "obj_Clime";
global.__objectNames[55] = "g_red";
global.__objectNames[56] = "g_blue";
global.__objectNames[57] = "obj_change";
global.__objectNames[58] = "moerjumping1";
global.__objectNames[59] = "moerjumping2";
global.__objectNames[60] = "lomoerjumping1";
global.__objectNames[61] = "lomoerjumping2";
global.__objectNames[62] = "softview";
global.__objectNames[63] = "obj_wall";
global.__objectNames[64] = "saka1";
global.__objectNames[65] = "soundmudle";
global.__objectNames[66] = "expe";
global.__objectNames[67] = "timelineboss";
global.__objectNames[68] = "bosshp";
global.__objectNames[69] = "object70";
global.__objectNames[70] = "object71";
global.__objectNames[71] = "object74";
global.__objectNames[72] = "object73";
global.__objectNames[73] = "object77";
global.__objectNames[74] = "object76";
global.__objectNames[75] = "obj_controller";
global.__objectNames[76] = "obj_controller_extra";
global.__objectNames[77] = "obj_controller_draw";
global.__objectNames[78] = "obj_jumpbutten";
global.__objectNames[79] = "obj_shotbutten";
global.__objectNames[80] = "obj_restart";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for