//===========================================================================
// 
// Gladiator
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Fri Jan 31 15:45:36 2020
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
    rect                    gg_rct_BarracksFog         = null
    camerasetup             gg_cam_Barracks            = null
    sound                   gg_snd_O05Grom37           = null
    sound                   gg_snd_ClockwerkGoblinYesAttack1 = null
    sound                   gg_snd_IronGolemYesAttack3 = null
    sound                   gg_snd_IronGolemYes3       = null
    sound                   gg_snd_IronGolemYes1       = null
    sound                   gg_snd_PursuitTheme        = null
    sound                   gg_snd_Mainscreen          = null
    sound                   gg_snd_BloodElfMageReady1  = null
    sound                   gg_snd_FrogWhat1           = null
    sound                   gg_snd_GiantSeaTurtleYes2  = null
    sound                   gg_snd_OrcTheme            = null
    sound                   gg_snd_SacrificeUnit       = null
    sound                   gg_snd_UndeadDissipate2    = null
    string                  gg_snd_OrcDefeat
    trigger                 gg_trg_Untitled_Trigger_004 = null
    trigger                 gg_trg_Untitled_Trigger_012 = null
    trigger                 gg_trg_Untitled_Trigger_013 = null
    trigger                 gg_trg_Untitled_Trigger_008 = null
    trigger                 gg_trg_Untitled_Trigger_009 = null
    trigger                 gg_trg_Untitled_Trigger_006 = null
    trigger                 gg_trg_Untitled_Trigger_001 = null
    trigger                 gg_trg_Untitled_Trigger_002 = null
    trigger                 gg_trg_Untitled_Trigger_003 = null
    trigger                 gg_trg_Untitled_Trigger_005 = null
    trigger                 gg_trg_CameraDefine        = null
    unit                    gg_unit_n002_0017          = null
    unit                    gg_unit_n000_0000          = null
    unit                    gg_unit_n003_0015          = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************

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
    call SetSoundDuration( gg_snd_PursuitTheme, 82546 )
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
    set gg_snd_FrogWhat1 = CreateSound( "Units\\Critters\\Frog\\FrogWhat1.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_FrogWhat1, "FrogWhat" )
    call SetSoundDuration( gg_snd_FrogWhat1, 226 )
    set gg_snd_GiantSeaTurtleYes2 = CreateSound( "Units\\Creeps\\GiantSeaTurtle\\GiantSeaTurtleYes2.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_GiantSeaTurtleYes2, "GiantSeaTurtleYesAttack" )
    call SetSoundDuration( gg_snd_GiantSeaTurtleYes2, 2768 )
    set gg_snd_OrcTheme = CreateSound( "Sound\\Music\\mp3Music\\OrcTheme.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_OrcTheme, 112509 )
    call SetSoundChannel( gg_snd_OrcTheme, 0 )
    call SetSoundVolume( gg_snd_OrcTheme, 127 )
    call SetSoundPitch( gg_snd_OrcTheme, 1.0 )
    set gg_snd_SacrificeUnit = CreateSound( "Abilities\\Spells\\Other\\ANsa\\SacrificeUnit.wav", false, true, true, 10, 10, "SpellsEAX" )
    call SetSoundParamsFromLabel( gg_snd_SacrificeUnit, "SacrificeUnit" )
    call SetSoundDuration( gg_snd_SacrificeUnit, 2693 )
    set gg_snd_UndeadDissipate2 = CreateSound( "Sound\\Units\\Undead\\Dissipate\\UndeadDissipate2.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_UndeadDissipate2, "UndeadDissipate" )
    call SetSoundDuration( gg_snd_UndeadDissipate2, 3612 )
    set gg_snd_OrcDefeat = "Sound\\Music\\mp3Music\\OrcDefeat.mp3"
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

    set u = CreateUnit( p, 'n00F', -435.0, -7432.0, -85.652 )
    call SetUnitColor( u, ConvertPlayerColor(3) )
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_n000_0000 = CreateUnit( p, 'n000', -7744.0, -8576.0, 270.000 )
    set u = CreateUnit( p, 'n001', -8128.0, -8000.0, 270.000 )
    set gg_unit_n003_0015 = CreateUnit( p, 'n003', -8448.0, -8576.0, 270.000 )
    set gg_unit_n002_0017 = CreateUnit( p, 'n002', -8256.0, -8704.0, 270.000 )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0(  )
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
    set gg_rct_BarracksFog = Rect( -1664.0, 6528.0, 1184.0, 9024.0 )
    set we = AddWeatherEffect( gg_rct_BarracksFog, 'WOlw' )
    call EnableWeatherEffect( we, true )
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_Barracks = CreateCameraSetup(  )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_ZOFFSET, 220.0, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_ROTATION, 90.3, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_ANGLE_OF_ATTACK, 346.2, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_TARGET_DISTANCE, 2196.1, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_ROLL, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_FARZ, 8857.8, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_NEARZ, 16.0, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_Barracks, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0 )
    call CameraSetupSetDestPosition( gg_cam_Barracks, -211.5, 7969.7, 0.0 )

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
    call TriggerAddAction( gg_trg_Untitled_Trigger_004, function Trig_Untitled_Trigger_004_Actions )
endfunction


//===========================================================================
// Trigger: Untitled Trigger 012
//===========================================================================
function Trig_Untitled_Trigger_012_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_012 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_012 = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Untitled_Trigger_012, EVENT_PLAYER_UNIT_SELL )
    call TriggerAddAction( gg_trg_Untitled_Trigger_012, function Trig_Untitled_Trigger_012_Actions )
endfunction


//===========================================================================
// Trigger: Untitled Trigger 013
//===========================================================================
function Trig_Untitled_Trigger_013_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_013 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_013 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_013, function Trig_Untitled_Trigger_013_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 008
//===========================================================================
function Trig_Untitled_Trigger_008_Actions takes nothing returns nothing
    call BlzPlaySpecialEffect( GetLastCreatedEffectBJ(), ANIM_TYPE_BIRTH )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_008 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_008 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_008, function Trig_Untitled_Trigger_008_Actions )
endfunction


//===========================================================================
// Trigger: Untitled Trigger 009
//===========================================================================
function Trig_Untitled_Trigger_009_Actions takes nothing returns nothing
    call PlaySoundBJ( gg_snd_BloodElfMageReady1 )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_009 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_009 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_009, function Trig_Untitled_Trigger_009_Actions )
endfunction


//===========================================================================
// Trigger: Untitled Trigger 006
//===========================================================================
function Trig_Untitled_Trigger_006_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_006 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_006 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_006, function Trig_Untitled_Trigger_006_Actions )
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
    call BlzSetUnitArmor( gg_unit_n003_0015, 0.00 )
    call BlzSetUnitArmor( gg_unit_n002_0017, 0.00 )
    call BlzSetUnitArmor( gg_unit_n000_0000, 0.00 )
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
// Trigger: CameraDefine
//===========================================================================
function Trig_CameraDefine_Conditions takes nothing returns boolean
    if ( not ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_STRUCTURE) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_CameraDefine_Actions takes nothing returns nothing
    call CameraSetupApplyForPlayer( true, gg_cam_Barracks, Player(0), 0 )
    call SetTimeOfDay( 12 )
    call SetCameraTargetControllerNoZForPlayer( Player(0), GetTriggerUnit(), 0, 0, false )
    call BlzSetUnitIntegerFieldBJ( GetTriggerUnit(), UNIT_IF_ORIENTATION_INTERPOLATION, 1 )
endfunction

//===========================================================================
function InitTrig_CameraDefine takes nothing returns nothing
    set gg_trg_CameraDefine = CreateTrigger(  )
    call TriggerAddCondition( gg_trg_CameraDefine, Condition( function Trig_CameraDefine_Conditions ) )
    call TriggerAddAction( gg_trg_CameraDefine, function Trig_CameraDefine_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Untitled_Trigger_004(  )
    call InitTrig_Untitled_Trigger_012(  )
    call InitTrig_Untitled_Trigger_013(  )
    call InitTrig_Untitled_Trigger_008(  )
    call InitTrig_Untitled_Trigger_009(  )
    call InitTrig_Untitled_Trigger_006(  )
    call InitTrig_Untitled_Trigger_001(  )
    call InitTrig_Untitled_Trigger_002(  )
    call InitTrig_Untitled_Trigger_003(  )
    call InitTrig_Untitled_Trigger_005(  )
    call InitTrig_CameraDefine(  )
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

    // Player 1
    call SetPlayerStartLocation( Player(1), 1 )
    call SetPlayerColor( Player(1), ConvertPlayerColor(1) )
    call SetPlayerRacePreference( Player(1), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(1), false )
    call SetPlayerController( Player(1), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_601
    call SetPlayerTeam( Player(0), 0 )
    call SetPlayerState( Player(0), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(1), 0 )
    call SetPlayerState( Player(1), PLAYER_STATE_ALLIED_VICTORY, 1 )

    //   Allied
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(0), true )

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(0), true )

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount( 0, 1 )
    call SetStartLocPrio( 0, 0, 1, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 1, 1 )
    call SetStartLocPrio( 1, 0, 0, MAP_LOC_PRIO_HIGH )
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
    call SetPlayers( 2 )
    call SetTeams( 2 )
    call SetGamePlacement( MAP_PLACEMENT_TEAMS_TOGETHER )

    call DefineStartLocation( 0, -7104.0, -9408.0 )
    call DefineStartLocation( 1, 2240.0, -320.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
    call InitAllyPriorities(  )
endfunction

