instance_destroy(other);

if (!timerIsTicking)
{
	timerIsTicking = true;
	directionCurrent = other.directionCurrent;
}