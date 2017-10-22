
stock IsPlayerLoged(playerid)
{
  return PlayerData[playerid][pLogged];
}

stock IsPlayerSpawned(playerid)
{
  return PlayerData[playerid][pSpawn];
}

stock InitPlayer(playerid)
{
  PlayerData[playerid][pLogged] = true;
  return 1;
}

stock InitSpawnPlayer(playerid)
{
  CreatePlayerFile(playerid);
  return 1;
}

stock UnloadSpawnedPlayer(playerid)
{
  DestroyPlayerFile(playerid);
  PlayerData[playerid][pLogged] = false;
  return 1;
}

stock ResetPlayerVar(playerid)
{
  PlayerData[playerid][pLogged] = false;
  PlayerData[playerid][pSpawn] = false;
  PlayerData[playerid][pInPerso] = false;
  return 1;
}
