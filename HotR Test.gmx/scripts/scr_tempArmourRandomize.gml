switch(min(choose(2,3,4,5)+(gender),5))
{
case 2:     //Dress
switch(choose(1,2,3,4))
{
    case 1:     //Chain 
    bodyItem[1] = spr_underChains
    hipsItem[1] = spr_underChains
    skrtItem[1] = spr_chainLoin
    break
    
    case 2:     //Witch
    bodyItem[1] = spr_witchDress
    hipsItem[1] = spr_witchDress
    skrtItem[1] = spr_purpleSlitSkirt
    armsItem[1] = spr_witchDress
    legsItem[1] = spr_witchDress
    break
    
    case 3:     //Royal
    bodyItem[1] = spr_royalDress
    hipsItem[1] = spr_royalDress
    skrtItem[1] = spr_royalSkirt
    armsItem[1] = spr_royalDress
    legsItem[1] = spr_royalDress
    break
    
    case 4:     //Sorcerer
    bodyItem[1] = spr_sorcererDress
    hipsItem[1] = spr_sorcererDress
    skrtItem[1] = spr_pinkSlitSkirt
    armsItem[1] = spr_sorcererDress
    legsItem[1] = spr_witchDress
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
beltItem[1] = spr_belt
legsItem[1] = spr_chainMail
armsItem[1] = spr_chainMail
break

case 4:     //ChainLeather
bodyItem[1] = spr_chainLeather
hipsItem[1] = spr_chainLeather
skrtItem[1] = spr_chainTabard
beltItem[1] = spr_belt
armsItem[1] = spr_chainLeather
legsItem[1] = spr_chainLeather
break

case 5:     //Platemail
bodyItem[1] = spr_chainMail
hipsItem[1] = spr_chainMail
skrtItem[1] = spr_chainTabard
beltItem[1] = spr_belt
legsItem[1] = spr_chainMail
armsItem[1] = spr_chainMail

bodyItem[2] = spr_plateMail
hipsItem[2] = spr_plateMail
legsItem[2] = spr_plateMail
armsItem[2] = spr_plateMail
break
}
