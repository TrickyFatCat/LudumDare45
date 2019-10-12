event_inherited()

damage = 100;
explosionRadius = 1024;
dealingDamage = true;
SpawnSplatterEffect(x, y, vfx_splatter_clean, 100, 7);
audio_falloff_set_model(audio_falloff_linear_distance);
audio_listener_position(playerX, playerY, 0);
audio_play_sound_at(sfx_death_explosion, x, y, 0, 100, 512, 1, false, 1);


delayTimer = 0;
startDelay = false;