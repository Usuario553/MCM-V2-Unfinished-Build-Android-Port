function onCreate()
	-- background shit
	makeLuaSprite('room', 'background/bedroom/room', -700,-400);
	addLuaSprite('room', false);

	makeLuaSprite('suicide', 'background/bedroom/suicide', -700,-400);
	addLuaSprite('suicide', false);
	setProperty('suicide.alpha', 0.00001);	
	
	-- stage
	makeLuaSprite('stagefb', 'background/bedroom/doomsdayfb/stagefb', -890, -200)
	addLuaSprite('stagefb', false)
	setLuaSpriteScrollFactor('stagefb', 1, 1)
	setProperty('stagefb.alpha', 0.00001);	

	makeLuaSprite('curtainstage', 'background/bedroom/doomsdayfb/curtainstage', -890, -450)
	addLuaSprite('curtainstage', false)
	setLuaSpriteScrollFactor('curtainstage', 1, 1)
	scaleObject('curtainstage', 1, 1.1)
	setProperty('curtainstage.alpha', 0.00001);	

	makeLuaSprite('bbcurtian', 'background/bedroom/doomsdayfb/bbcurtian', -890, -450)
	addLuaSprite('bbcurtian', false)
	setLuaSpriteScrollFactor('bbcurtian', 1, 1)
	scaleObject('bbcurtian', 1, 1.1)
	setProperty('bbcurtian.alpha', 0.00001);	

	makeLuaSprite('curtianbig', 'background/bedroom/doomsdayfb/curtianbig', -890, -450)
	addLuaSprite('curtianbig', false)
	setLuaSpriteScrollFactor('curtianbig', 1, 1)
	scaleObject('curtianbig', 1, 1.1)
	setProperty('curtianbig.alpha', 0.00001);	

	makeLuaSprite('FUCKINGCHAIR', 'background/bedroom/doomsdayfb/FUCKINGCHAIR', -1390, -500)
	addLuaSprite('FUCKINGCHAIR', true)
	setLuaSpriteScrollFactor('FUCKINGCHAIR', 1, 1)
	setProperty('FUCKINGCHAIR.alpha', 0.00001);
	scaleObject('FUCKINGCHAIR', 1.3, 1.3)

	makeLuaSprite('people', 'background/bedroom/doomsdayfb/people', -890, -300)
	addLuaSprite('people', true)
	setLuaSpriteScrollFactor('people', 1, 1)
	setProperty('people.alpha', 0.00001);		
	
	-- fire
	makeLuaSprite('wall', 'background/bedroom/bedroomf/wall', -700,-400);
	addLuaSprite('wall', false);
	setProperty('wall.alpha', 0.00001);	
	
	makeLuaSprite('firewall', 'background/bedroom/bedroomf/firewall', -700,-400);
	addLuaSprite('firewall', false);
	setProperty('firewall.alpha', 0.00001);	

	makeLuaSprite('floor', 'background/bedroom/bedroomf/floor', -700,-400);
	addLuaSprite('floor',false);
	setProperty('floor.alpha', 0.00001);		
	
	makeLuaSprite('firefront', 'background/bedroom/bedroomf/firefront', -700,-400);
	addLuaSprite('firefront', true);
	setProperty('firefront.alpha', 0.00001);	

    makeLuaSprite('shading', 'background/bedroom/bedroomf/shading', -700,-400);
	addLuaSprite('shading', true);
	setProperty('shading.alpha', 0.00001);	
	
	-- blood
    makeLuaSprite('blood', 'background/bedroom/blood', 0, 0);
	addLuaSprite('blood', true);
	setProperty('blood.alpha', 0.00001);	
	setObjectCamera('blood', 'hud');
	
	-- stage 2 !
	makeAnimatedLuaSprite('BLOODYTHING','background/bedroom/doomsdayfb2/DoomsdayBack', -890, -400)
	scaleLuaSprite('BLOODYTHING', 1, 1);
	addAnimationByPrefix('BLOODYTHING','Tearflow', 'Tearflow', 24, true)
	addLuaSprite('BLOODYTHING', false);
	setProperty('BLOODYTHING.alpha', 0.00001);
	
	makeLuaSprite('redlight', 'background/bedroom/doomsdayfb2/redlight', -890, -400)
	addLuaSprite('redlight', false)
	setLuaSpriteScrollFactor('redlight', 1, 1)
	setProperty('redlight.alpha', 0.00001);	
	
	makeLuaSprite('stagefx', 'background/bedroom/doomsdayfb2/stage', -890, -200)
	addLuaSprite('stagefx', false)
	setLuaSpriteScrollFactor('stagefx', 1, 1)
	setProperty('stagefx.alpha', 0.00001);	

	makeLuaSprite('curtainstageX', 'background/bedroom/doomsdayfb2/backcurtains', -890, -450)
	addLuaSprite('curtainstageX', false)
	setLuaSpriteScrollFactor('curtainstageX', 1, 1)
	scaleObject('curtainstageX', 1, 1.1)
	setProperty('curtainstageX.alpha', 0.00001);	

	makeLuaSprite('Xcurtian', 'background/bedroom/doomsdayfb2/frontcurtains', -890, -450)
	addLuaSprite('Xcurtian', false)
	setLuaSpriteScrollFactor('Xcurtian', 1, 1)
	scaleObject('Xcurtian', 1, 1.1)
	setProperty('Xcurtian.alpha', 0.00001);	

	makeLuaSprite('pieces', 'background/bedroom/doomsdayfb2/pieces', -890, -450)
	addLuaSprite('pieces', false)
	setLuaSpriteScrollFactor('pieces', 1, 1)
	scaleObject('pieces', 1, 1.1)
	setProperty('pieces.alpha', 0.00001);

	makeLuaSprite('FUCKINGFUCK', 'background/bedroom/doomsdayfb2/BROKENCHAIR', -1390, -500)
	addLuaSprite('FUCKINGFUCK', true)
	setLuaSpriteScrollFactor('FUCKINGFUCK', 1, 1)
	setProperty('FUCKINGFUCK.alpha', 0.00001);
	scaleObject('FUCKINGFUCK', 1.3, 1.3)

	makeAnimatedLuaSprite('debris','background/bedroom/doomsdayfb2/debris', -890, -400)
	scaleLuaSprite('debris', 1, 1);
	addAnimationByPrefix('debris','fallingdebris', 'fallingdebris', 24, true)
	addLuaSprite('debris', true);
	setProperty('debris.alpha', 0.00001);
	scaleObject('debris', 1.3, 1.3)
	
	-- red mist
	makeLuaSprite('skyx', 'background/bedroom/redmist/sky', -700,-400);
	addLuaSprite('skyx', false);
	setProperty('skyx.alpha', 0.00001);	

	makeLuaSprite('lighteffect', 'background/bedroom/redmist/lighteffect', -700,-400);
	addLuaSprite('lighteffect', false);
	setProperty('lighteffect.alpha', 0.00001);			
	
	makeLuaSprite('roomx', 'background/bedroom/redmist/room', -700,-400);
	addLuaSprite('roomx', false);
	setProperty('roomx.alpha', 0.00001);	
	
	makeLuaSprite('shadingx', 'background/bedroom/redmist/shading', -700,-400);
	addLuaSprite('shadingx', false);
	setProperty('shadingx.alpha', 0.00001);	
	
end