#include <sourcemod>
#include <sdktools>
//#include <colorlib>

#pragma semicolon 1
#pragma newdecls required

char CEngine_PlayerName[MAXPLAYERS+1][64];
char CEngine_PlayerSteamID[MAXPLAYERS+1][64];
int CEngine_PlayerCredits[MAXPLAYERS+1];
int CEngine_PlayerItemID[MAXPLAYERS+1];

public Plugin myinfo = {
    name        = "CEngineStore",
    author      = "Nightmare",
    description = "",
    version     = "0.1.0",
    url         = "https://github.com/TheDarkNightmare/CEngineStore"
};

public void OnPluginStart()
{
    HookEventEx("player_spawn", CEngineStore_Spawn, EventHookMode_Post);
    HookEventEx("player_death", CEngineStore_Death);
    
    RegConsoleCmd("sm_cstore", CEngineStore_CoreMenu);
    
}
public void OnClientPutinServer(int client)
{
    CEngine_PlayerCredits[client] = 0;
    
    
}
public void OnClientDisconnect(int client)
{
    CEngine_PlayerCredits[client] = 0;
    
}
public Action CEngineStore_Spawn(Event event, const char[] name, bool dontBroadcast)
{
    int client = GetClientOfUserId(GetEventInt(event, "userid"));
    
    if(IsValidClient(client))
    return;
    
    
}
public Action CEngineStore_Death(Event event, const char[] name, bool dontBroadcast)
{
    int killer = GetEventInt(event, "attacker");
    int victim = GetEventInt(event, "userid");
    bool headshot = GetEventBool(event, "headshot");
    
    if(IsValidClient(killer) || IsValidClient(victim))
    return;
    
    if(killer != victim){
        
        
        
    }
    
}
public Action CEngineStore_CoreMenu(int client, int args)
{
    
    
}
bool IsValidClient(int client) {
	if (!(1 <= client <= MaxClients) || !IsClientConnected(client) || !IsClientInGame(client))
		return false;
	
	return true;
} 
