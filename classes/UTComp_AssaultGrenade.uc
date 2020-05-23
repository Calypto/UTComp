
class UTComp_AssaultGrenade extends AssaultGrenade;

event ModeDoFire()
{
    local UTComp_PRI uPRI;
    if(weapon.owner.IsA('xPawn') && xPawn(Weapon.Owner).Controller!=None)
    {
        uPRI=class'UTComp_Util'.static.GetUTCompPRIFor(xPawn(Weapon.Owner).Controller);
        if(uPRI!=None)
            uPRI.NormalWepStatsAlt[12]+=1;
    }
    Super.ModeDoFire();
}

defaultproperties
{
}