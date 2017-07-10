; #FUNCTION# ====================================================================================================================
; Name ..........: saveConfig.au3
; Description ...:
; Syntax ........:
; Parameters ....:
; Return values .:
; Author ........:
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

; Multi Finger (LunaEclipse)
IniWriteS($g_sProfileConfigPath, "MultiFinger", "Select", _GUICtrlComboBox_GetCurSel($cmbDBMultiFinger))

;~ ; Remove Special Obstacle at Builder Base
;~ If GUICtrlRead($chkRemoveSpecialObstacleBB) = $GUI_CHECKED Then
;~ 	IniWriteS($g_sProfileConfigPath, "RemoveSpecialObstacleBB", "Enable", 1)
;~ Else
;~ 	IniWriteS($g_sProfileConfigPath, "RemoveSpecialObstacleBB", "Enable", 0)
;~ EndIf

; prevent over donate
IniWriteS($g_sProfileConfigPath, "PreventOverDonate", "Enable", (GUICtrlRead($chkEnableLimitDonateUnit) = $GUI_CHECKED ? 1 : 0 ))
IniWriteS($g_sProfileConfigPath, "PreventOverDonate", "LimitValue", GUICtrlRead($txtLimitDonateUnit))

; Unit Wave Factor
IniWriteS($g_sProfileConfigPath, "SetSleep", "EnableUnitFactor", (GUICtrlRead($chkUnitFactor) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "SetSleep", "UnitFactor", GUICtrlRead($txtUnitFactor))
IniWriteS($g_sProfileConfigPath, "SetSleep", "EnableWaveFactor", (GUICtrlRead($chkWaveFactor) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "SetSleep", "WaveFactor", GUICtrlRead($txtWaveFactor))

; SmartZap Settings from ChaCalGyn (LunaEclipse) - DEMEN
IniWriteS($g_sProfileConfigPath, "Zap", "SamM0dZap", (GUICtrlRead($chkUseSamM0dZap) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "SmartZap", "ZapDBOnly", (GUICtrlRead($chkSmartZapDB) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "SmartZap", "THSnipeSaveHeroes", (GUICtrlRead($chkSmartZapSaveHeroes) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "SmartZap", "MinDE", GUICtrlRead($txtMinDark2))

; samm0d zap
IniWriteS($g_sProfileConfigPath, "SamM0dZap", "UseSmartZapRnd", (GUICtrlRead($chkSmartZapRnd) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "SamM0dZap", "CheckDrillBeforeZap", (GUICtrlRead($chkDrillExistBeforeZap) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "SamM0dZap", "PreventTripleZap", (GUICtrlRead($chkPreventTripleZap) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "SamM0dZap", "MinDEGetFromDrill", GUICtrlRead($txtMinDEGetFromDrill))

; Check Collectors Outside
IniWriteS($g_sProfileConfigPath, "search", "DBMeetCollOutside", (GUICtrlRead($chkDBMeetCollOutside) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "search", "DBCollectorsNearRedline", (GUICtrlRead($chkDBCollectorsNearRedline) = $GUI_CHECKED  ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "search", "RedlineTiles", _GUICtrlComboBox_GetCurSel($cmbRedlineTiles))
IniWriteS($g_sProfileConfigPath, "search", "SkipCollectorCheckIF", (GUICtrlRead($chkSkipCollectorCheckIF) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "search", "DBMinCollOutsidePercent", GUICtrlRead($txtDBMinCollOutsidePercent))
IniWriteS($g_sProfileConfigPath, "search", "SkipCollectorGold", GUICtrlRead($txtSkipCollectorGold))
IniWriteS($g_sProfileConfigPath, "search", "SkipCollectorElixir", GUICtrlRead($txtSkipCollectorElixir))
IniWriteS($g_sProfileConfigPath, "search", "SkipCollectorDark", GUICtrlRead($txtSkipCollectorDark))
IniWriteS($g_sProfileConfigPath, "search", "SkipCollectorCheckIFTHLevel", (GUICtrlRead($chkSkipCollectorCheckIFTHLevel) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "search", "IFTHLevel", GUICtrlRead($txtIFTHLevel))

; dropp cc first
IniWrite($g_sProfileConfigPath, "CCFirst", "Enable", (GUICtrlRead($chkDropCCFirst) = $GUI_CHECKED ? 1 : 0))

; Check League For DeadBase
IniWriteS($g_sProfileConfigPath, "search", "DBNoLeague", (GUICtrlRead($chkDBNoLeague) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "search", "ABNoLeague", (GUICtrlRead($chkABNoLeague) = $GUI_CHECKED ? 1 : 0))

; HLFClick By Samkie
IniWriteS($g_sProfileConfigPath, "HLFClick", "EnableHLFClick", (GUICtrlRead($chkEnableHLFClick) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "HLFClick", "HLFClickDelayTime", GUICtrlRead($sldHLFClickDelayTime))
IniWriteS($g_sProfileConfigPath, "HLFClick", "EnableHLFClickSetlog", (GUICtrlRead($chkEnableHLFClickSetlog) = $GUI_CHECKED ? 1 : 0))

; samm0d ocr
IniWriteS($g_sProfileConfigPath, "GetMyOcr", "EnableCustomOCR4CCRequest", (GUICtrlRead($chkEnableCustomOCR4CCRequest) = $GUI_CHECKED ? 1 : 0))

; auto dock
IniWriteS($g_sProfileConfigPath, "AutoDock", "Enable", (GUICtrlRead($chkAutoDock) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "AutoHideEmulator", "Enable", (GUICtrlRead($chkAutoHideEmulator) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "AutoMinimizeBot", "Enable", (GUICtrlRead($chkAutoMinimizeBot) = $GUI_CHECKED ? 1 : 0))

; advanced update for wall by Samkie
IniWriteS($g_sProfileConfigPath, "AU4Wall", "EnableSmartUpdateWall", (GUICtrlRead($chkSmartUpdateWall) = $GUI_CHECKED ? 1 :0))
IniWriteS($g_sProfileConfigPath, "AU4Wall", "ClickWallDelay", GUICtrlRead($txtClickWallDelay))
IniWriteS($g_sProfileConfigPath, "AU4Wall", "BaseNodeX", $aBaseNode[0])
IniWriteS($g_sProfileConfigPath, "AU4Wall", "BaseNodeY", $aBaseNode[1])
IniWriteS($g_sProfileConfigPath, "AU4Wall", "LastWallX", $aLastWall[0])
IniWriteS($g_sProfileConfigPath, "AU4Wall", "LastWallY", $aLastWall[1])
IniWriteS($g_sProfileConfigPath, "AU4Wall", "FaceDirection", $iFaceDirection)

; CSV Deployment Speed Mod
IniWriteS($g_sProfileConfigPath, "attack", "CSVSpeedDB", $isldSelectedCSVSpeed[$DB])
IniWriteS($g_sProfileConfigPath, "attack", "CSVSpeedAB", $isldSelectedCSVSpeed[$LB])

; Wait 4 CC
IniWriteS($g_sProfileConfigPath, "Wait4CC", "Enable", (GUICtrlRead($chkWait4CC) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "Wait4CC", "CCTroopSlot1", _GUICtrlComboBox_GetCurSel($cmbCCTroopSlot1))
IniWriteS($g_sProfileConfigPath, "Wait4CC", "CCTroopSlot2", _GUICtrlComboBox_GetCurSel($cmbCCTroopSlot2))
IniWriteS($g_sProfileConfigPath, "Wait4CC", "CCTroopSlot3", _GUICtrlComboBox_GetCurSel($cmbCCTroopSlot3))
IniWriteS($g_sProfileConfigPath, "Wait4CC", "CCTroopSlotQty1", GUICtrlRead($txtCCTroopSlotQty1))
IniWriteS($g_sProfileConfigPath, "Wait4CC", "CCTroopSlotQty2", GUICtrlRead($txtCCTroopSlotQty2))
IniWriteS($g_sProfileConfigPath, "Wait4CC", "CCTroopSlotQty3", GUICtrlRead($txtCCTroopSlotQty3))
IniWriteS($g_sProfileConfigPath, "Wait4CC", "CCStrength", GUICtrlRead($txtCCStrength))

; wait for cc spell
IniWriteS($g_sProfileConfigPath, "Wait4CCSpell", "Enable", (GUICtrlRead($chkWait4CCSpell) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "Wait4CCSpell", "CCSpellSlot1", _GUICtrlComboBox_GetCurSel($cmbCCSpellSlot1))
IniWriteS($g_sProfileConfigPath, "Wait4CCSpell", "CCSpellSlot2", _GUICtrlComboBox_GetCurSel($cmbCCSpellSlot2))
IniWriteS($g_sProfileConfigPath, "Wait4CCSpell", "CCSpellSlotQty1", GUICtrlRead($txtCCSpellSlotQty1))
IniWriteS($g_sProfileConfigPath, "Wait4CCSpell", "CCSpellSlotQty2", GUICtrlRead($txtCCSpellSlotQty2))

; check 4 cc
IniWrite($g_sProfileConfigPath, "Check4CC", "Enable", (GUICtrlRead($chkCheck4CC) = $GUI_CHECKED ? 1 : 0))
IniWrite($g_sProfileConfigPath, "Check4CC", "WaitTime", GUICtrlRead($txtCheck4CCWaitTime))

; global delay increse
IniWrite($g_sProfileConfigPath, "GlobalDelay", "Enable", (GUICtrlRead($chkIncreaseGlobalDelay) = $GUI_CHECKED ? 1 : 0))
IniWrite($g_sProfileConfigPath, "GlobalDelay", "DelayPercentage", GUICtrlRead($txtIncreaseGlobalDelay))

; stick to train page
IniWrite($g_sProfileConfigPath, "StickToTrainPage", "Minutes", GUICtrlRead($txtStickToTrainWindow))

; My Troops
IniWriteS($g_sProfileConfigPath, "MyTroops", "ForcePreTrainTroop", (GUICtrlRead($chkForcePreTrainTroops) = $GUI_CHECKED ? 1 : 0))
IniWrite($g_sProfileConfigPath, "MyTroops", "ForcePreTrainStrength", GUICtrlRead($txtForcePreTrainStrength))
IniWriteS($g_sProfileConfigPath, "MyTroops", "NoPreTrain", (GUICtrlRead($chkDisablePretrainTroops) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "MyTroops", "DeleteExcess", (GUICtrlRead($chkEnableDeleteExcessTroops) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "MyTroops", "EnableModTrain", (GUICtrlRead($chkModTrain) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "MyTroops", "Order", (GUICtrlRead($chkMyTroopsOrder) = $GUI_CHECKED ? 1 : 0))
IniWriteS($g_sProfileConfigPath, "MyTroops", "TrainCombo", _GUICtrlComboBox_GetCurSel($cmbMyQuickTrain))

Local $itempcmbTroopSetting = _GUICtrlComboBox_GetCurSel($cmbTroopSetting)

IniWriteS($g_sProfileConfigPath, "MyTroops", "Composition", $itempcmbTroopSetting)

cmbTroopSetting()

For $j = 0 To 2
	For $i = 0 To UBound($MyTroops) - 1
		IniWriteS($g_sProfileConfigPath, "MyTroops", $MyTroops[$i][0] & $j, $MyTroopsSetting[$j][$i][0])
		IniWriteS($g_sProfileConfigPath, "MyTroops", $MyTroops[$i][0] & "Order" & $j, $MyTroopsSetting[$j][$i][1])
	Next
Next

If GUICtrlRead($chkEnableDeleteExcessSpells) = $GUI_CHECKED Then
	IniWriteS($g_sProfileConfigPath, "MySpells", "DeleteExcess", 1)
Else
	IniWriteS($g_sProfileConfigPath, "MySpells", "DeleteExcess", 0)
EndIf

If GUICtrlRead($chkForcePreBrewSpell) = $GUI_CHECKED Then
	IniWriteS($g_sProfileConfigPath, "MySpells", "ForcePreBrewSpell", 1)
Else
	IniWriteS($g_sProfileConfigPath, "MySpells", "ForcePreBrewSpell", 0)
EndIf

If GUICtrlRead($chkMySpellsOrder) = $GUI_CHECKED Then
	IniWriteS($g_sProfileConfigPath, "MySpells", "Order", 1)
Else
	IniWriteS($g_sProfileConfigPath, "MySpells", "Order", 0)
EndIf

For $j = 0 To 2
	For $i = 0 To UBound($MySpells) - 1
		IniWriteS($g_sProfileConfigPath, "MySpells", $MySpells[$i][0] & $j, $MySpellSetting[$j][$i][0])
		IniWriteS($g_sProfileConfigPath, "MySpells", $MySpells[$i][0] & "Order" & $j, $MySpellSetting[$j][$i][1])
		IniWriteS($g_sProfileConfigPath, "MySpells", $MySpells[$i][0] & "Pre" & $j, $MySpellSetting[$j][$i][2])
	Next
Next

saveFriendlyChallengeSetting()