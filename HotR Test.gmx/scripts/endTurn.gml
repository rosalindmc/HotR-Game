//End Turn script
//endTurn(delay)
with(obj_actionButton)
{
instance_destroy()
}
actNum = 0
ds_list_destroy(global.moveTile)
wipeTiles()

global.control.controlled = false
global.control = noone
global.nextChar.delay += argument0
global.attackFromTile = noone

initiativeSlotReset()
mapTimeOn = true
