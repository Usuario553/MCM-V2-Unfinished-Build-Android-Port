function onStepHit()
	if curStep == 464 then
	setProperty('wall2.alpha', 0);
	setProperty('light2.alpha', 0);
	setProperty('light.alpha', 1);
	setProperty('wall.alpha', 1);
	setProperty('floor.alpha', 1);
	setProperty('table.alpha', 1);

	end

	if curStep == 720 then
		triggerEvent('Change Character', 'dad', 'DEAD HOPE PIXEL-SPONG');
		triggerEvent('Change Character', 'gf', 'DEAD HOPE PIXEL-PAT');
		triggerEvent('Change Character', 'bf', 'bf-pixel');
		setProperty('wall.alpha', 0);
		setProperty('floor.alpha', 0);
		setProperty('table.alpha', 0);
		setProperty('pixelwall.alpha', 1);
		setProperty('pixelfloor.alpha', 1);
		setProperty('pixeltable.alpha', 1);
	end
	if curStep == 1487 then
	    makeLuaSprite('flash2', '', 0, 0);
        makeGraphic('flash2',1280,720,'ffffff')
		doTweenAlpha('flTf2','flash2',0,0.3,'linear')
        addLuaSprite('flash2', true);
        setLuaSpriteScrollFactor('flash2',0,0)
        setProperty('flash2.scale.x',2)
        setProperty('flash2.scale.y',2)
        setProperty('flash2.alpha',0.4)
        setProperty('flash2.alpha',0.6)
        doTweenAlpha('flTw2','flash2',0,0.3,'linear')
		
	setProperty('DeadHallway.alpha', 1);
	setProperty('BF_BODY.alpha', 1);
	setProperty('light.alpha', 0);
    triggerEvent('Change Character', 'dad', 'SPONGECHASE')
    triggerEvent('Change Character', 'gf', 'PATRICKCHASE')
    triggerEvent('Change Character', 'bf', 'bf-head')
    luaSpritePlayAnimation('DeadHallway', 'deadhallway')
    luaSpritePlayAnimation('BF_BODY', 'BF BODY idle')
	end
end

local work = false
local stops = false

function onEvent(n,v1,v2) --puse los eventos aqui para que el juego no vaya a 40fps xd
	if n == 'why' then
		work=true
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'visible', false)
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then	
				setPropertyFromGroup('unspawnNotes', i, 'visible', false); --Change texture
				end
			end
	end
	if n == 'why-stop' then
			stops=true
			work=false
			for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'visible', true)
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then	
				setPropertyFromGroup('unspawnNotes', i, 'visible', true); --Change texture
				end
			end
			
	noteTweenY('player1', 4, defaultPlayerStrumY3, 0.2)
	noteTweenY('player2', 5, defaultPlayerStrumY1, 0.2)
	noteTweenY('player3', 6, defaultPlayerStrumY0, 0.2)
	noteTweenY('player4', 7, defaultPlayerStrumY2, 0.2)

    noteTweenX('playerx1', 4, defaultPlayerStrumX0, 0.2)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1, 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2, 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3, 0.2)

	noteTweenX('opponentx1', 0, defaultOpponentStrumX0, 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1, 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2, 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3, 0.2)
	
	end
	
end

function onUpdate(elapsed)
if work == true and stops == false then
	songPos = getSongPosition()
	local currentBeat = (songPos/1000)
	noteTweenY('player1', 4, defaultPlayerStrumY3 - 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
	noteTweenY('player2', 5, defaultPlayerStrumY1 + 300*math.sin((currentBeat+8*0.1)*math.pi), 3)
	noteTweenY('player3', 6, defaultPlayerStrumY0 - 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
	noteTweenY('player4', 7, defaultPlayerStrumY2 + 300*math.sin((currentBeat+8*0.1)*math.pi), 3)

    noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + -300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)

	end
end