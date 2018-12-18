//===========================================================================
// 
// Gladiator (Alpha)
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Tue Dec 18 20:59:47 2018
//   Map Author: Lake
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
    // Generated
    rect                    gg_rct_Shop_CamBounds      = null
    rect                    gg_rct_Shop_Visibility     = null
    rect                    gg_rct_Arena_CamBounds     = null
    rect                    gg_rct_Arena_Visibility    = null
    rect                    gg_rct_Arena_Spawn1        = null
    rect                    gg_rct_CornerSpawn         = null
    camerasetup             gg_cam_Camera_001          = null
    sound                   gg_snd_O05Grom37           = null
    sound                   gg_snd_ClockwerkGoblinYesAttack1 = null
    sound                   gg_snd_IronGolemYesAttack3 = null
    sound                   gg_snd_IronGolemYes3       = null
    sound                   gg_snd_IronGolemYes1       = null
    sound                   gg_snd_PursuitTheme        = null
    sound                   gg_snd_Mainscreen          = null
    sound                   gg_snd_BloodElfMageReady1  = null
    trigger                 gg_trg_Untitled_Trigger_004 = null
    trigger                 gg_trg_Untitled_Trigger_001 = null
    trigger                 gg_trg_Untitled_Trigger_002 = null
    trigger                 gg_trg_Untitled_Trigger_003 = null
    trigger                 gg_trg_Untitled_Trigger_005 = null
    unit                    gg_unit_n002_0017          = null
    unit                    gg_unit_n00K_0002          = null
    unit                    gg_unit_n003_0015          = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Sounds
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_O05Grom37 = CreateSound( "Sound\\Dialogue\\OrcCampaign\\Orc05\\O05Grom37.mp3", false, false, false, 10, 10, "" )
    call SetSoundParamsFromLabel( gg_snd_O05Grom37, "O05Grom37" )
    call SetSoundDuration( gg_snd_O05Grom37, 1985 )
    set gg_snd_ClockwerkGoblinYesAttack1 = CreateSound( "Units\\Creeps\\HeroTinkerRobot\\ClockwerkGoblinYesAttack1.wav", false, true, true, 10, 10, "HeroAcksEAX" )
    call SetSoundParamsFromLabel( gg_snd_ClockwerkGoblinYesAttack1, "ClockwerkGoblinYesAttack" )
    call SetSoundDuration( gg_snd_ClockwerkGoblinYesAttack1, 1416 )
    set gg_snd_IronGolemYesAttack3 = CreateSound( "Units\\Creeps\\IronGolem\\IronGolemYesAttack3.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_IronGolemYesAttack3, "IronGolemYesAttack" )
    call SetSoundDuration( gg_snd_IronGolemYesAttack3, 2153 )
    set gg_snd_IronGolemYes3 = CreateSound( "Units\\Creeps\\IronGolem\\IronGolemYes3.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_IronGolemYes3, "IronGolemYes" )
    call SetSoundDuration( gg_snd_IronGolemYes3, 2437 )
    set gg_snd_IronGolemYes1 = CreateSound( "Units\\Creeps\\IronGolem\\IronGolemYes1.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_IronGolemYes1, "IronGolemYes" )
    call SetSoundDuration( gg_snd_IronGolemYes1, 2215 )
    set gg_snd_PursuitTheme = CreateSound( "Sound\\Music\\mp3Music\\PursuitTheme.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_PursuitTheme, 82625 )
    call SetSoundChannel( gg_snd_PursuitTheme, 0 )
    call SetSoundVolume( gg_snd_PursuitTheme, 127 )
    call SetSoundPitch( gg_snd_PursuitTheme, 1.0 )
    set gg_snd_Mainscreen = CreateSound( "Sound\\Music\\mp3Music\\Mainscreen.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_Mainscreen, 69172 )
    call SetSoundChannel( gg_snd_Mainscreen, 0 )
    call SetSoundVolume( gg_snd_Mainscreen, 127 )
    call SetSoundPitch( gg_snd_Mainscreen, 1.0 )
    set gg_snd_BloodElfMageReady1 = CreateSound( "Units\\Human\\HeroBloodElf\\BloodElfMageReady1.wav", false, true, true, 10, 10, "HeroAcksEAX" )
    call SetSoundParamsFromLabel( gg_snd_BloodElfMageReady1, "BloodElfSorcerorReady" )
    call SetSoundDuration( gg_snd_BloodElfMageReady1, 2012 )
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'H007', 8486.5, -8655.8, 121.534 )
    call SetUnitColor( u, ConvertPlayerColor(19) )
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p = Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'opeo', 8551.0, -7557.8, 315.339 )
    set u = CreateUnit( p, 'opeo', 8109.8, -7630.6, 309.736 )
    set u = CreateUnit( p, 'opeo', 8114.7, -7683.7, 152.429 )
    set u = CreateUnit( p, 'opeo', 8488.1, -7720.6, 150.462 )
    set u = CreateUnit( p, 'opeo', 8324.0, -7567.8, 290.487 )
    set u = CreateUnit( p, 'opeo', 8323.9, -7771.0, 110.943 )
    set u = CreateUnit( p, 'h006', -7886.3, -8715.2, 78.862 )
    set u = CreateUnit( p, 'h006', -8027.5, -8748.9, 141.124 )
    set u = CreateUnit( p, 'h006', -7934.2, -8663.7, 285.587 )
    set u = CreateUnit( p, 'h006', -8113.1, -8760.8, 256.857 )
    set u = CreateUnit( p, 'h006', -7982.5, -8673.6, 255.792 )
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_n00K_0002 = CreateUnit( p, 'n00K', -8448.0, -8128.0, 270.000 )
    set u = CreateUnit( p, 'n001', -8128.0, -8000.0, 270.000 )
    set gg_unit_n003_0015 = CreateUnit( p, 'n003', -8512.0, -8576.0, 270.000 )
    set gg_unit_n002_0017 = CreateUnit( p, 'n002', -7744.0, -8576.0, 270.000 )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0(  )
    call CreateUnitsForPlayer1(  )
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings(  )
    call CreatePlayerBuildings(  )
    call CreatePlayerUnits(  )
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_Shop_CamBounds = Rect( -8288.0, -8576.0, -7904.0, -8160.0 )
    set gg_rct_Shop_Visibility = Rect( -8960.0, -9088.0, -7360.0, -7712.0 )
    set we = AddWeatherEffect( gg_rct_Shop_Visibility, 'FDwl' )
    call EnableWeatherEffect( we, true )
    set gg_rct_Arena_CamBounds = Rect( -672.0, -512.0, 928.0, 1920.0 )
    set gg_rct_Arena_Visibility = Rect( -1344.0, -992.0, 1664.0, 1824.0 )
    set we = AddWeatherEffect( gg_rct_Arena_Visibility, 'FDwl' )
    call EnableWeatherEffect( we, true )
    set gg_rct_Arena_Spawn1 = Rect( -512.0, -224.0, 768.0, 1056.0 )
    set gg_rct_CornerSpawn = Rect( 384.0, -256.0, 768.0, 96.0 )
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_Camera_001 = CreateCameraSetup(  )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_ZOFFSET, 100.0, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_ROTATION, 132.8, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_ANGLE_OF_ATTACK, 354.7, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_TARGET_DISTANCE, 2923.1, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_ROLL, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0 )
    call CameraSetupSetField( gg_cam_Camera_001, CAMERA_FIELD_FARZ, 5000.0, 0.0 )
    call CameraSetupSetDestPosition( gg_cam_Camera_001, -1732.3, 2480.1, 0.0 )

endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Untitled Trigger 004
//===========================================================================
function Trig_Untitled_Trigger_004_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_004 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_004 = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Untitled_Trigger_004, EVENT_PLAYER_UNIT_SPELL_CAST )
    call TriggerAddAction( gg_trg_Untitled_Trigger_004, function Trig_Untitled_Trigger_004_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 001
//===========================================================================
function Trig_Untitled_Trigger_001_Actions takes nothing returns nothing
    call UnitRemoveBuffBJ( 'BUad', GetTriggerUnit() )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_001 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_001 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_001, function Trig_Untitled_Trigger_001_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 002
//===========================================================================
function Trig_Untitled_Trigger_002_Actions takes nothing returns nothing
    call CustomVictoryBJ( Player(0), true, true )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_002 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_002 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_002, function Trig_Untitled_Trigger_002_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 003
//===========================================================================
function Trig_Untitled_Trigger_003_Actions takes nothing returns nothing
    call BlzSetUnitArmor( gg_unit_n00K_0002, 0.00 )
    call BlzSetUnitArmor( gg_unit_n003_0015, 0.00 )
    call BlzSetUnitArmor( gg_unit_n002_0017, 0.00 )
    call BlzSetUnitArmor( gg_unit_n00K_0002, 0.00 )
    call BlzSetUnitArmor( gg_unit_n00K_0002, 0.00 )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_003 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_003 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_003, function Trig_Untitled_Trigger_003_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 005
//===========================================================================
function Trig_Untitled_Trigger_005_Actions takes nothing returns nothing
    call KillUnit( gg_unit_n002_0017 )
    call UnitDamageTargetBJ( GetTriggerUnit(), GetTriggerUnit(), 500, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_005 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_005 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_005, function Trig_Untitled_Trigger_005_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Untitled_Trigger_004(  )
    call InitTrig_Untitled_Trigger_001(  )
    call InitTrig_Untitled_Trigger_002(  )
    call InitTrig_Untitled_Trigger_003(  )
    call InitTrig_Untitled_Trigger_005(  )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(0), false )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_601
    call SetPlayerTeam( Player(0), 0 )

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -9472.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -9728.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 9472.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -9472.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 9472.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -9728.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call SetTerrainFogEx( 0, 800.0, 7500.0, 3.000, 0.588, 0.196, 0.020 )
    call NewSoundEnvironment( "Dungeon" )
    call SetAmbientDaySound( "VillageDay" )
    call SetAmbientNightSound( "VillageNight" )
    call SetMapMusic( "Music", true, 0 )
    call InitSounds(  )
    call CreateRegions(  )
    call CreateCameras(  )
    call CreateAllUnits(  )
    call InitBlizzard(  )
    call InitGlobals(  )
    call InitCustomTriggers(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_003" )
    call SetMapDescription( "TRIGSTR_005" )
    call SetPlayers( 1 )
    call SetTeams( 1 )
    call SetGamePlacement( MAP_PLACEMENT_USE_MAP_SETTINGS )

    call DefineStartLocation( 0, 128.0, 512.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
endfunction

