_unit = _this select 0;
_newPosition = [nil, ["water"]] call BIS_fnc_randomPos;

while {(_newPosition distance2D getMarkerPos "respawn_west") > 6000} do
{
	_newPosition = [nil, ["water"]] call BIS_fnc_randomPos;
};

_loadout = _unit getVariable ["unit_loadout", [[],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["U_BG_Guerilla1_1",[["FirstAidKit",1],["ACE_Chemlight_White",1,1]]],["rvg_legstrapbag_3",[["CUP_15Rnd_9x19_M9",4,15]]],[],"","",[],["","","","ItemCompass","ItemWatch",""]]];

_unit setPos _newPosition;
_unit setUnitLoadout _loadout;


// Adding action to teleport all players
_unit addAction ["Bring everybody here", "teleportAll.sqf"];