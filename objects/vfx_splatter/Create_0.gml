// Visual paarameters
image_speed = 0;
image_index = irandom_range(0, image_number - 1);
image_xscale = random_range(0.05, 1);
image_yscale = random_range(0.05, 1);
image_angle = irandom_range(0, 359);

// Movement parameters
direction = random_range(0, 359);
xx = x + lengthdir_x(50, direction);
yy = y + lengthdir_y(50, direction);
velocity = random_range(0.4, 8);

// Smear parameters
isSmearing = false;
smearObject = noone;
smearTime = 3;
smearTimer = 0;