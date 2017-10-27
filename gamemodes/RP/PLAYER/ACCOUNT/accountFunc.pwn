#define IsPlayerLoged(%0) PlayerData[%0][pLogged]
#define IsPlayerSpawned(%0) PlayerData[%0][pSpawn]
#define InitPlayer(%0) PlayerData[%0][pLogged] = true
#define InitSpawnPlayer(%0) CreatePlayerFile(%0)
#define UnloadSpawnedPlayer(%0) DestroyPlayerFile(%0), PlayerData[%0][pLogged] = false
#define ResetPlayerVar(%0) PlayerData[%0] = ClonePlayerData[0]
