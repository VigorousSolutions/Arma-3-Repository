gooncorp_extrakeys = {



private ["_phandler"];




sleep 1;


_pHandler = (findDisplay 46) displayAddEventHandler ["keydown", "
	if ((_this select 1) in [0x21] && (_this select 2) ) then
	{
	
	_handle = [player] spawn gooncorp_melee;
	
	



	};
"];



              
gooncorp_equipenemymask = {
sleep 5;
{
if (side _x == civilian || side _x == east) then {

if (random 1 < .6) then {
if ((paramsarray select 20) == 1) then {
["ace_sys_goggles_setident2", [_x, "ACE_GlassesBalaklava"]] call CBA_fnc_globalEvent;
_x setVariable ['ACE_Identity',"ACE_GlassesBalaklava",true];};} else {

if ((paramsarray select 20) == 1) then {
_x setidentity "masked1";};
if ((paramsarray select 20) == 2) then {
_x setidentity "african1";};
if ((paramsarray select 20) == 0) then {
_x setidentity "viet1";};

};


};
} foreach allunits;




};











};
gooncorp_spawncivi = {

if (!isserver) exitwith {};



_airair2=creategroup civilian;

"ACE_TK_CIV_Takistani_Doctor_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner1 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Takistani02_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner2 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Takistani03_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner3 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Takistani04_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner4 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Takistani05_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner5 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Takistani06_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner6 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Worker01_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner7 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Worker02_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner8 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman01_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner9 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman02_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner10 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman03_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner11 = this",.2,"sergeant"];
sleep 2;
"ACE_TK_CIV_Takistani_Doctor_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner12 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Takistani02_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner13 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Takistani03_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner14 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Takistani04_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner15 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Takistani05_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner16 = this",.2,"sergeant"];

sleep 2;
"TK_CIV_Takistani06_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner17 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Worker01_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner18 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Worker02_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner19 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman01_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner20 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman02_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner21 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman03_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner22 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman01_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner23 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman02_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner24 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman03_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner25 = this",.2,"sergeant"];
sleep 2;
"TK_CIV_Woman03_EP1" CreateUnit [getpos (_this select 0),_airair2,"civspawner26 = this",.2,"sergeant"];

sleep 5;

{


//[_x] join groupnull;
_x disableAI "move";

_x setpos [((getpos spawnarea) select 0) + (200  + (random -400)), ((getpos spawnarea) select 1) + (200 + (random -400)), 0];


//_x move position [(spawnarea select 0) + (200 + random (-400)), (spawnarea select 1), 0];

} foreach units _airair2;















































};


gooncorp_removegear = {
sleep 2;
c = 0;
while {c < 12} do {
c = c + 1;
[player, "MAG", "ACE_Medkit"] call ACE_fnc_RemoveGear;
[player, "MAG", "ACE_Epinephrine"] call ACE_fnc_RemoveGear;
[player, "MAG", "ACE_Morphine"] call ACE_fnc_RemoveGear;
[player, "MAG", "ACE_Tourniquet "] call ACE_fnc_RemoveGear;
[player, "MAG", "ACE_Bandage"] call ACE_fnc_RemoveGear;
[player, "MAG", "ACE_LargeBandage"] call ACE_fnc_RemoveGear;
};
[player, "MAG", "ACE_Tourniquet "] call ACE_fnc_RemoveGear;
[player, "MAG", "ACE_Tourniquet "] call ACE_fnc_RemoveGear;
};















GEARSCRIPT = { 
#define ADDMAGAZINES(MAGAZINE, AMMOUNT) \
for "_i" from 1 to AMMOUNT do { \
	_unit addmagazine MAGAZINE; \
};

#define ADDWEAPON(WEAPON) \
_unit addweapon WEAPON;

#define ADDRUCKMAGAZINES(MAGAZINE, AMMOUNT) \
[_unit, MAGAZINE, AMMOUNT] call ACE_fnc_packMagazine;

#define ADDONBACKWEAPON(WEAPON) \
_unit setVariable ["ace_weaponOnBack", WEAPON];

#define ADDRUCKWEAPONS(WEAPON, AMMOUNT) \
[_unit, WEAPON, AMMOUNT] call ACE_fnc_PackWeapon;

#define PACKIFAK(SLOT1, SLOT2, SLOT3) \
[_unit, SLOT1, SLOT2, SLOT3] call ACE_fnc_PackIFAK;

_unit = _this select 0;
_type = _this select 1;
_groupName = _this select 2;

removeallweapons _unit;
removeAllItems _unit;
removebackpack _unit;

(group _unit) setGroupid [_groupName]; //Sets the name of group done for every unit to make sure its set even if there is no squad leader

#define BASIC \
ADDWEAPON("ACE_Map"); \
ADDWEAPON("ItemWatch"); \
ADDWEAPON("ItemCompass"); \
ADDWEAPON("ACE_Earplugs"); \
PACKIFAK(1, 1, 1);

_unit setVariable ["ace_w_ismedic",true];
_unit addweapon "usm_bayonet_m9";
switch (_type) do {

	case "PL": {
		BASIC;
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 8);
		ADDWEAPON("ACE_SOC_M4A1_SHORTDOT_F");
		ADDMAGAZINES("7Rnd_45ACP_1911", 3);
		ADDWEAPON("Colt1911");
		ADDWEAPON("ACRE_PRC343");
		ADDWEAPON("ACRE_PRC148");
		ADDWEAPON("NVgoggles");
		ADDWEAPON("ACE_GlassesBalaklava");
		ADDWEAPON("ACE_KeyCuffs");
		ADDWEAPON("ACE_DAGR");
		ADDWEAPON("ItemGPS");
		ADDWEAPON("ACE_Map_Tools");
		ADDWEAPON("Laserdesignator");
		ADDMAGAZINES("Laserbatteries", 1);	
		ADDONBACKWEAPON("ACE_FAST_PackEDC");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_T_Stanag", 3);
		ADDRUCKMAGAZINES("HandGrenade_West", 2);
		ADDRUCKMAGAZINES("SmokeShell", 2);
		ADDRUCKMAGAZINES("SmokeShellBlue", 2);
		ADDRUCKMAGAZINES("ACE_Flashbang", 1);	
		ADDRUCKMAGAZINES("ACE_Medkit", 1);
		ADDRUCKMAGAZINES("ACE_Largebandage", 2);
		ADDRUCKMAGAZINES("ACE_Morphine", 2);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_IR", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_B", 3);
		ADDRUCKMAGAZINES("IR_Strobe_Marker", 1);		
	};
	
	case "TL": {
		BASIC;
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 8);
		ADDWEAPON("ACE_SOC_M4A1_SHORTDOT_F");
		ADDMAGAZINES("7Rnd_45ACP_1911", 3);
		ADDWEAPON("Colt1911");
		ADDWEAPON("ACRE_PRC343");
		ADDWEAPON("ACRE_PRC148");
		ADDWEAPON("NVgoggles");
		ADDWEAPON("ACE_GlassesBalaklava");
		ADDWEAPON("ACE_KeyCuffs");
		ADDWEAPON("ACE_DAGR");
		ADDWEAPON("ItemGPS");
		ADDWEAPON("ACE_Map_Tools");
		ADDWEAPON("ACE_Rangefinder_OD");
		ADDMAGAZINES("ACE_Battery_Rangefinder", 1);	
		ADDONBACKWEAPON("ACE_FAST_PackEDC");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_T_Stanag", 3);
		ADDRUCKMAGAZINES("HandGrenade_West", 2);
		ADDRUCKMAGAZINES("SmokeShell", 2);
		ADDRUCKMAGAZINES("SmokeShellBlue", 2);
		ADDRUCKMAGAZINES("ACE_Flashbang", 1);	
		ADDRUCKMAGAZINES("ACE_Medkit", 1);
		ADDRUCKMAGAZINES("ACE_Largebandage", 2);
		ADDRUCKMAGAZINES("ACE_Morphine", 2);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_IR", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_B", 3);
		ADDRUCKMAGAZINES("IR_Strobe_Marker", 1);		
	};

	case "RIFLE": {
		BASIC;	
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 9);
		ADDWEAPON("ACE_SOC_M4A1_Eotech_F");
		ADDMAGAZINES("7Rnd_45ACP_1911", 3);
		ADDWEAPON("Colt1911");
		ADDWEAPON("ACE_M72A2");
		ADDWEAPON("ACRE_PRC343");
		ADDWEAPON("NVgoggles");
		ADDWEAPON("ItemGPS");
		ADDWEAPON("ACE_GlassesBalaklava");
		ADDWEAPON("ACE_KeyCuffs");
		ADDWEAPON("ACE_MX2A");
		ADDONBACKWEAPON("ACE_FAST_PackEDC");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 3);
		ADDRUCKMAGAZINES("100Rnd_762x51_M240", 3);
		ADDRUCKMAGAZINES("HandGrenade_West", 2);
		ADDRUCKMAGAZINES("SmokeShell", 2);
		ADDRUCKMAGAZINES("ACE_Flashbang", 1);	
		ADDRUCKMAGAZINES("ACE_Medkit", 1);
		ADDRUCKMAGAZINES("ACE_Largebandage", 2);
		ADDRUCKMAGAZINES("ACE_Morphine", 2);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_IR", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_B", 3);
	};
	
		case "RTO": {
		BASIC;	
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 9);
		ADDWEAPON("ACE_SOC_M4A1_Eotech_F");
		ADDMAGAZINES("7Rnd_45ACP_1911", 3);
		ADDWEAPON("Colt1911");
		ADDWEAPON("ACRE_PRC343");
		ADDWEAPON("NVgoggles");
		ADDWEAPON("ItemGPS");
		ADDWEAPON("ACE_GlassesBalaklava");
		ADDWEAPON("ACE_KeyCuffs");
		ADDWEAPON("UO_IDF_Backpacks_MATKALSAT");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 3);
		ADDRUCKMAGAZINES("HandGrenade_West", 2);
		ADDRUCKMAGAZINES("SmokeShell", 2);
		ADDRUCKMAGAZINES("ACE_Flashbang", 1);	
		ADDRUCKMAGAZINES("ACE_Medkit", 1);
		ADDRUCKMAGAZINES("ACE_Largebandage", 2);
		ADDRUCKMAGAZINES("ACE_Morphine", 2);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_IR", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_B", 3);
	};
	
	case "DEMO": {
		BASIC;	
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 9);
		ADDWEAPON("ACE_SOC_M4A1_Eotech_F");
		ADDMAGAZINES("7Rnd_45ACP_1911", 3);
		ADDWEAPON("Colt1911");
		ADDWEAPON("ACRE_PRC343");
		ADDWEAPON("NVgoggles");
		ADDWEAPON("ItemGPS");
		ADDWEAPON("ACE_GlassesBalaklava");
		ADDWEAPON("ACE_KeyCuffs");
		ADDONBACKWEAPON("ACE_FAST_PackEDC");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 3);
		ADDRUCKMAGAZINES("HandGrenade_West", 2);
		ADDRUCKMAGAZINES("SmokeShell", 2);
		ADDRUCKMAGAZINES("ACE_Flashbang", 1);	
		ADDRUCKMAGAZINES("ACE_Medkit", 1);
		ADDRUCKMAGAZINES("ACE_Largebandage", 2);
		ADDRUCKMAGAZINES("ACE_Morphine", 2);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_IR", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_B", 3);
		ADDRUCKMAGAZINES("PipeBomb", 2);		
		ADDRUCKMAGAZINES("ACE_C4_M", 3);		
	};

	case "RIFLEDM": {
		BASIC;
		ADDMAGAZINES("ACE_20Rnd_762x51_S_M110", 9);
		ADDWEAPON("ACE_M110");
		ADDMAGAZINES("7Rnd_45ACP_1911", 3);
		ADDWEAPON("Colt1911");
		ADDWEAPON("ACRE_PRC343"); 
		ADDWEAPON("NVgoggles");
		ADDWEAPON("ItemGPS");
		ADDWEAPON("ACE_GlassesBalaklava");
		ADDWEAPON("ACE_KeyCuffs");
		ADDWEAPON("ACE_Kestrel4500");		
		ADDONBACKWEAPON("ACE_FAST_PackEDC");
		ADDRUCKMAGAZINES("ACE_20Rnd_762x51_S_M110", 3);
		ADDRUCKMAGAZINES("HandGrenade_West", 2);
		ADDRUCKMAGAZINES("SmokeShell", 2);
		ADDRUCKMAGAZINES("ACE_Medkit", 1);
		ADDRUCKMAGAZINES("ACE_Largebandage", 2);
		ADDRUCKMAGAZINES("ACE_Morphine", 2);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_IR", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_B", 3);
	};
	
	case "GREN": {
		BASIC;	
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 9);
		ADDMAGAZINES("1Rnd_HE_M203", 4);
		ADDMAGAZINES("1Rnd_SmokeRed_M203", 1);
		ADDWEAPON("ACE_SOC_M4A1_RCO_GL_F");
		ADDMAGAZINES("7Rnd_45ACP_1911", 3);
		ADDWEAPON("Colt1911");
		ADDWEAPON("ACRE_PRC343");
		ADDWEAPON("ItemGPS");
		ADDWEAPON("NVgoggles");
		ADDWEAPON("ACE_GlassesBalaklava");
		ADDWEAPON("ACE_KeyCuffs");
		ADDWEAPON("ACE_HuntIR_monitor");			
		ADDONBACKWEAPON("ACE_FAST_PackEDC");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 3);
		ADDRUCKMAGAZINES("HandGrenade_West", 2);
		ADDRUCKMAGAZINES("SmokeShell", 2);
		ADDRUCKMAGAZINES("1Rnd_HE_M203", 21);
		ADDRUCKMAGAZINES("1Rnd_SmokeRed_M203", 4);
		ADDRUCKMAGAZINES("ACE_HuntIR_M203", 3);		
		ADDRUCKMAGAZINES("ACE_Medkit", 1);
		ADDRUCKMAGAZINES("ACE_Largebandage", 2);
		ADDRUCKMAGAZINES("ACE_Morphine", 2);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_IR", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_B", 3);
	};
	
	case "LMG": {
		BASIC;	
		ADDMAGAZINES("100Rnd_762x51_M240", 5);
		ADDWEAPON("Mk_48_DES_EP1");
		ADDMAGAZINES("7Rnd_45ACP_1911", 3);
		ADDWEAPON("Colt1911");
		ADDWEAPON("ACRE_PRC343");
		ADDWEAPON("ItemGPS");
		ADDWEAPON("NVgoggles");
		ADDWEAPON("ACE_GlassesBalaklava");
		ADDWEAPON("ACE_KeyCuffs");
		ADDONBACKWEAPON("ACE_FAST_PackEDC");
		ADDRUCKMAGAZINES("100Rnd_762x51_M240", 0);
		ADDRUCKMAGAZINES("HandGrenade_West", 2);
		ADDRUCKMAGAZINES("SmokeShell", 2);
		ADDRUCKMAGAZINES("ACE_Medkit", 1);
		ADDRUCKMAGAZINES("ACE_Largebandage", 2);
		ADDRUCKMAGAZINES("ACE_Morphine", 2);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_IR", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_B", 3);
	};
	
	case "SWCC": {
		BASIC;	
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 6);
		ADDWEAPON("ACE_SOC_M4A1_Aim");
		ADDMAGAZINES("7Rnd_45ACP_1911", 3);
		ADDWEAPON("Colt1911");
		ADDWEAPON("ACRE_PRC343");
		ADDWEAPON("ACRE_PRC148");
		ADDWEAPON("NVgoggles");
		ADDWEAPON("ItemGPS");
		ADDWEAPON("ACE_GlassesBalaklava");
		ADDWEAPON("ACE_KeyCuffs");
		
		ADDONBACKWEAPON("ACE_VTAC_RUSH72");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 0);
		ADDRUCKMAGAZINES("HandGrenade_West", 0);
		ADDRUCKMAGAZINES("SmokeShellOrange", 2);
		ADDRUCKMAGAZINES("ACE_Flashbang", 0);	
		ADDRUCKMAGAZINES("ACE_Medkit", 1);
		ADDRUCKMAGAZINES("ACE_Largebandage", 2);
		ADDRUCKMAGAZINES("ACE_Morphine", 2);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_IR", 1);
		ADDRUCKMAGAZINES("ACE_Knicklicht_B", 3);
	};
	
	case "SAD": {// Secret Agent Man Woaahh!!
		BASIC;
		ADDWEAPON("ACRE_PRC343");
		ADDWEAPON("ACE_Cellphone");
		ADDWEAPON("Kostey_notebook");
		ADDWEAPON("ACE_GlassesBlackSun");
		ADDWEAPON("ACE_KeyCuffs");

		ADDMAGAZINES("ACE_20Rnd_9x18_APSB", 3);	
		ADDONBACKWEAPON("ACE_Coyote_Pack_Black");
		ADDRUCKWEAPONS("ACE_APS", 1);
		ADDRUCKWEAPONS("ACE_YardAge450", 1);
		ADDRUCKMAGAZINES("IR_Strobe_Marker", 1);
	};
	


};


};

gooneffects = {


//gooncorp
//2014



_bullet = _this select 6; 
_oldpos = [];






			   			   
	

			
				
			   if (!isnil "_ps1") then {deletevehicle _ps1;};
				

			   


		

			   
			   while {!isnull _bullet} do {
			   _oldpos = getpos _bullet;
			  // ps1 setpos _oldpos;
		      // slight1 setpos _oldpos;
			   sleep .01;
			   };
			   
			//if (_oldpos select 0 > 0) then {
			   
			   	[-2, {
                 

               _velocity = wind;
               _color = [.14, .14, .12];
               _alpha = random .4;
				
			   _ps1 = "#particlesource" createVehicleLocal _this;  
               _ps1 setParticleParams [["\Ca\Data\ParticleEffects\Universal\universal.p3d", 16, 12, 4], "", "Billboard", 5, random 30, [0, 0, 0], [wind select 0, wind select 1, wind select 2],random 4, 1.21 + random .12, 1, 1, [random 3, random 3, random 3, random 21], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _oldpos];
               _ps1 setParticleRandom [1, [0, 0, 0], [0, 1, 0], 1, 1.2, [.1, .1, .1, .2], random .1, random .1];

               _ps1 setParticleCircle [0, [0, 0, 0]];
               _ps1 setDropInterval .01;
		       sleep .11;
			   deletevehicle _ps1;
			   //};


               }, _oldpos] call CBA_fnc_globalExecute;

	           sleep .1;
			   







};

goonhandler = {

_f1 = _this select 0;
_f2 = _this select 1;
_f3 = _this select 2;
_f4 = _this select 3;
_f5 = _this select 4;
_f6 = _this select 5;

_yuz = ceil random 3;

playsound format ["z_grunt%1", _yuz];


	if ((format ["%1", _f5]) == "B_9x19_Ball") exitwith {
	[(_this select 0),_f3,true, 15] call ace_w_setunitdam;
	};
	
	if ((format ["%1", _f5]) == "ACE_B_9x19_S") exitwith {
	[(_this select 0),_f3,true, 15] call ace_w_setunitdam;
	};
	
	if ((format ["%1", _f5]) == "B_9x19_SD") exitwith {
	[(_this select 0),_f3,true, 15] call ace_w_setunitdam;
	};
	
	if ((format ["%1", _f5]) == "B_45ACP_Ball") exitwith {
	[(_this select 0),_f3 * 1.5,true, 15] call ace_w_setunitdam;
	};
	
(_this select 0) setdammage (_this select 2);


};

vcweapons = {

removeallweapons (_this select 0);
(_this select 0) removeweapon "itemradio";
_val = floor random 12;
x = 0;
(_this select 0) setVariable ["ace_w_ismedic",true];
if (random 1 < .1) then {
(_this select 0) addmagazine "handgrenade_east";
};	
if (random 1 < .04) then {
(_this select 0) addweapon "nvgoggles";
};
if (random 1 < .04) then {
//(_this select 0) addweapon "acre_prc152";
};
	if (random 1 < .3) then {
_x addweapon "ACE_PRC119";} else {

if (random 1 < .5) then {
_x addweapon "ACE_BackPack_ACR";
};











};
	if (_val > 9) exitwith {
while {x < (5 + (floor random 12))} do {
(_this select 0) addmagazine "ACE_30Rnd_762x39_T_AK47";x = x + 1;};
(_this select 0) addweapon "ACE_AKM";
};

if (_val == 0) exitwith {
while {x < (5 + (floor random 12))} do {
(_this select 0) addmagazine "30Rnd_545x39_AK";x = x + 1;};
//(_this select 0) addmagazine "ACE_10Rnd_762x39_T_SKS";x = x + 1;};
(_this select 0) addweapon "ACE_AK74M_1P29";
//(_this select 0) addweapon "ACE_SKS";

};


if (_val == 1) exitwith {
while {x < (5 + (floor random 6))} do {
(_this select 0) addmagazine "ACE_8Rnd_12Ga_Buck00";
(_this select 0) addmagazine "ACE_8Rnd_12Ga_Slug";
 x = x + 1;};(_this select 0) addweapon "Lobo_590s";
};

if (_val == 2) exitwith {
while {x < (2 + (floor random 12))} do {
(_this select 0) addmagazine "75Rnd_545x39_RPK"; x = x + 1;};
//(_this select 0) addmagazine "ACE_20Rnd_762x51_T_G3"; x = x + 1;};
//(_this select 0) addweapon "ACE_G3A3";
(_this select 0) addweapon "ACE_RPK74M";

};


//75Rnd_545x39_RPK
//ACE_RPK74M
//30Rnd_545x39_AK
//ACE_AK74M_1P29
//ACE_75Rnd_545x39_T_RPK
//1Rnd_HE_GP25
//ACE_AK74M_GL_PSO
//ACE_40Rnd_B_46x30_MP7
//ACE_MP7

if (_val == 5) exitwith {
while {x < (2 + (floor random 12))} do {
(_this select 0) addmagazine "1Rnd_HE_GP25";
(_this select 0) addmagazine "ACE_75Rnd_545x39_T_RPK"; x = x + 1;};
//(_this select 0) addmagazine "ACE_20Rnd_762x51_B_G3"; x = x + 1;};
//(_this select 0) addweapon "ACE_G3SG1";
(_this select 0) addweapon "ACE_AK74M_GL_PSO";
};
if (_val == 6) exitwith {
while {x < (2 + (floor random 12))} do {
//(_this select 0) addmagazine "ACE_20Rnd_762x51_B_G3"; x = x + 1;};
(_this select 0) addmagazine "ACE_40Rnd_B_46x30_MP7"; x = x + 1;};
//(_this select 0) addweapon "ACE_G3A3_RSAS";
(_this select 0) addweapon "ACE_MP7";

};

if (_val == 7) exitwith {
x = 0;
while {x < (2 + (floor random 4))} do {
(_this select 0) addmagazine "100Rnd_762x54_PK"; x = x + 1;};
(_this select 0) addweapon "pk";
};
if (_val == 8) exitwith {
x = 0;
while {x < (2 + (floor random 4))} do {
(_this select 0) addmagazine "ACE_RPG29_TBG29"; x = x + 1;};
(_this select 0) addweapon "ACE_RPG29";
};
if (_val == 9) exitwith {
x = 0;
while {x < (2 + (floor random 8))} do {
(_this select 0) addmagazine "20Rnd_9x19_EVO"; x = x + 1;};
(_this select 0) addweapon "Evo_mrad_ACR";
};

if (_val == 3) exitwith {
while {x < (2 + (floor random 4))} do {
(_this select 0) addmagazine "ACE_OG7_PGO7"; x = x + 1;};
(_this select 0) addweapon "RPG7V";
};

(_this select 0) addweapon "nvgoggles";

			};



























































		
gooncorp_scoring = {
if (!isserver) exitwith {};
hint "top of scoring";
sleep 1;
_gametype = (_this select 0);
_opforDeathPercentage = (_this select 1) / 100;
_bluforDeathPercentage = (_this select 2) / 100;
_countedai = false;
_opforaicountatstart = 0;
_currentopforaicount = 0;
private ["_countedai"];

private ["_opforaicountatstart"];
private ["_currentopforaicount"];
private ["_bluforDeathPercentage"];
private ["_opforDeathPercentage"];

	while {true} do {
	sleep 10;
	
	// check logic here
	if (!isnil "hvt1") then {
	call hvt_logic;};
	
	sleep 10;
	
	
	
		//    [-2, {
		
		//while {timeofday < _this} do {		
		//skiptime .1;		
		//}
		
        //},timeofday] call CBA_fnc_globalExecute;


	sleep 30;	
	if (gamehasstarted && _opforaicountatstart == 0) then 
		{
		{
		if (side _x == east && alive _x) then 
			{
			_opforaicountatstart = _opforaicountatstart + 1;
			};
		} foreach allunits;
		_countedai = true;
		};
		
		
			if (_countedai) then 
		{
		_currentopforaicount = 0;
		{
		if (side _x == east && alive _x) then 
			{
			_currentopforaicount = _currentopforaicount  + 1;
			};
		} foreach allunits;

		};
		
		
	    _currentbluforcount = 0;
		_totalblufor = 0;
		private ["_totalblufor"];
		private ["_currentbluforcount"];
		{
        if (side _x == west && alive _x) then {
		_totalblufor = _totalblufor + 1;
		if (_x distance specpen > 300) then {
		_currentbluforcount = _currentbluforcount + 1;
		};
		};
		
		} foreach allunits;
		
		//hint format ["%1 TOTAL ENEMIES _SCOREDEBUG", _opforaicountatstart];
		sleep 20;
		
		
		// score checking
		if (_countedai) then {
		if (_currentopforaicount != 0 && _opforaicountatstart != 0) then {
		if ((_currentopforaicount / _opforaicountatstart) < _opforDeathPercentage) then {
				   	[-2, {
		endmission "end1";
               }] call CBA_fnc_globalExecute;
		};
		};
		};

		
		if (_currentbluforcount != 0 && _totalblufor != 0) then {
		if ((_currentbluforcount / _totalblufor) < _bluforDeathPercentage) then {
	    [-2, {
		endmission "end2";
        }] call CBA_fnc_globalExecute;
		};
		};
		
		
		
		
		
		
	};





};			

















































			
civiweapons = {
removeallweapons (_this select 0);
removeAllItems (_this select 0);
_val = floor random 4;
x = 0;
(_this select 0) addweapon "usm_bayonet_m9";
(_this select 0) removeweapon "itemradio";	
if (random 1 < .3) then {(_this select 0) addweapon "ACE_MugLite";};
if (random 1 < .2) exitwith {
while {x < (2 + (floor random 5))} do { 
(_this select 0) addmagazine "ACE_8Rnd_12Ga_Buck00";
(_this select 0) addmagazine "ACE_8Rnd_12Ga_Slug"; x = x + 1;};
(_this select 0) addweapon "lobo_590s";
};
if (_val == 0) exitwith {
while {x < (2 + (floor random 6))} do {
(_this select 0) addmagazine "ACE_33Rnd_9x19_G18";x = x + 1;};
(_this select 0) addweapon "ACE_Glock18";
};
if (_val == 1) exitwith {
while {x < (8 + (floor random 9))} do {
(_this select 0) addmagazine "6Rnd_45ACP";x = x + 1;};
(_this select 0) addweapon "revolver_EP1";
};
if (_val == 2) exitwith {
while {x < (8 + (floor random 9))} do {
(_this select 0) addmagazine "5x_22_LR_17_HMR";x = x + 1;};
(_this select 0) addweapon "huntingrifle";
};
if (_val == 3) exitwith {
while {x < (8 + (floor random 9))} do {
(_this select 0) addmagazine "ACE_30Rnd_9x19_S_EVO";x = x + 1;};
(_this select 0) addweapon "ACE_EVO3_CCO_F";
};

};		


	
			
VEHGEARSCRIPT = {

//vehGear.sqf

#define CLEARCARGO \
clearMagazineCargo _veh; \
clearWeaponCargo _veh;

#define ADDMAGAZINECARGO(MAGAZINE, AMMOUNT) \
_veh addMagazineCargo [MAGAZINE, AMMOUNT];

#define ADDWEAPONCARGO(WEAPON, AMMOUNT) \
_veh addWeaponCargo [WEAPON, AMMOUNT];

_veh = _this select 0;
_type = _this select 1;

switch (_type) do {

	case "GMV": {
		CLEARCARGO;
		ADDMAGAZINECARGO("ACE_30Rnd_556x45_S_Stanag", 20);
		ADDMAGAZINECARGO("7Rnd_45ACP_1911", 5);
		ADDMAGAZINECARGO("ACE_30Rnd_556x45_T_Stanag", 5);
		ADDMAGAZINECARGO("HandGrenade_West", 5);
		ADDMAGAZINECARGO("SmokeShell", 5);
		ADDMAGAZINECARGO("SmokeShellBlue", 5);
		ADDMAGAZINECARGO("100Rnd_762x51_M240", 10);
		ADDMAGAZINECARGO("PipeBomb", 1);	
		ADDMAGAZINECARGO("1Rnd_HE_M203", 10);	
		ADDMAGAZINECARGO("1Rnd_SmokeRed_M203", 5);
		ADDMAGAZINECARGO("ACE_Largebandage", 5);
		ADDMAGAZINECARGO("ACE_Morphine", 5);
		ADDMAGAZINECARGO("ACE_Epinephrine", 5);		
		ADDMAGAZINECARGO("ACE_Medkit", 5);	
		ADDMAGAZINECARGO("MAAWS_HEDP", 6);	
		ADDMAGAZINECARGO("ACE_8Rnd_12Ga_Buck00", 10);	
		ADDMAGAZINECARGO("ACE_8Rnd_12Ga_Slug", 10);			
		ADDWEAPONCARGO("MAAWS", 1);
		ADDWEAPONCARGO("ACRE_PRC148", 1);	
		ADDWEAPONCARGO("ACE_M1014_Eotech", 1);
		ADDMAGAZINECARGO("100Rnd_556x45_BetaCMag", 5);
		
	};
	
		case "GMV2": {
		CLEARCARGO;
		ADDMAGAZINECARGO("ACE_30Rnd_556x45_S_Stanag", 20);
		ADDMAGAZINECARGO("7Rnd_45ACP_1911", 5);
		ADDMAGAZINECARGO("ACE_30Rnd_556x45_T_Stanag", 5);
		ADDMAGAZINECARGO("HandGrenade_West", 5);
		ADDMAGAZINECARGO("SmokeShell", 5);
		ADDMAGAZINECARGO("SmokeShellBlue", 5);
		ADDMAGAZINECARGO("100Rnd_762x51_M240", 10);
		ADDMAGAZINECARGO("PipeBomb", 1);
		ADDMAGAZINECARGO("ACE_20Rnd_762x51_S_M110", 10);		
		ADDMAGAZINECARGO("ACE_Largebandage", 5);
		ADDMAGAZINECARGO("ACE_Morphine", 5);
		ADDMAGAZINECARGO("ACE_Epinephrine", 5);		
		ADDMAGAZINECARGO("ACE_Medkit", 5);
		ADDMAGAZINECARGO("ACE_8Rnd_12Ga_Buck00", 10);	
		ADDMAGAZINECARGO("ACE_8Rnd_12Ga_Slug", 10);
		ADDWEAPONCARGO("ACE_M1014_Eotech", 1);			
		ADDWEAPONCARGO("ACRE_PRC148", 1);
		ADDMAGAZINECARGO("100Rnd_556x45_BetaCMag", 5);		
	};
	
	case "CRATE": {
		CLEARCARGO;
		ADDMAGAZINECARGO("100Rnd_556x45_BetaCMag", 10);	
		ADDMAGAZINECARGO("ACE_30Rnd_556x45_S_Stanag", 50);
		ADDMAGAZINECARGO("ACE_30Rnd_556x45_T_Stanag", 10);
		ADDMAGAZINECARGO("7Rnd_45ACP_1911", 10);
		ADDMAGAZINECARGO("HandGrenade_West", 5);
		ADDMAGAZINECARGO("1Rnd_HE_M203", 20);
		ADDMAGAZINECARGO("SmokeShell", 5);
		ADDMAGAZINECARGO("SmokeShellBlue", 5);
		ADDMAGAZINECARGO("100Rnd_762x51_M240", 10);
		ADDMAGAZINECARGO("ACE_Largebandage", 10);
		ADDMAGAZINECARGO("ACE_Morphine", 10);
		ADDMAGAZINECARGO("ACE_Epinephrine", 10);		
		ADDMAGAZINECARGO("ACE_Medkit", 10);
		
		ADDWEAPONCARGO("ACE_M4A1_ACOG_PVS14_F", 6);// NIGHT CAPABLE WEAPONS
		ADDWEAPONCARGO("ACE_SOC_M4A1_Eotech_4x_F", 6);
		ADDWEAPONCARGO("ACE_SOC_M4A1_TWS_F", 2);
		ADDWEAPONCARGO("M110_NVG_EP1", 1);
		ADDWEAPONCARGO("lobo_590s", 1);
	};
	
	
};

};	
			
			
spectate = {
//gdtmod_seagull.sqf
//by HeinBloed
// modified by gooncorp
//http://www.gdt-server.net/
//
//===========================
if (side player == east) then {
titleText ["You are Dead! Killed by an American!",  "black faded"]; };
if (side player == west) then {
titleText ["You are Dead! Killed by ISIS!",  "black faded"]; };
waitUntil {alive player};
if (side player == west) then {
titleText ["You are Dead! Killed by ISIS!",  "black faded"]; };
if (side player == east) then {
titleText ["You are Dead! Killed by an American!",  "black faded"]; };

[player] join grpnull; 
titleText ["RIP - You are now entering a modified spectator script, please do not complain.", "black faded"]; 
sleep 5;
player cameraEffect ["terminate","back"];
camDestroy _cam;
sleep 3;
private["_keydown_Help", "_keydown_NightVision", "_keydown_camconstruct", "_keydown_switchCamera", "_mousez", "_playableUnits", "_z"];
_ret = [true] call acre_api_fnc_setSpectator;
spectator_start = specstart;
gdtmod_seagull_nvg = false;
gdtmod_seagull_camera_on = true;
gdtmod_seagull_camera_help = false;
gdtmod_seagull_players = [];
{if (alive _x && _x distance specpen > 200 ) then {gdtmod_seagull_players = gdtmod_seagull_players + [_x]; }} foreach allUnits;
gdtmod_seagull_players_count = count gdtmod_seagull_players - 1;
gdtmod_seagull_target = spectator_start;
gdtmod_seagull_players_select = 0;
gdtspec_on = true;
//waitUntil {typeof cameraOn == "SeaGull"};

_text = "You will now go into Spectate...\n\nGDT SPECTATOR\n----------------------------------------------------------------------------------------------\n\nPress your help button (Standard: H) for instructions";

cutText  [_text,"PLAIN"];
setAperture -1;
sleep 1;
spectator_start = specstart;
gdtmod_seagull_camera = "camconstruct" camcreate [getPos specstart select 0, (getPos specstart select 1), (getPos specstart select 2)];
[gdtmod_seagull_camera] call findaveragevector ;
gdtmod_seagull_camera setdir (getdir specstart);	
gdtmod_seagull_camera camConstuctionSetParams [getPos spectator_start, 20000, 10000];
gdtmod_seagull_camera cameraeffect ["internal","back"];
titleText ["", "BLACK IN", 0.2];

//with uiNamespace {

	_keydown_help = (finddisplay 46) displayaddeventhandler ["keydown", "
		if ((_this select 1) in (actionkeys 'Help')) then {
			if (not gdtmod_seagull_camera_help) then {
				cutText ['Mousewheel:                     Camera jumps to player positions\nLeft mouse button:                                     Freelock\nRight mouse button:                     Camera locked on Player\nMovement keys and mouse:                          Move camera\n\nQ:                                              Move camera up\nY or Z:                                      Move camera down\nSHIFT Left:                                      Slow movement\n\nNightvision key:                              Nightvision On/Off\n\nWhile the camera is locked on a player you can change between\n1st/3rd person, optics and group view.\nPress the help button to exit the help screen.', 'BLACK OUT'];
				gdtmod_seagull_camera_help = true;
			}
			else {
				cutText ['Mousewheel:                     Camera jumps to player positions\nLeft mouse button:                                     Freelock\nRight mouse button:                     Camera locked on Player\nMovement keys and mouse:                          Move camera\n\nQ:                                              Move camera up\nY or Z:                                      Move camera down\nSHIFT Left:                                      Slow movement\n\nNightvision key:                              Nightvision On/Off\n\nWhile the camera is locked on a player you can change between\n1st/3rd person, optics and group view.\nPress the help button to exit the help screen.', 'BLACK IN'];
				gdtmod_seagull_camera_help = false;
			};
		};
	"];
	_keydown_nightVision = (finddisplay 46) displayaddeventhandler ["keydown", "
		if ((_this select 1) in (actionkeys 'NightVision')) then {
			if (gdtmod_seagull_nvg) then {
			  camUseNVG false;
				gdtmod_seagull_nvg = false;
			}	else {
			  camUseNVG true;
				gdtmod_seagull_nvg = true;
			};
	  };
	"];
	_keydown_camConstruct = (finddisplay 46) displayaddeventhandler ["MouseButtonDown", "
		if (((_this select 1) == 0) and (not gdtmod_seagull_camera_on)) then {
			gdtmod_seagull_camera cameraeffect ['internal', 'back'];
			gdtmod_seagull_camera setpos [((position gdtmod_seagull_target) select 0) + ((sin (getdir gdtmod_seagull_target)) * ( - 10)), ((position gdtmod_seagull_target) select 1) + ((cos (getdir gdtmod_seagull_target)) * (- 10)), ((position gdtmod_seagull_target) select 2) + 2];
			gdtmod_seagull_camera setdir getdir gdtmod_seagull_target;		
			gdtmod_seagull_camera_on = true;
	  };
	"];
	_keydown_switchCamera = (finddisplay 46) displayaddeventhandler ["MouseButtonDown", "
		if (((_this select 1) == 1) and gdtmod_seagull_camera_on) then {
			if (not (alive (gdtmod_seagull_players select gdtmod_seagull_players_select)) || (gdtmod_seagull_players select gdtmod_seagull_players_select) distance [0,0,0] < 200) then {
				while {not (alive (gdtmod_seagull_players select gdtmod_seagull_players_select)) || (gdtmod_seagull_players select gdtmod_seagull_players_select) distance [0,0,0] < 200} do {
					gdtmod_seagull_players_select = gdtmod_seagull_players_select + 1;
					if (gdtmod_seagull_players_select > gdtmod_seagull_players_count) then {gdtmod_seagull_players_select = 0};
				};
				gdtmod_seagull_target = vehicle (gdtmod_seagull_players select gdtmod_seagull_players_select);
			};
			gdtmod_seagull_camera cameraeffect ['Terminate', 'back'];
			cutText [format['                   %1', name gdtmod_seagull_target],'PLAIN DOWN'];
			gdtmod_seagull_target switchCamera 'EXTERNAL';
			gdtmod_seagull_camera_on = false;
			gdtmod_seagull_camera_help = false;
	  };
	"];
	_keydown_mouseZ = (findDisplay 46) displayAddEventHandler ["mousezchanged", "
		if (count gdtmod_seagull_players > 0) then {
			_z = _this select 1;
			if (_z  < 0) then {
				gdtmod_seagull_players_select = gdtmod_seagull_players_select - 1;
				if (gdtmod_seagull_players_select < 0) then {gdtmod_seagull_players_select = gdtmod_seagull_players_count};
				while {not (alive (gdtmod_seagull_players select gdtmod_seagull_players_select)) || (gdtmod_seagull_players select gdtmod_seagull_players_select) distance [0,0,0] < 200} do {
					gdtmod_seagull_players_select = gdtmod_seagull_players_select - 1;
					if (gdtmod_seagull_players_select < 0) then {gdtmod_seagull_players_select = gdtmod_seagull_players_count};
				};
				gdtmod_seagull_target = vehicle (gdtmod_seagull_players select gdtmod_seagull_players_select);		
			}
			else {
				gdtmod_seagull_players_select = gdtmod_seagull_players_select + 1;
				if (gdtmod_seagull_players_select > gdtmod_seagull_players_count) then {gdtmod_seagull_players_select = 0};
				while {not (alive (gdtmod_seagull_players select gdtmod_seagull_players_select)) || (gdtmod_seagull_players select gdtmod_seagull_players_select) distance [0,0,0] < 200} do {
					gdtmod_seagull_players_select = gdtmod_seagull_players_select + 1;
					if (gdtmod_seagull_players_select > gdtmod_seagull_players_count) then {gdtmod_seagull_players_select = 0};
				};
				gdtmod_seagull_target = vehicle (gdtmod_seagull_players select gdtmod_seagull_players_select);
			};
			cutText [format['                   %1', name gdtmod_seagull_target], 'PLAIN DOWN'];
			if (gdtmod_seagull_camera_on) then {
			  gdtmod_seagull_camera setpos [((position gdtmod_seagull_target) select 0) + ((sin (getdir gdtmod_seagull_target)) * ( - 10)), ((position gdtmod_seagull_target) select 1) + ((cos (getdir gdtmod_seagull_target)) * (- 10)), ((position gdtmod_seagull_target) select 2) + 2];
			  gdtmod_seagull_camera setdir getdir gdtmod_seagull_target;
			}	else {
			  gdtmod_seagull_target switchCamera 'EXTERNAL';
			};
			gdtmod_seagull_camera_help = false;
		};
	"];
while {true} do {
	gdtmod_seagull_players = [];
	{if (alive _x && _x distance specPen > 200) then {gdtmod_seagull_players = gdtmod_seagull_players + [_x]; }} foreach AllUnits;
	gdtmod_seagull_players_count = count gdtmod_seagull_players - 1;
  sleep 0.25;
};
};

gooncorp_melee = {


_objects = (position player) nearEntities [["Man"], 2];
if (isStabbing) exitwith {player globalchat "I'm already trying to stab someone!";};
if (!(player hasWeapon "usm_bayonet_m7") && !(player hasWeapon "usm_bayonet_m9")) exitwith {player globalchat "I do not have a knife with me.";};
hasStabbed = false;
isStabbing = true;
{

if (side _x == east && alive _x) exitwith {
hasStabbed = true;



rNum = floor random 4;

if (rNum == 0) then {
player globalchat "Eat it!";};
if (rNum == 1) then {
player globalchat "Die!";};
if (rNum == 2) then {
player globalchat "Take my knife!";};
if (rNum == 3) then {
player globalchat "Your life has ended.";};



	strangler = player;
	victim = _x;
	
	
	myscore = score player;
	myscore = myscore + 1;
	publicvariable "strangler";
	publicvariable "victim";
	publicvariable "myscore";
	sleep .27;
	

	
	[-2, {
	if (player distance victim < 55) then {
	victim say3d "Splat";	};
	

	

strangler addscore 1;



	
	strangler switchmove "c7a_bravo_dovadeni5";
	strangler attachto [victim, [0, -.7, 0]];
	
	
	
	
sleep .1;
chuck = victim;
lal = random 330;
val = round lal;
if (player distance chuck < 35) then {

	chuck say3d format ["ACE_scream%1",val];
	

};


               obj = vehicle victim;
               pos = position obj;
               velocity = [0,0,.1];
               color = [.5, 0, 0];
               alpha = .7;
               ps11 = "#particlesource" createVehicleLocal pos;  
               ps11 setParticleParams [["\Ca\Data\ParticleEffects\Universal\universal.p3d", 16, 4, 12], "", "Billboard", 1, 2, [0, 0, .6], wind, 1, 2, 1, 0, [.004 + (random .02)], [color + [0], color + [alpha], color + [0]], [1000], 1, 1, "", "", obj];
               ps11 setParticleRandom [.1, [0, 0, 1], [random 1, random 1, 1.5], 1, 0, [0, 0, .2, 1.1], 0, 1];
               ps11 setParticleCircle [0, [0, 0, 0]];
               ps11 setDropInterval .01;
		
			   




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	victim switchmove "c5efe_AlexDeath";
	sleep .9;
	strangler switchmove "";
	detach strangler;
	

	
	ps11 setpos getpos victim;
	sleep 1;
	
victim setdammage 2;
deletevehicle ps11;

	
	}] call CBA_fnc_globalExecute;
};



} foreach _objects;



if (!hasStabbed) then {

rNum = floor random 4;

if (rNum == 0) then {
player globalchat "Run through who, yourself?";};
if (rNum == 1) then {
player globalchat "No one is around...";};
if (rNum == 2) then {
player globalchat "You cannot see any enemies nearby to bury your knife into.";};
if (rNum == 3) then {
player globalchat "You really like playing with knives dont you?";};
sleep 1;
};

isStabbing = false;













};
briefingfile = {
if (isDedicated) exitWith { };
	waitUntil {!(isNull player)};
	waitUntil {player==player};
	
		player createDiaryRecord ["Diary",["CREDITS","
	

		<br/>A GoonCorp Mission.
		<br/>
		<br/>Thanks to United Operations for facilitation.
		<br/>
		<br/>
		<br/>Special thanks to Darksidesix.
		
	"]];
	
	
	
		player createDiaryRecord ["Diary",["ADVANCED FEATURES","
	
		<br/>This is not a normal mission.
		<br/>
		<br/>This mission uses a special spectator script.
		<br/>
		<br/>Americans each possess a KBAR knife they can use for silent attacks with SHIFT F, you must have a kbar in your inventory for this to work.
		<br/>
		<br/>Enemies and city are generated procedurally.
		
	"]];
	
	

	

	player createDiaryRecord ["Diary",["MISSION NOTES","
	
		<br/>Victory is achieved by completing the mission as indicated:
		<br/>
		<br/>Clear the town of enemy combatants.
		<br/>
		<br/>Mission failure will result after 80 percent of friendly forces are killed or timer runs out.
		<br/>
		<br/>Mission uses Ace Medical, everyone is a medic.
		
	"]];	



player createDiaryRecord ["Diary",["APPENDIX A: Mission TO&E","

		<br/> 1st Platoon, Seal Team 4, Naval Special Warfare Group 2
		<br/>	[
		<br/>	[-- 1 Platoon, 16 Personnel
		<br/>	[	
		<br/>	[              x3 Assault Teams (4 personell)
		<br/>	[	
		<br/>	[              x1 Support Team (4 personell)
		<br/>	[		
		<br/>	[              x4 GMV (M2 HMG)
		<br/>	[	
	
	"]];

player createDiaryRecord ["Diary",["COMMAND AND SIGNAL","

		<br/>Long Range: (AN/PRC117  AN/PRC148)
		<br/>
		<br/>  1 Platoon Net   -  Channel 1
		<br/>
		<br/>Short Range : (AN/PRC343)
		<br/>
		<br/>  Team Net   -  Channel 1-4
		<br/>
		<br/>
		<br/>  Callsigns at CO's discretion.

	"]];
			
	player createDiaryRecord ["Diary",["SERVICE SUPPORT","
	
		<br/>1. Support
		<br/>
		<br/>none
		<br/>
		<br/>2. Ammo
		<br/>
		<br/>Extra Ammo and AT in Vehicles
		<br/>


	"]];

	player createDiaryRecord ["Diary",["EXECUTION","
		
		<br/>Intent Statement: It is the commander's intent that the mission be completed swiftly with minimal friendly casualties.
		<br/>
		<br/>1. Concept of the Operation
		<br/>
		<br/> 1st platoon is to sweep and clear the town called ""charlie"" 012 098.
		<br/>
		<br/>2. Maneuver
		<br/>
		<br/>Mission commander's discretion.
		<br/>
		<br/>3. Timing
		<br/>
		<br/>Mission commander's discretion.
		<br/>
		<br/>4. Tasks to Maneuver Units
		<br/>
		<br/>Mission commander's discretion.
		<br/>
		<br/>

	"]];
	
	
	player createDiaryRecord ["Diary",["MISSION","
		<br/>1 Platoon is assigned with clearing the area of 012 098.  Our job is disrupt Isis operations on the Iran / Iraq border.
	"]];
	
	player createDiaryRecord ["Diary",["iii. Terrain and Weather","
		<br/>1. Terrain
		<br/>
		<br/>Terrain in the open desert is light with sparse trees and charparel. Small houses and huts spread into ghettos and large apartment complexes stretch down roadways.  
		<br/>
		<br/>2. Obstacles
		<br/>
		<br/>It is unknown if the enemy has positioned any obstacles in the interior of the city, but the enemy will likely be using ambush tactics from inside the buildings.
		<br/>
		<br/>3. Key Terrain
		<br/>
		<br/>The dominant terrain features include large stretches of open desert.
		<br/>
		<br/>4. Weather
		<br/>
		<br/>Visibility is excellent.  It is very dry right now and there will be a lot of dust.
	"]];
	
	player createDiaryRecord ["Diary",["ii. Enemy","
		<br/>2. Enemy Forces
		<br/>
		<br/>a. Disposition:
		<br/>
		<br/>The enemy disposition in this area is unknown but expected to be lightly scattered throughout the city with large formations congregating around the city center.
		<br/>
		<br/>b. Composition:
		<br/>
		<br/>Enemy forces operating in our area of operations consist of Isis fighters along with Iraqi fighters. The enemy force is well trained, highly motivated and well equipped. Enemy force is primarily equiped with a g3 variants but also posses stolen weapons looted from conquered cities.
		<br/>
		<br/>c. Strength:
		<br/>
		<br/>Enemy force strength is estimated to be approximately a 3 infantry platoons of Isis with organic guerrila teams operating in the outlying areas.  The enemy is known to posses technicals and apcs that it has stolen from Iraqi forces.
		<br/>
		<br/>d. Most Probable Course of Action
		<br/>
		<br/>Enemy forces defending their positions with defensive tactics.
		<br/>
		<br/>e. Most Dangerous Course of Action
		<br/>
		<br/>Enemy forces fix and neutralise friendly force with concentrated ambushes and close quarters battle.
	"]];
	player createDiaryRecord ["Diary",["i. Friendly","
		<br/>1. Friendly Forces
		<br/>
		<br/>a. Disposition:
		<br/>
		<br/>The rest of the Company is located off the coast on the USS Nimitz in the persian gulf.
		<br/>
		<br/>b. Higher Units Mission:
		<br/>
		<br/>Naval command has been briefed on this operation.
		<br/>
		<br/>c. Composition:
		<br/>
		<br/>1 Platoon Seal Team 4
		<br/>
	"]];
	
	player createDiaryRecord ["Diary",["SITUATION","
<br/>A sweep and clear operation is about to get underway.
	"]];
};










mekiller = {
if (!isplayer (_this select 0)) then {
sleep 40 + (random 70);
deletevehicle (_this select 0);
};
if (isplayer (_this select 0)) then {
//player setpos getpos specpen;
[(_this select 0)] spawn spectate;};
};



timechecker_gooncorp = {

if (ismultiplayer) then {
if ((paramsarray select 12) == 1) then {
skiptime 12;nighttime = true; publicvariable "nighttime";};
if ((paramsarray select 12) == 2) then {
skiptime -4;};
};




};

client_gooncorp = {
hint "starting client";
sleep 40;
hint "mission ready";
//if (side player == resistance) then {
//player allowdammage false; player setpos (getpos spawnarea);sleep 1; player allowdammage true;
//};

z = 0;
y = 0;

areaobjects = nearestObjects [spawnarea, [], 1200];
{
_x setVectorUp [0,0,1];

} foreach areaobjects;

areaobjects = nearestObjects [spawnarea, ["Building"], 2000];

{

z = z + 1;
y = y + 1;

if (y == 17) then {
y = 0;
};

if (z == 3) then {
_lighter = "#lightpoint" createVehicleLocal [0,0,0];
_lighter setlightBrightness (y * .008);
_lighter setlightAmbient[y * .7, y * .7, y * .7];
_lighter setlightColor[y * .07, y * .07, .05];
_lighter lightAttachObject [_x, [0,0,2 + (y * .5)]];
z = 0;
};





} foreach areaobjects;





{
if (side _x == east) then {

if (random 1 < .5) then {
_x setObjectTexture [0,"textures\camo25.paa"]; } else {
_x setObjectTexture [0,"textures\blackcamo2.paa"];
};


};
} foreach allunits;

nul = [player] spawn gooncorp_equipenemymask;


};

procedural_gooncorp = {


if (!isserver) exitwith {};

x = 0;

_thepos = position (_this select 0 );









_minSpawnDistance = 65;
_buildingNumber  = 200;
_citySize  = 300;
_spawntries  = 25000;
_chanceToSpawnTrees = 0.2;
_treeCluster = 100;
_treeSpread = 55;
_spawnRoads = true;
_totalTrees = 0;
_treeNumber = 500;
_night = true;
_treeSet = 3;

private ["_spawnRoads"];
private ["_treeSpread"];
private ["_minSpawnDistance"];
private ["_buildingNumber"];
private ["_chanceToSpawnTrees"];
private ["_citySize"];
private ["_spawntries"];
private ["_treeCluster"];
private ["_totalTrees"];
private ["_treeNumber"];
private ["_treeSet"];
private ["listoftreestospawn"];
private ["listofthingstospawn"];
//need to add parameters treeCluster and chanceToSpawnTrees and _treeSpread







listoftreestospawn = [
"Map_misc_fallentree2",
"MAP_t_pinusN2s",
"MAP_t_pinusN1s",
"MAP_t_stub1",
"MAP_t_stub2",
"MAP_R2_Boulder2",
"MAP_R2_Boulder1",
"MAP_t_larix3f",
"MAP_R2_Rock2",
"MAP_misc_FallenSpruce",
"MAP_misc_FallenTree1",
"MAP_misc_FallenTree2",
"MAP_t_pinusS2f"
];


listoftreestospawn = [
"MAP_t_carpinus2s",
//"MAP_t_quercus3s",
"MAP_t_acer2s",
"MAP_t_pyrus2s",
"MAP_R2_Boulder2",
"MAP_misc_stub2",
"MAP_t_alnus2s"
];

listoftreestospawn = [
"UO_t_ulmus_forest",
"MAP_t_salix2s",
"UO_t_ulmus_largeIvy",
"UO_t_ulmus_small"
];




if (isMultiplayer) then {



if ((paramsarray select 12) == 1) then {
_night = true;};
if ((paramsarray select 12) == 0) then {
_night = false;};



if ((paramsarray select 1) == 0) then {
_minSpawnDistance = 25;};
if ((paramsarray select 1) == 1) then {
_minSpawnDistance = 35;};
if ((paramsarray select 1) == 2) then {
_minSpawnDistance = 45;};
if ((paramsarray select 1) == 3) then {
_minSpawnDistance = 55;};
if ((paramsarray select 1) == 4) then {
_minSpawnDistance = 75;};


if ((paramsarray select 4) == 0) then {
_citySize = 100;};
if ((paramsarray select 4) == 1) then {
_citySize = 200;};
if ((paramsarray select 4) == 2) then {
_citySize = 500;};
if ((paramsarray select 4) == 3) then {
_citySize = 1000;};
if ((paramsarray select 4) == 4) then {
_citySize = 2000;};


if ((paramsarray select 2) == 0) then {
_buildingNumber = 250;};
if ((paramsarray select 2) == 1) then {
_buildingNumber  = 500;};
if ((paramsarray select 2) == 2) then {
_buildingNumber  = 750;};
if ((paramsarray select 2) == 3) then {
_buildingNumber  = 1000;};


if ((paramsarray select 6) == 0) then {
_spawntries = 5000;};
if ((paramsarray select 6) == 1) then {
_spawntries  = 10000;};
if ((paramsarray select 6) == 2) then {
_spawntries  = 50000;};
if ((paramsarray select 6) == 3) then {
_spawntries  = 100000;};
if ((paramsarray select 6) == 4) then {
_spawntries  = 500000;};

_spawntries  = 10000;









if ((paramsarray select 7) == 0) then {
_treeSpread = 25;};
if ((paramsarray select 7) == 1) then {
_treeSpread  = 50;};
if ((paramsarray select 7) == 2) then {
_treeSpread = 100;};
if ((paramsarray select 7) == 3) then {
_treeSpread = 170;};



if ((paramsarray select 8) == 0) then {
_treeCluster = 5;};
if ((paramsarray select 8) == 1) then {
_treeCluster  = 15;};
if ((paramsarray select 8) == 2) then {
_treeCluster = 30;};
if ((paramsarray select 8) == 3) then {
_treeCluster = 55;};
if ((paramsarray select 8) == 4) then {
_treeCluster = 100;};


if ((paramsarray select 9) == 0) then {
_chanceToSpawnTrees = .1;};
if ((paramsarray select 9) == 1) then {
_chanceToSpawnTrees  = .2;};
if ((paramsarray select 9) == 2) then {
_chanceToSpawnTrees = .5;};
if ((paramsarray select 9) == 3) then {
_chanceToSpawnTrees = .7;};
if ((paramsarray select 9) == 4) then {
_chanceToSpawnTrees = 1;};
if ((paramsarray select 9) == 5) then {
_chanceToSpawnTrees = 0;};
if ((paramsarray select 9) == 6) then {
_chanceToSpawnTrees = 0.05;};

if ((paramsarray select 14) == 1) then {
_spawnRoads = true;};
if ((paramsarray select 14) == 0) then {
_spawnRoads = false;};

if ((paramsarray select 15) == 0) then {
_treeNumber = 500;};
if ((paramsarray select 15) == 1) then {
_treeNumber = 1000;};
if ((paramsarray select 15) == 2) then {
_treeNumber = 2000;};













if ((paramsarray select 0) == 0) then {
_treeSet = 0;};
if ((paramsarray select 0) == 1) then {
_treeSet = 1;};
if ((paramsarray select 0) == 2) then {
_treeSet = 2;};
if ((paramsarray select 0) == 3) then {
_treeSet = 3;};

















if ((paramsarray select 16) == 0) then {
listofthingstospawn = [
"MAP_Panelak2",
"Land_MBG_GER_HUS_1",
"Land_MBG_GER_HUS_2",
"Land_MBG_GER_ESTATE_1",
"Land_MBG_GER_ESTATE_2",
"Land_office",
"Land_MBG_Garage_Single_B",
"Land_MBG_GER_RHUS_1",
"Land_MBG_GER_RHUS_2",
"Land_MBG_GER_RHUS_3",
"Land_MBG_GER_RHUS_4",
"Land_MBG_GER_RHUS_5",
"Land_MBG_GER_RHUS_6",
"Land_MBG_GER_RHUS_7",
"Land_MBG_GER_RHUS_8",
"Land_MBG_GER_RHUS_9", 
"Land_meh_sak", 
"Land_villa",
"Land_small_iraqi",
"Land_block2",
"Land_block3",
"Land_block7_b",
"Land_block8_b",
"Land_block9",
"Land_block9_b",
"Land_15str",
"Land_17str",
"Land_block"
];
	};


if ((paramsarray select 16) == 1) then {
listofthingstospawn = [
"MAP_Panelak2",
"Land_MBG_GER_HUS_1",
"Land_MBG_GER_HUS_2",
"Land_MBG_GER_ESTATE_1",
"Land_MBG_GER_ESTATE_2",
"Land_office",
"Land_MBG_Garage_Single_B",
"Land_MBG_GER_RHUS_1",
"Land_MBG_GER_RHUS_2",
"Land_MBG_GER_RHUS_3",
"Land_MBG_GER_RHUS_4",
"Land_MBG_GER_RHUS_5",
"Land_MBG_GER_RHUS_6",
"Land_MBG_GER_RHUS_7",
"Land_MBG_GER_RHUS_8",
"Land_MBG_GER_RHUS_9", 
"Land_meh_sak", 
"Land_villa",
"Land_small_iraqi",
"Land_block2",
"Land_block3",
"Land_block7_b",
"Land_block8_b",
"Land_block9",
"Land_block9_b",
"Land_15str",
"Land_17str",
"Land_block"
];
	};
	
	
if ((paramsarray select 16) == 2) then {// rock city
listofthingstospawn = [
"MAP_R2_RockTower",
"MAP_R2_Rock1",
"MAP_R2_Stone",
"MAP_R2_RockWall",
"Land_block2",
"Land_MBG_Police_Station_EU",
"MAP_R2_Boulder2",
"MAP_R2_Boulder1",
"MAP_R2_Boulder2",
"MAP_R2_Boulder1",
"Land_MBG_GER_ESTATE_1",
"Land_MBG_GER_ESTATE_2"
];
	};
	
	
	
	if ((paramsarray select 16) == 3) then {// industrial
listofthingstospawn = [
"MAP_Ind_Stack_Big",
"MAP_Ind_Quarry",
"MAP_Ind_Pec_01",
"MAP_Ind_Pec_02",
"Land_watertower2",
"Land_watertower1",
"MAP_Ind_Pec_03a",
"MAP_Ind_Pec_03b",
"MAP_ind_silomale",
"MAP_Ind_SawMill"
];
	};
	
	
		if ((paramsarray select 16) == 4) then {// african slums
listofthingstospawn = [
"mbg_slum03e_EO",
"mbg_slum03_EO",
"mbg_slum03c_EO",
"mbg_slum02e_EO",
"mbg_brickhouse_02_EO",
"mbg_brickhouse_01_EO"
];
	};
	
			if ((paramsarray select 16) == 5) then {// military training
listofthingstospawn = [
"MBG_Warehouse_InEditor",
"MBG_Killhouse_3_InEditor",
"MBG_Killhouse_4_InEditor",
"MBG_Killhouse_5_InEditor",
"Land_MBG_Shoothouse_1"
];
	};
	

	
} else {

listofthingstospawn = [
"MAP_Panelak2",
"Land_MBG_GER_HUS_1",
"Land_MBG_GER_HUS_2",
"Land_MBG_GER_ESTATE_1",
"Land_MBG_GER_ESTATE_2",
"Land_office",
"Land_MBG_Garage_Single_B",
"Land_MBG_GER_RHUS_1",
"Land_MBG_GER_RHUS_2",
"Land_MBG_GER_RHUS_3",
"Land_MBG_GER_RHUS_4",
"Land_MBG_GER_RHUS_5",
"Land_MBG_GER_RHUS_6",
"Land_MBG_GER_RHUS_7",
"Land_MBG_GER_RHUS_8",
"Land_MBG_GER_RHUS_9", 
"Land_meh_sak", 
"Land_villa",
"Land_small_iraqi",
"Land_block2",
"Land_block7_b",
"Land_block8_b",
"Land_block9",
"Land_block9_b",
"Land_15str",
"Land_17str",
"Land_block",
"Land_MBG_Police_Station_EU",
"Land_mbg_brickhouse_01_EO"
];

listofthingstospawn = [
"MBG_Warehouse_InEditor",
"MBG_Killhouse_3_InEditor",
"MBG_Killhouse_4_InEditor",
"MBG_Killhouse_5_InEditor",
"Land_MBG_Shoothouse_1"
];
};

if (_treeSet == 0) then {// north african
listoftreestospawn = [
"MAP_t_sorbus2s",
"Land_shez_palm_01",
"Land_shez_palm_02",
"MAP_t_sorbus2s",
"MAP_b_betulaHumilis",
"MAP_b_sambucus",
"MAP_b_craet1",
"MAP_R2_Boulder2",
"MAP_R2_Boulder1",
"MAP_R2_Boulder2",
"MAP_R2_Boulder1",
"MAP_t_populus3s",
"MAP_t_fraxinus2s",
"MAP_misc_FallenSpruce",
"MAP_misc_FallenTree1",
"MAP_misc_FallenTree2",
"MAP_misc_stub1",
"MAP_c_GrassDryLong",
"MAP_c_GrassTall",
"Land_jerabina",
"Land_olive"
];
};

if (_treeSet == 1) then {// european/pine
listoftreestospawn = [
"Map_misc_fallentree2",
"MAP_t_pinusN2s",
"MAP_t_pinusN1s",
"MAP_t_stub1",
"MAP_t_stub2",
"MAP_R2_Boulder2",
"MAP_R2_Boulder1",
"MAP_t_larix3f",
"MAP_R2_Rock2",
"MAP_misc_FallenSpruce",
"MAP_misc_FallenTree1",
"MAP_misc_FallenTree2",
"MAP_t_pinusS2f"
];
};



if (_treeSet == 2) then {// usa midwest fall
listoftreestospawn = [
"MAP_t_carpinus2s",
//"MAP_t_quercus3s",
"MAP_t_acer2s",
"MAP_t_pyrus2s",
"MAP_R2_Boulder2",
"MAP_misc_stub2",
"MAP_t_alnus2s"
];
	};
	
	if (_treeSet == 3) then {// monrovian jungle
listoftreestospawn = [
"UO_t_ulmus_forest",
"UO_t_ulmus_forestIvy",
"UO_t_ulmus_large",
"MAP_t_salix2s",
"UO_t_ulmus_largeIvy",
"UO_t_ulmus_small"
];



	};




i = 0;
_treeCount = 0;
_tries = 0;
_positionsalreadyspawned = [];
private ["_tries"];
private ["_positionsalreadyspawned"];
private ["_veh"];
_randomizerSizex = _citySize;
while { x < _buildingNumber && _tries < _spawntries } do {

if (!ismultiplayer) then {
//// hintsilent format ["trees %1 \n buildings %2 \n tries %3", _totalTrees, x, _tries];
};

sleep .1;

_shittry1 = _citysize;
_shittry2 = _citysize * 2;
_shittry3 = -(_shittry2);




_pos =  _thepos;
_xpos = _pos select 0;
_ypos = _pos select 1;
_ypos = _ypos + (_shittry1 + (Random _shittry3));
_xpos = _xpos + (_shittry1 + (Random _shittry3));



safetospawn = true;
private ["safetospawn"];
{
if ([_xpos, _ypos, _pos select 2] distance _x < _minSpawnDistance && [_xpos, _ypos, _pos select 2] distance _thepos < 75) then {
safetospawn = false;
};
} foreach _positionsalreadyspawned;
_zon = 0;
//_zon = [ [_xpos, _ypos, _pos select 2] ] call normalizer;
hint format ["_zon is %1", _zon];
if (_zon > 40) then {safetospawn = false;};

if (safetospawn) then {

if (random 1 > _chanceToSpawnTrees) then {
lateraldistance = 0;
lateraldistance = 10 + (floor random 40);
private ["lateraldistance"];
duplicatebuilding = listofthingstospawn select random (count listofthingstospawn);




if (random 1 < .3) then {
m = 0;
randombuildingamount = 2 + ( floor random 14 );
if (isMultiplayer) then {
if ((paramsarray select 16) == 2) then {
randombuildingamount = 1;
};
};
accumulator = 0;
while {m < randombuildingamount} do {

if (_spawnRoads) then {
k = 0;
u = floor random 15;
while {k < u} do {
k = k + 1;
_veh = "MAP_asf1_0_2000" createvehicle [_xpos + accumulator, _ypos + 40, _pos select 2];
_veh setdir 90;
if (random 1 < .2) then {
x = x + 1;};
_tries = _tries + 1;
accumulator = accumulator + 4;};
};

m = m + 1;
sleep .2;
if (m == 1) then {lateraladder = lateraldistance;};
lateraldistance = lateraldistance + lateraladder;
safetospawn = true;
{
if ([_xpos + lateraldistance, _ypos, _pos select 2] distance _x < _minSpawnDistance && [_xpos + (lateraldistance), _ypos, _pos select 2] distance _thepos < 75) then {
safetospawn = false;
};
} foreach _positionsalreadyspawned;
_zon = 0;
//_zon = [[_xpos + lateraldistance, _ypos, _pos select 2]] call normalizer;
hint format ["_zon is %1", _zon];
if (_zon > 40) then {safetospawn = false;};
if (safetospawn) then  {

_veh = (duplicatebuilding) createvehicle [_xpos + (lateraldistance ), _ypos, _pos select 2];
if (_zon > 10) then {
//_veh setpos [(getpos _veh select 0), (getpos _veh select 1), (getpos _veh select 2) + -(.1 + random .3)];
};
if (isMultiplayer) then {
if ((paramsarray select 16) == 2) then {
_veh setdir (random 360); 
};
};

_positionsalreadyspawned = _positionsalreadyspawned + [position _veh];
x = x + 1;
};
};
};





_veh = (duplicatebuilding) createvehicle [_xpos, _ypos, _pos select 2];} else {


if (_zon > 10) then {
//_veh setpos [(getpos _veh select 0), (getpos _veh select 1),  -(.1 + random .2)];
};





_treeCount = 0;
_treeIterations = 0;
_treeIterations = floor (random _treeCluster);

while {_treeCount < _treeIterations && (_totalTrees < _treeNumber)} do {


_tries = _tries + 1;



_shittry5 = _treeSpread;
_shittry6 = _treeSpread * 2;
_shittry7 = -(_shittry6);






_ypis = _ypos + (_shittry5 + (Random _shittry7));
_xpis = _xpos + (_shittry5 + (Random _shittry7));

//sleep .1;
_treeCount = _treeCount + 1;
_totalTrees = _totalTrees + 1;
_tree = (listoftreestospawn select random (count listoftreestospawn)) createvehicle [_xpis, _ypis, _thepos select 2];
_tree setdir (random 360);
if (_treeSet == 2) then {if (random 1 < .1) then {_tree setdammage 1;};};
};
if (isMultiplayer) then {
if ((paramsarray select 16) == 2) then {
_veh setdir (random 360); 
};
};

};









_positionsalreadyspawned = _positionsalreadyspawned + [position _veh];
x = x + 1;

};





_tries = _tries + 1;



// start the code here since arma cannot use real functions properly


// end the code







//// hint format ["zin is %1", _zin];





//};
};
proceduralspawn = true;
publicvariable "proceduralspawn";
	    [-2, {
		proceduralspawn = true;
        }] call CBA_fnc_globalExecute;
};










normalizer = {
hint "calling normalizer";
_zin = 0;
_possiblepos = (_this select 0);
_x_pos = _possiblepos select 0;
_y_pos = _possiblepos select 1;
_z_pos = _possiblepos select 2;
_n_pos = _y_pos + 24;
_s_pos = _y_pos - 24;
_w_pos = _x_pos - 24;
_e_pos = _x_pos + 24;
_n_height = getTerrainHeightASL [_x_pos, _n_pos];
_s_height = getTerrainHeightASL [_x_pos, _s_pos];
_w_height = getTerrainHeightASL [_w_pos, _y_pos];
_e_height = getTerrainHeightASL [_e_pos, _y_pos];
_zin = abs(_z_pos - (_n_height + _s_height + _w_height + _e_height) / 4);
//if (_zin > 2) then {deletevehicle _veh; x = x - 1;};
//if (_zin > .01) then {
//_veh setpos [(getpos _veh select 0), (getpos _veh select 1), (getpos _veh select 2) + -(_zin * 2)];};
_zin;
};



















jip_gooncorp = {

if (!isServer && isNull player) then {

waitUntil {!isNull player};
player globalchat "im a jip";

sleep 7;
player globalchat "im a jip";

sleep 7;
player globalchat "im a jip";

call timechecker_gooncorp;

sleep 5;

if (nighttime) then {
skiptime 12;
};

};

};



hvt_logic = {
hint " hvt distance";
if (isnil "hvt1") exitwith {};
{
if (isplayer _x && alive _x && _x distance hvt1 < 5) then {
[hvt1] join _x;
};
} foreach allunits;

if (hvt1 distance usbase < 70) then {
				   	[-2, {
		endmission "end1";
               }] call CBA_fnc_globalExecute;
};



};

debugging_gooncorp = {


while {true} do 

	{
	_j = 0;
{
   if ((side _x) == East && alive _x) then 
   {
    _j = _j + 1;
   };
} forEach allUnits;

sleep 3;

// hint format ["DEBUGGING : %1 total enemies", _j];
	
sleep 5 + random 4;

	};


};



zombiespawn = {
sleep 23;
if (!isserver) exitwith {};
while  {true} do 

{
// hint "debug 1";
_p = 0;
_i = 0;
{
   if ((side _x) == East && alive _x) then 
   {
    _p = _p + 1;
   };
} forEach allUnits;

if (_p < 95) then {

// hint  "debug 2";
_waitingtospawn = true;
private ["_waitingtospawn"];
while {_waitingtospawn} do {
// hint  "debug 3";
sleep 1;
//// hint "checking zombie spawn1";
_possibleSpawnPoints = nearestObjects [(_this select 0), ["house"], 1000];
zombiespawnobject = _possibleSpawnPoints select (random (count _possibleSpawnPoints));
sleep 10;
private ["_zombiespawnobject"];
_zombiespawnpoint = getpos _zombiespawnobject;
_safetospawn = true;
private ["_safetospawn"];
private ["zombiespawnpoint"];
//// hint "checking zombie spawn2";
sleep 1;
{
if (_x distance _zombiespawnpoint < 500) then {
_safetospawn = false;
_waitingtospawn = false;
//// hint "debug 4";
};
} foreach playableunits;
sleep 5;
if (_safetospawn) exitwith {_waitingtospawn = false;};

};

sleep 1;
//// hint "spawning!!! zombies 1";


_randomnumber = 40 + (random 30);
//// hint "spawning!!! zombies 2";
_zom = creategroup east;
			while {_i < _randomnumber} do 
			{
			//// hint "spawning!!! zombies 3";
			_i = _i + 1;
			"TK_INS_Soldier_TL_EP1" CreateUnit [getpos zombiespawnobject,_zom,"bobby = this",.5,"sergeant"];
			//// hint "spawning!!! zombies 4";
			bobby addEventHandler ["killed", {_this spawn mekiller}];
			bobby allowdammage false;
			bobby setpos [(getpos bobby select 0) + random 50, (getpos bobby select 1) + random 50, (getpos bobby select 2)];
			sleep .4;
			};
			leader _zom execfsm "handmelee.fsm";
		};
		sleep 40 + random 40;
	};

};






enemyspawn_gooncorp = {

if (!isserver) exitwith {};
_exitout = false;
private ["_exitout"];
if (isMultiplayer) then {
if ((paramsarray select 11) == 3) then {
[spawnarea] spawn zombiespawn;
_exitout = true;
};
};

if (_exitout) exitwith {};
_enemyNumber = 45;
_groupAlone = .8;
_armor = false;
_novehicles = false;
private ["_novehicles"];
private ["_armor"];
private ["_enemyNumber"];
private ["_groupAlone"];
if (isMultiplayer) then {



if ((paramsarray select 3) == 0) then {
_enemyNumber = 25;};
if ((paramsarray select 3) == 1) then {
_enemyNumber  = 30;};
if ((paramsarray select 3) == 2) then {
_enemyNumber  = 32;};
if ((paramsarray select 3) == 3) then {
_enemyNumber  = 35;};
if ((paramsarray select 3) == 4) then {
_enemyNumber  = 37;};

if ((paramsarray select 5) == 0) then {
_groupAlone = .5;};
if ((paramsarray select 5) == 1) then {
_groupAlone  = .7;};
if ((paramsarray select 5) == 2) then {
_groupAlone  = .8;};
if ((paramsarray select 5) == 3) then {
_groupAlone  = .9;};
if ((paramsarray select 5) == 4) then {
_groupAlone  = 1.0;};


if ((paramsarray select 11) == 0) then {
_novehicles = false;
_armor  = true;
};
if ((paramsarray select 11) == 1) then {
_novehicles = false;
_armor  = false;
};
if ((paramsarray select 11) == 2) then {
_novehicles = true;
_armor  = false;
};

if ((paramsarray select 11) == 3) then {
_novehicles = true;
_armor  = false;
_enemyNumber = 120;
};
















};
lump = _this select 0;
_airair=creategroup east;

"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner1 = this",.2,"sergeant"];
sleep .2;
"TK_INS_Soldier_MG_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner2= this",.2,"private"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner3= this",.2,"corporal"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner4= this",.2,"corporal"];
sleep .2;
"TK_INS_Bonesetter_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner5= this",.2,"corporal"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner6= this",.2,"corporal"];
sleep .2;
"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner7 = this",.2,"sergeant"];
sleep .2;
"TK_INS_Soldier_MG_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner8= this",.2,"private"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner9= this",.2,"corporal"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair,"marshspawner10= this",.2,"corporal"];
_randomnumber = 45 + (floor (random _enemyNumber));
_z = 0;
private ["_z"];

while {_z < _randomnumber} do {
_z = _z + 1;
"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair,"bobby = this",.3,"sergeant"];
bobby allowdammage false;
bobby setpos [(getpos bobby select 0) + random 50, (getpos bobby select 1) + random 50, 2];
sleep .7;
bobby allowdammage true;
if (random 1 < .05) then {
_airair2=creategroup east;
sleep .2;
"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair2,"bobby11 = this",.3,"private"];
sleep .2;
"TK_INS_Soldier_MG_EP1" CreateUnit [position (_this select 0),_airair2,"bobby12 = this",.3,"private"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair2,"bobby13 = this",.3,"private"];
sleep .2;
};
if (random 1 < .05) then {
_airair2=creategroup east;

private ["_tank1"];

_tanknumber = floor random 2;
if (!_armor) then {
if (!_novehicles) then {
if (_tanknumber == 0 ) then {
_tank1 = "Offroad_DSHKM_Gue" createVehicle (position (_this select 0));
_tank1 setpos [(getpos _tank1 select 0) + random 250, (getpos _tank1 select 1) + random 50, 0];
};
if (_tanknumber == 1 ) then {
_tank1 = "LandRover_SPG9_TK_EP1" createVehicle (position (_this select 0));
_tank1 setpos [(getpos _tank1 select 0) + random 250, (getpos _tank1 select 1) + random 50, 0];
};

};

} else {

_tanknumber = floor random 2;
if (!_novehicles) then {
if (_tanknumber == 0 ) then {
_tank1 = "T55_TK_GUE_EP1" createVehicle (position (_this select 0));
_tank1 setpos [(getpos _tank1 select 0) + random 250, (getpos _tank1 select 1) + random 50, 0];
};
if (_tanknumber == 1 ) then {
_tank1 = "ACE_BTR70_INS" createVehicle (position (_this select 0));
_tank1 setpos [(getpos _tank1 select 0) + random 250, (getpos _tank1 select 1) + random 50, 0];
};

};
};





sleep .2;
"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair2,"bobby3 = this",.5,"sergeant"];
sleep .2;
"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair2,"bobby4 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair2,"bobby5 = this",.5,"private"];
sleep .2;

bobby3 setvariable ["smallergroupleader", true];

if (!isnil "_tank1") then {
bobby3 moveindriver _tank1;
bobby4 moveingunner _tank1;
bobby5 moveincargo _tank1;};


if (!_novehicles) then {
if (random 1 < 0) then {
sleep .2;
"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair2,"bobby21 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_MG_EP1" CreateUnit [position (_this select 0),_airair2,"bobby22 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair2,"bobby23 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair2,"bobby24 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_MG_EP1" CreateUnit [position (_this select 0),_airair2,"bobby25 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair2,"bobby26 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair2,"bobby27 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_TL_EP1" CreateUnit [position (_this select 0),_airair2,"bobby28 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_MG_EP1" CreateUnit [position (_this select 0),_airair2,"bobby29 = this",.5,"private"];
sleep .2;
"TK_INS_Soldier_AT_EP1" CreateUnit [position (_this select 0),_airair2,"bobby30 = this",.5,"private"];
sleep .2;


tank2 = "ACE_UralOpen_RU_D" createVehicle (position (_this select 0));
tank2 setpos [(getpos tank2 select 0) + random 50, (getpos tank2 select 1) + random 250, 0 ];


bobby21 moveindriver tank2;
bobby21 moveincargo tank2;
bobby23 moveincargo tank2;
bobby24 moveincargo tank2;
bobby25 moveincargo tank2;
bobby26 moveincargo tank2;
bobby27 moveincargo tank2;
bobby28 moveincargo tank2;
bobby29 moveincargo tank2;
bobby30 moveincargo tank2;



};
};



};

};



{
if (side _x == east) then {
_x addEventHandler ["killed", {_this spawn mekiller}];
if (!alive _x) then { deletevehicle _x;};
_x allowdammage false;
_x disableAI "MOVE";
};

} foreach allunits;
sleep 5;

unitlist = [];
{
if (side _x == east) then {
[_x] call vcweapons;
unitlist = unitlist + [_x];};
} foreach allunits;

sleep 10;

_locations = position lump;
_range = 1100;
_height = [0,100];
_location = position lump;
_bpos = [];
_r = 99;
_spot = [];
private ["_r"];
private ["_spot"];
{
  for [{_i = 0;_p = _x buildingpos _i},{str _p != "[0,0,0]"},{_i = _i + 1;_p = _x buildingpos _i}] do {
    _bpos set [count _bpos,_p];
  };
} foreach (nearestObjects [_location, ["house"], _range]);
private ["_tmp","_min","_max","_h"];
_tmp = [];
_min = _height select 0;
_max = _height select 1;

{
  _h = _x select 2;
   _tmp set [count _tmp,_x] ;
} foreach _bpos;
if (count _tmp > 0) then {
{
_zig = 4 + floor random 10;
if (_r == 99) then {
_spot = (_tmp select _biz);
};

_r = _r + 1;
_x setpos [(_spot select 0) + random 1, (_spot select 1) + random 1, random 5];

if (_r >= _zig) then {
_r = 0;
_biz = ((floor random count _tmp) + (floor random 4));
_zig = 4 + floor random 10;
_spot = (_tmp select _biz + (floor random 8));
};

_x setpos [(_spot select 0) + random 1, (_spot select 1) + random 1, random 5];
if (!isnil "hvt1") then {
if (random 1 < .1) then {
hvt1 allowdammage false;
hvt1 setpos _spot;
sleep 1;
hvt1 allowdammage true;
};
};
_x disableAI "MOVE";


} foreach units _airair;

sleep 10;




};

{
if (random 1 <= _groupAlone) then {
[_x] join groupnull;};
} foreach units _airair; 

sleep 20;
{
if (side _x == east) then {



if ((count units (group _x)) > 1 || vehicle (leader (group _x)) != leader (group _x) || leader (group _x) getvariable "smallergroupleader") then {
_x enableAI "MOVE";
};

if (random 1 > _groupAlone || leader (group _x) == _x) then {
	_x enableAI "MOVE";
		if (isMultiplayer) then {
			if ((paramsarray select 11) == 3) then {
				_x execfsm "handmelee.fsm";
			};
		};
	};
};

} foreach allunits;

sleep 10;

{
if (side _x == east) then {
_x allowdammage true;

if (_x getvariable "smallergroupleader") then {
_x enableAI "MOVE";
[group _x, getPos _x, 1000] call bis_fnc_taskPatrol;
};

if (random 1 < .5) then {

if (leader (group _x) == _x || _x distance spawnarea < 75) then {
if (random 1 < .5) then {
_x move position [(getpos _x select 0) + random 400, (getpos _x select 1) + random 400, (getpos _x select 2)];
};
_x enableAI "MOVE";
[group _x, getPos _x, 70] call bis_fnc_taskPatrol;};
};


if (_x != (vehicle _x)) then {
if (leader (group _x) == _x) then {
[group _x, getPos _x, 1000] call bis_fnc_taskPatrol;
_x enableAI "MOVE";
};

};

};

} foreach allunits;

// end is here

enemyspawn = true;
publicvariable "enemyspawn";
	    [-2, {
		enemyspawn = true;
        }] call CBA_fnc_globalExecute;

if (true) exitwith {};
};





































































///////////////////// START ACTUAL INIT
////////////////////////////////////////////













////////














//if (side player == resistance) then {
//_videoScript = ["\ca\video_pmc\CP00_Reynolds_b.ogv",1.04] spawn bis_fnc_customGPSvideo;};

//waitUntil {scriptDone _videoScript};

// hintsilent  "1";

// variables
ace_sys_wounds_noai = true;
proceduralspawn = false;
enemyspawn = false;
gamehasstarted = false;
nighttime = false;

//if (!isserver) then {
player spawn gooncorp_removegear;
//};
call briefingfile;
call timechecker_gooncorp;
player spawn jip_gooncorp;
call gooncorp_extrakeys;


if (ismultiplayer) then {
	if ((paramsarray select 13) == 1) then {
	[spawnarea] call gooncorp_spawncivi;};
};



//[] spawn debugging_gooncorp;




if (isserver) then {
	if (ismultiplayer) then {
		if ((paramsarray select 17) == 0) then {
			if (!isnil "tanker") then {
					deletevehicle tanker;
			};
		};
	};
};



_handle = [spawnarea] spawn procedural_gooncorp;


while {!proceduralspawn} do {
sleep 1;hintsilent "waiting on proceduralspawn";
};


if (isserver) then {
_handle = [spawnarea] spawn enemyspawn_gooncorp;};

while {!enemyspawn} do {
sleep 1;
hintsilent "waiting on enemyspawn";
};


sleep 10;

player spawn client_gooncorp;
_winPercentOpfor = 90;
_winPercentBlufor = 50;
private ["_winPercentOpfor"];
private ["_winPercentBlufor"];
if (isserver) then {
	if (isMultiplayer) then {
	if ((paramsarray select 18) == 0) then {
	_winPercentOpfor  = 20;};
	if ((paramsarray select 18) == 1) then {
	_winPercentOpfor  = 30;};
	if ((paramsarray select 18) == 2) then {
	_winPercentOpfor  = 50;};
	if ((paramsarray select 18) == 3) then {
	_winPercentOpfor  = 70;};
	if ((paramsarray select 18) == 4) then {
	_winPercentOpfor  = 80;};
	
	if ((paramsarray select 19) == 0) then {
	_winPercentBlufor  = 20;};
	if ((paramsarray select 19) == 1) then {
	_winPercentBlufor  = 30;};
	if ((paramsarray select 19) == 2) then {
	_winPercentBlufor  = 50;};
	if ((paramsarray select 19) == 3) then {
	_winPercentBlufor  = 70;};
	if ((paramsarray select 19) == 4) then {
	_winPercentBlufor  = 80;};
	};
	
};
if (isserver) then {
["apocalypse", _winPercentOpfor, _winPercentBlufor] spawn gooncorp_scoring;};

gamehasstarted = true;







