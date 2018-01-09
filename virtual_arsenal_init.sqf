//Init stuff
_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

//Lists of items to include
_availableHeadgear = [
	"rhssaf_helmet_m97_oakleaf"
];

_availableGoggles = [
	"G_Balaclava_TI_tna_F",
	"G_Bandanna_blk",
	"rhs_googles_black",
	"rhs_googles_yellow",
	"rhs_googles_clear",
	"rhs_googles_orange",
];

_availableUniforms = [
	"rhsgref_uniform_ERDL",
	
];

_availableVests = [
	"V_TacVest_oli"
];

_availableBackpacks = [
	"rhssaf_alice_md2camo"
];

_availableWeapons = [
	"rhs_Weapon_fim92",
	"rhs_Weapon_launch_RPG7_F",
	"rhs_Weapon_rpg7",
	"rhs_Weapon_fgm148",
	"rhs_Weapon_M136",
	"rhs_Weapon_M136_hedp",
	"rhs_Weapon_M136_hp",
	"Weapon_srifle_DMR_07_blk_F",
	"Weapon_srifle_GM6_camo_F",
	"Weapon_srifle_LRR_F",
	"Weapon_srifle_LRR_tna_F",
	"Weapon_srifle_EBR_F",
	"Weapon_srifle_DMR_06_camo_F",
	"Weapon_srifle_DMR_01_F",
	"rhs_weapon_asval",
	"rhs_weapon_m14ebrri",
	"rhs_weapon_XM2010",
	"rhs_weapon_m24sws_ghillie",
	"rhs_weapon_m24sws_blk",
	"rhs_weapon_m40a5_wd",
	"rhs_weapon_svd",
	"rhs_weapon_svdp_wd",
	"rhssaf_weapon_m76",
	"rhs_weapon_pya",
	"rhsusf_weapon_glock17g4",
	"rhsusf_weapon_m9",
	"rhsusf_weapon_m1911a1",
	"rhs_weapon_m320"
];

//Populate with predefined items and whatever is already in the crate
[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,(magazineCargo _crate)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(weaponCargo _crate)] call BIS_fnc_addVirtualWeaponCargo;
