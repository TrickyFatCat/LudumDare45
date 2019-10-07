battleStartTime = set_time(5);
battleStartTimer = 0;
global.PlayTime = 0;

enum BattleState
{
	Inactive,
	Start,
	Active,
	End
}

global.BattleState = BattleState.Inactive;

difficultyIncreaseTime[0] = set_time(10);
difficultyIncreaseTime[1] = set_time(20);
difficultyIncreaseTime[2] = set_time(30);
difficultyIncreaseTime[3] = set_time(40);
difficultyIncreaseTime[4] = set_time(60);
difficultyIncreaseTime[5] = set_time(90);
difficultyIncreaseTime[6] = set_time(120);
difficultyIncreaseTime[7] = set_time(150);

global.DifficultyLevel = 0;
global.Kills = 0;