function onCreate()
	-- Phase 1
	-- voy a usar el mismo stage para los dos satisfaction xd
	setProperty('gfGroup.visible', false);
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfmc');
	
	makeLuaSprite('background', 'background/satisfaction/light', -700,-400);
	makeLuaSprite('kitchen', 'background/satisfaction/kitchen', -700,-400);
	makeLuaSprite('krabs', 'background/satisfaction/characters/krabs', 1300, -100);
	makeLuaSprite('light', 'background/satisfaction/light/light', -700,-400);
	makeLuaSprite('squidwardLight', 'background/satisfaction/light/squidwardLight', -700,-400);
	
	scaleLuaSprite('krabs', 0.65, 0.65);

	addLuaSprite('background', false);
	addLuaSprite('kitchen', false);
	addLuaSprite('krabs', false);
	addLuaSprite('light', true);
	addLuaSprite('squidwardLight', true);
	
	setProperty('squidwardLight.alpha', 0.00001);
	
	-- Squidward (Both Animations)
	makeAnimatedLuaSprite('squidward','background/satisfaction/characters/mc_squidfart', 700, -380)
	scaleLuaSprite('squidward', 1.1, 1.1);
	addAnimationByPrefix('squidward','idle', 'idle', 24, true)
	addAnimationByPrefix('squidward','hey', 'hey', 24, true)
	addLuaSprite('squidward', false);
	setProperty('squidward.alpha', 0.00001);

	makeAnimatedLuaSprite('squidward2','background/satisfaction/characters/mc_squidfart', 780, -330)
	scaleLuaSprite('squidward2', 1.1, 1.1);
	addAnimationByPrefix('squidward2','idle', 'idle', 24, true)
	addLuaSprite('squidward2', false);
	setProperty('squidward2.alpha', 0.00001);
	
	-- Phase 2
	makeLuaSprite('standoff', 'background/satisfaction/front/standoff', -700,-400);
	makeLuaSprite('frontlight', 'background/satisfaction/front/light', -700,-400);

	addLuaSprite('standoff', false);
	addLuaSprite('frontlight', true);
	
	setProperty('standoff.visible', false);	
	setProperty('frontlight.visible', false);	
end

