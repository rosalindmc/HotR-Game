switch(argument0)
{
case 0:     //Stats
icon = ico_blockBuff
upkp = 60.0
name = 'Block'
type = 'Focus'
buff = true
tooltip = '+'+string(potency)+' Max Blocks'
owner.blocks += potency
break

case 1:     //Stats
owner.blockMax += potency
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
