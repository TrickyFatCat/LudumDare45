/// @description RespondOnLaserCollision

//Parameters

//Sequence
if (!isInvulnerable) && (other.dealingDamage) && (collisionEnable)
{
	DealDamage(other.damage);
}