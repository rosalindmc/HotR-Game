switch(min(5,choose(2,3,4,5)+(gender)))
{
case 2:     //Dress
bodyItem[1] = spr_dressTop
hipsItem[1] = spr_dressTop
skrtItem[1] = spr_dressSkirt
armsItem[1] = spr_dressTop
legsItem[1] = spr_chainLeather
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
