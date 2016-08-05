//Map Parameters
mapH = 30
mapW = 20


//Random Height
i = 1
repeat(mapH)
{
ii = 1

    repeat(mapW)
    {
    realmMapHeight[i,ii] = choose(0,1)
    //realmMapHeat[i,ii] = 
    ii += 1
    }
    
i += 1
}
