/// @description SpawnStateController

// Parameters
var _spawnTime = 2;

// Sequence
if (global.GameState == GameState.Active)
{
	ExecuteDissolveIn(_spawnTime);
	
	PlaySound(sfx_teleportation);
	
	with (activeWeapon)
	{
		ExecuteDissolveIn(_spawnTime);
	}
	
	shadowAlpha = dissolvePower;
	
	if (dissolvePower == 1)
	{
		currentState = PlayerState.Idle;
		global.BattleState = BattleState.Start;
	}
}