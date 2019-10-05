/// @description MovementSequence

MoveObject();

#region // Calculate velocity
if (acceleration > 0)
{
	velocityCurrent = CalculateAcceleratedVelocity(directionCurrent, velocityCurrent, velocityMax, acceleration);
}
else if (groundFriction > 0)
{
	velocityCurrent = CalculateDeceleratedVelocity(directionCurrent, velocityCurrent, groundFriction);
	if (velocityCurrent == 0)
	{
		instance_destroy(id);
	}
}
else
{
	CalculateConstantVelocity(velocityCurrent, directionCurrent);
}
#endregion

if (isBounceable)
{
	CheckBouncingCollision(obj_obstacle);
	
	if (isBounced)
	{
		ChangeDirection;
		if (acceleration == 0) //Apply bounce friction
		{
			velocityCurrent = max(velocityCurrent - bounceFriction * global.TimeFactor, 0);
		}
		isBounced = !isBounced;
	}
}