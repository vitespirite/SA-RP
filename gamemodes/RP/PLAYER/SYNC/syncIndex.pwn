/*
    Sync Index :
                  Function : Alpha System for sync Data Between Server / Client Using File system
                  Params : SyncPlayer(playerid, time = 1) ; CreatePlayerFile(playerid) ; DestroyPlayerFile(playerid)
                  By Jaber
*/


forward TimerSync(playerid);

stock CreatePlayerFile(playerid)
{
  new fName[MAX_PLAYER_NAME];
  GetPlayerName(playerid, fName, 24);
  fcreate(fName);

  return 1;
}

stock DestroyPlayerFile(playerid)
{
  new fName[MAX_PLAYER_NAME];
  GetPlayerName(playerid, fName, 24);
  fremove(fName);
  printf("Debug : %s File deleted", fName);
  return 1;
}

stock SyncPlayer(playerid)
{
  SetTimerEx("TimerSync", 1000, true, "i", playerid);
  return true;
}

public TimerSync(playerid)
{
  new Float:x , Float:y, Float:z;
  GetPlayerPos(playerid, x, y, z);
  return 1;
}
