event_inherited()

damage = 0;
explosionRadius = 128;
dealingDamage = true;
SpawnSplatterEffect(x, y, vfx_splatter_explosion, 100, 5);
audio_falloff_set_model(audio_falloff_linear_distance);
audio_listener_position(playerX, playerY, 0);
audio_play_sound_at(sfx_explosion, x, y, 0, 100, 512, 1, false, 1);