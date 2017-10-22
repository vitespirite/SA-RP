
stock isfp[MAX_PLAYERS];
stock FPOBJ[MAX_PLAYERS];

stock EnableFP(playerid)
{
  isfp[playerid] = 0;
  switch(isfp[playerid])
  {
    case 1:
    {
      SetCameraBehindPlayer(playerid);
      DestroyObject(FPOBJ[playerid]);
      isfp[playerid] = 0;
    }
    case 0:
    {
      FPOBJ[playerid] = CreateObject(19300, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      AttachObjectToPlayer(FPOBJ[playerid],playerid, 0.0, 0.12, 0.7, 0.0, 0.0, 0.0);
      AttachCameraToObject(playerid, FPOBJ[playerid]);
      isfp[playerid] = 1;
    }
  }
  return 1;
}
