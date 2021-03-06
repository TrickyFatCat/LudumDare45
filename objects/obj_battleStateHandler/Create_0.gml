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
difficultyIncreaseTime[4] = set_time(50);
difficultyIncreaseTime[5] = set_time(60);
difficultyIncreaseTime[6] = set_time(70);
difficultyIncreaseTime[7] = set_time(80);
difficultyIncreaseTime[8] = set_time(90);
difficultyIncreaseTime[9] = set_time(100);
difficultyIncreaseTime[10] = set_time(110);

global.DifficultyLevel = 0;
global.Score = 0;

soundTimer = set_time(1);