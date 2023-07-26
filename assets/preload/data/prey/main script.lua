local nice = true --does funny stuff

function onCreate()

makeLuaSprite('textTOP', 'BG/text thing', 0, -1000)
scaleObject('textTOP',2.5,2.5)
addLuaSprite('textTOP', true)
setObjectCamera('textTOP', 'other')
--position to add text is -700

makeLuaSprite('textBOTTOM', 'BG/text thing', 0, 1000)
addLuaSprite('textBOTTOM', true)
setObjectCamera('textBOTTOM', 'other')
--position is 500

makeLuaText('dialogue', '', 1200, 40, 560)
addLuaText('dialogue')
setTextSize('dialogue', 40)
setObjectCamera('dialogue', 'other')

makeAnimatedLuaSprite('furnace', 'characters/Furnace_sheet', -1800, 1000)
addLuaSprite('furnace', false)
scaleObject('furnace', 6, 6)
addAnimationByPrefix('furnace', 'furnace', 'Furnace idle', 24,true)
setProperty('furnace.antialiasing', false)
setProperty('skipCountdown', true)
end

function onCreatePost()
setProperty('botplayTxt.visible', false)
setProperty('health', 2)
setProperty('gf.alpha', 0)
setProperty('camHUD.alpha', 0)
end

function onTweenCompleted(tag)
if tag == 'furnace flyby' then
setProperty('furnace.flipX', true)
setProperty('furnace.y', 600)
end
end

function onUpdate(elapsed)
setProperty('timeBar.color', getColorFromHex("ff0000"))
if curStep == 244 then
doTweenX('furnacehello', 'dadGroup', -400, 0.75, 'smootherStepInOut')
doTweenAlpha('iconP2back', 'iconP2', 1, 0.1, 'smootherStepInOut')
doTweenAlpha('woahNotesRbak', 'camHUD', 1, 0.1, 'smootherStepInOut')
end
if curStep == 1500 then
doTweenX('furnacedies', 'dadGroup', -1600, 2.5, 'smootherStepInOut')
doTweenY('furnacediesDOWN', 'dadGroup', 700, 12.5, 'smootherStepInOut')
doTweenAngle('furnacediesSPIN', 'dadGroup', -90, 5, 'smootherStepInOut')
doTweenAlpha('iconP2die', 'iconP2', 0, 0.1, 'smootherStepInOut')
end
if curStep == 1534 then
doTweenY('helloText', 'textTOP', -700, 0.5, 'smootherStepInOut')
doTweenY('helloWorld', 'textBOTTOM', 500, 0.5, 'smootherStepInOut')
end
if curStep == 1536 then
doTweenAlpha('woahNotesGone', 'camHUD', 0, 1, 'smootherStepInOut')
end
if curStep == 1546 then
setTextString('dialogue', 'Seems that bucket of bolts had to lay off the nitro this time around!')
end
if curStep == 1552 then
cancelTween('furnacedies')
cancelTween('furnacediesDOWN')
cancelTween('furnacediesSPIN')
doTweenY('I go up', 'dadGroup', -100, 0.5, 'smootherStepInOut')
end
if curStep == 1568 then
doTweenX('HelloSonic', 'dadGroup', 170, 2, 'smootherStepInOut')
doTweenAlpha('iconP2egg', 'iconP2', 1, 0.1, 'smootherStepInOut')
doTweenAngle('furnacediesSPIN', 'dadGroup', 0, 0.00000001, 'smootherStepInOut')
end
if curStep == 1587 then
setTextString('dialogue', 'Hey Red Head!')
end

if curStep == 1599 then
setTextString('dialogue', 'Might wanna repair your toys!')
end

if curStep == 1625 then
setTextString('dialogue', "You don't even know your fate hedgehog...")
setTextColor('dialogue', 'FF0000')
end

if curStep == 1676 then
setTextString('dialogue', "*Maniacal Kackling*")
setTextColor('dialogue', 'FF0000')
end

if curStep == 1788 then
doTweenAlpha('HaiiNotess', 'camHUD', 1, 1, 'smootherStepInOut')
setTextString('dialogue', "")
setTextColor('dialogue', 'FFFFFF')
doTweenY('goodbyeText', 'textTOP', -1000, 0.5, 'smootherStepInOut')
doTweenY('goodbyeWorld', 'textBOTTOM', 1000, 0.5, 'smootherStepInOut')
end
if curStep == 2463 then
doTweenX('furnace flyby', 'furnace', 3000, 12.5, 'smootherStepInOut')
end
if curStep == 3326 then
doTweenX('starvingManDie', 'dadGroup', -6000, 5, 'smootherStepInOut')
doTweenAlpha('woahNotesDEADagain', 'camHUD', 0, 0.1, 'smootherStepInOut')
end
if curStep == 3330 then
doTweenY('text is back', 'textTOP', -700, 0.5, 'smootherStepInOut')
doTweenY('my ass is back', 'textBOTTOM', 500, 0.5, 'smootherStepInOut')
end
if curStep == 3335 then
setTextString('dialogue', "Man, you realy like scrambling your own plans don't'cha-")
end
if curStep == 3365 then
addAnimationByPrefix('reach', 'furnace', 'Furnace left', 24, true)
doTweenX('heAttak', 'furnace', getProperty('boyfriend.x'), 0.1, 'smootherStepInOut')
objectPlayAnimation('furnace', 'reach', true)
end
if curStep == 3367 then
doTweenAlpha('youDied', 'camGame', 0, 0.0001, 'smootherStepInOut')
setTextString('dialogue', "")
end
end