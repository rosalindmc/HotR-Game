//Script for drawing and updating rebindable keys
//scr_keyRebindButton(number,howtouse)
//1 establish, 2 click

switch(argument0)
{
case 0:if argument1 key = global.selectKey[1] else global.selectKey[1] = key break
case 1:if argument1 key = global.selectKey[2] else global.selectKey[2] = key break
case 2:if argument1 key = global.selectKey[3] else global.selectKey[3] = key break
case 3:if argument1 key = global.selectKey[4] else global.selectKey[4] = key break
case 4:if argument1 key = global.selectKey[5] else global.selectKey[5] = key break

case 5:if argument1 key = global.selectGroup
else global.selectGroup = key break

case 6:if argument1 key = global.upScroll
else global.upScroll = key break
case 7:if argument1 key = global.downScroll
else global.downScroll = key break
case 8:if argument1 key = global.leftScroll
else global.leftScroll = key break
case 9:if argument1 key = global.rightScroll
else global.rightScroll = key break
case 10:if argument1 key = global.meleeToggle
else global.meleeToggle = key break

case 11:if argument1 key = global.abilityKey[1] 
else global.abilityKey[1] = key break
case 12:if argument1 key = global.abilityKey[2] 
else global.abilityKey[2] = key break
case 13:if argument1 key = global.abilityKey[3] 
else global.abilityKey[3] = key break
case 14:if argument1 key = global.abilityKey[4] 
else global.abilityKey[4] = key break
case 15:if argument1 key = global.abilityKey[5] 
else global.abilityKey[5] = key break
case 16:if argument1 key = global.abilityKey[6] 
else global.abilityKey[6] = key break
case 17:if argument1 key = global.abilityKey[7] 
else global.abilityKey[7] = key break
case 18:if argument1 key = global.abilityKey[8] 
else global.abilityKey[8] = key break
case 19:if argument1 key = global.abilityKey[9] 
else global.abilityKey[9] = key break
case 20:if argument1 key = global.abilityKey[10] 
else global.abilityKey[10] = key break

case 21:if argument1 key = global.attackKey
else global.attackKey = key break
case 22:if argument1 key = global.switchKey
else global.switchKey = key break
case 23:if argument1 key = global.centerKey
else global.centerKey = key break
}
