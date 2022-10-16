function onCreate()
	-- background shit
	makeLuaSprite('Stageback', 'stageback', -600, -300);
	setScrollFactor('Stageback', 0.9, 0.9);
	makeLuaSprite('Speech_bubble', 'speech_bubble', -600, -300);
	setScrollFactor('Speech_bubble', 0.9, 0.9);

	addLuaSprite('Speech_bubble', true);
	addLuaSprite('Stageback', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
