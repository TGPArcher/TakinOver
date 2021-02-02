_caller = _this select 1;

_result = ["Are you sure?", "Bring everybody here", true, true] call BIS_fnc_guiMessage;

if (_result) then {
	hint "Confirmed, now teleporting";
	{
		// Current result is saved in variable _x
		if (_x != _caller && alive _x) then {
			_x setPos (getPos _caller);
		};
	} forEach allPlayers;
};
