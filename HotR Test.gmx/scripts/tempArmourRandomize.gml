switch(min(choose(2,3,4)+(gender),5))
{
case 2:     //Dress
switch(choose(2,3,4))
{
    case 1:     //Chain 
    bodyItem[1] = spr_underChains
    hipsItem[1] = spr_underChains
    skrtItem[1] = spr_chainLoin
    
    class = "Barbarian"
    break
    
    case 2:     //Witch
    bodyItem[1] = spr_witchDress
    beltItem[1] = spr_witchDress
    skrtItem[1] = spr_purpleSlitSkirt
    armsItem[1,1] = spr_witchDress
    armsItem[1,2] = spr_witchDress
    legsItem[1,1] = spr_witchDress
    legsItem[1,2] = spr_witchDress
    
    class = "Warlock"
    break
    
    case 3:     //Royal
    bodyItem[1] = spr_royalDress
    beltItem[1] = spr_royalDress
    skrtItem[1] = spr_royalSkirt
    armsItem[1,1] = spr_royalDress
    armsItem[1,2] = spr_royalDress
    legsItem[1,1] = spr_royalDress
    legsItem[1,2] = spr_royalDress
    
    class = "Captain"
    break
    
    case 4:     //Sorcerer
    bodyItem[1] = spr_sorcererDress
    hipsItem[1] = spr_sorcererDress
    skrtItem[1] = spr_pinkSlitSkirt
    armsItem[1,1] = spr_sorcererDress
    armsItem[1,2] = spr_sorcererDress
    legsItem[1,1] = spr_witchDress
    legsItem[1,2] = spr_witchDress
    
    class = "Warlock"
    break
}

break

case 1:     //Dress
if gender = gndr_female
{
    bodyItem[1] = spr_underClothes
}
hipsItem[1] = spr_underClothes
break

case 3:     //Chainmail
bodyItem[1] = spr_chainMail
hipsItem[1] = spr_chainMail
skrtItem[1] = spr_chainTabard
legsItem[1,1] = spr_chainMail
legsItem[1,2] = spr_chainMail
armsItem[1,1] = spr_chainMail
armsItem[1,2] = spr_chainMail

class = "Warrior"
break

case 4:     //ChainLeather
bodyItem[1] = spr_chainLeather
beltItem[1] = spr_chainLeather
skrtItem[1] = spr_chainTabard
armsItem[1,1] = spr_chainLeather
armsItem[1,2] = spr_chainLeather
legsItem[1,1] = spr_chainLeather
armsItem[1,2] = spr_chainLeather

class = "Thief"
break

case 5:     //Platemail
bodyItem[1] = spr_chainMail
hipsItem[1] = spr_chainMail
skrtItem[1] = spr_chainTabard
legsItem[1,1] = spr_chainMail
legsItem[1,2] = spr_chainMail
armsItem[1,1] = spr_chainMail
armsItem[1,2] = spr_chainMail
beltItem[1] = spr_plateMail

bodyItem[2] = spr_plateMail
legsItem[2,1] = spr_plateMail
legsItem[2,2] = spr_plateMail
armsItem[2,1] = spr_plateMail
armsItem[2,2] = spr_plateMail

class = "Warrior"
break
}
