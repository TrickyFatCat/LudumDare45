velocityMax = 20;

// Visual paarameters
image_speed = 0;
image_xscale = random_range(1, 2);
image_yscale = random_range(1, 2);
image_alpha = 0//random_range(0.25, 1);

// Movement parameters
direction = random_range(0, 359);
image_angle = direction;
velocityCurrent = random_range(0.4, velocityMax);
groundFriction = random_range(0.1, 0.2);
velocityX = 0;
velocityY = 0;

// Smear parameters
//isSmearing = false;
//smearObject = noone;
smearTime = 3;
smearTimer = 0;