/// @description AddidtionalMechanicsSequence

//Inherit the parent event
event_inherited();

switch (currentState)
{
	case PlayerState.Spawn:
		ExecutePlayerSpawn;
		RotateWeapon;
	break;
	
	case PlayerState.Idle:
		RespondToControls;
		MovePlayer;
		ChangeSprite;
		ChangeWeapon;
		RotateWeapon;
		ShootWeapon;
		PullPickups;
	break;
	
	case PlayerState.Run:
		RespondToControls;
		MovePlayer;
		ChangeSprite;
		ChangeWeapon;
		RotateWeapon;
		ShootWeapon;
		PullPickups;
		moveSoundTimer += global.TimeFactor;
		
		var _stepTime = set_time(0.25);
		
		var _timeIsOver = check_timer(moveSoundTimer, _stepTime)
		
		if (_timeIsOver)
		{
			moveSoundTimer = 0;
			
			PlaySound(sfx_step);
		}
	break;
	
	case PlayerState.Jump:
	break;
	
	case PlayerState.Dash:
	break;
	
	case PlayerState.Transcendence:
		sprite_index = spriteIdle;
		ExecutePlayerDeath;
	break;
	
	case PlayerState.Death:
		instance_create_layer(x, y, layer, obj_explostion_playerDeath);
		activeWeapon.visible = false;
		visible = false;
		currentState = PlayerState.Inactive;
		shadowAlpha = 0;
		if (audio_is_playing(sfx_deathtimer))
		{
			audio_stop_sound(sfx_deathtimer);
		}
	break;
	
	case PlayerState.Inactive:
		collisionEnable = false;
	break;
}

//isInvulnerable = truke;

CheckCollision(obj_obstacle);
CheckCollision(obj_well);

//// This is a part of dash effect test, delete this in the future.
//if (velocityCurrent > 0)
//{
//	var _dashEffect = instance_create_layer(x, y + + lengthdir_x(1, 90), layer, vfx_dash);
//	_dashEffect.sprite_index = sprite_index;
//	_dashEffect.image_index = image_index;
//	_dashEffect.drawScaleX = drawScaleX;
//	_dashEffect.drawScaleY = drawScaleY;
//	_dashEffect.drawAngle = drawAngle;
//}