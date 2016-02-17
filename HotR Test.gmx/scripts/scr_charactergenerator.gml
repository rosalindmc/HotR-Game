//Character stat creation script
//scr_charactergenerator()
//Generates random character stats

var i = 1
var banana = 13 + irandom(2) + irandom(2)

while (i <= banana) 
{
    switch (irandom(4))
    {
        case 0: might++
        break
        case 1: toughness++
        break
        case 2: intellect++
        break
        case 3: will++
        break
        case 4: fellowship++
        break
    }
    i++
}

var ii = 0

if (might > 10)
{
    ii += might-10
    might = 10
}
if (toughness > 10)
{
    ii += toughness-10
    toughness = 10
}
if (will > 10)
{
    ii += will-10
    will = 10
}
if (intellect > 10)
{
    ii += intellect-10
    intellect = 10
}
if (fellowship > 10)
{
    ii += fellowship-10
    fellowship = 10
}

i = 1
while (i <= ii) 
{
    switch (irandom(4))
    {
        case 0: might++
        break
        case 1: toughness++
        break
        case 2: intellect++
        break
        case 3: will++
        break
        case 4: fellowship++
        break
    }
    i++
}


