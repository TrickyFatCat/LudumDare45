/// @description SpriteController

if (global.TimeFactor > 0)
{
	//Switch sprite
	switch currentState
	{
		case PlayerState.Idle:
			ChangeSpriteTo(spriteIdle);
		break;
	
		case PlayerState.Run:
			ChangeSpriteTo(spriteRun);
		break;
	}

	//Flip sprite
	if (directionX < 0)
	{
		drawScaleX = -1;
		targetScale = -2;
	}
	else if (directionX > 0)
	{
		drawScaleX = 1;
		targetScale = 2;
	}
}