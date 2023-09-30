
function OpenMaleMenu()
    MenuData.CloseAll()
    local elements = {
        { label = "(01) Dutch", value = 'CS_dutch', desc = null },
        { label = "(02) Lenny", value = 'CS_lenny', desc = null },
        { label = "(03) Leon", value = 'CS_leon', desc = null },
        { label = "(04) Marshall Thurwell", value = 'CS_MARSHALL_THURWELL', desc = null },
        { label = "(05) Micah Bell", value = 'CS_MicahBell', desc = null },
        { label = "(06) Mickey", value = 'CS_Mickey', desc = null },
        { label = "(07) Alfredo Montez", value = 'CS_MP_ALFREDO_MONTEZ', desc = null },
        { label = "(08) Sheriff Freeman", value = 'CS_SHERIFFFREEMAN', desc = null },
        { label = "(09) Sheriff Owens", value = 'CS_SheriffOwens', desc = null },
        { label = "(10) Slave Catcher", value = 'CS_slavecatcher', desc = null },
        { label = "(11) Town Crier", value = 'CS_TownCrier', desc = null },
        { label = "(12) Treasure Hunter", value = 'CS_TREASUREHUNTER', desc = null },
        { label = "(13) Vampire", value = 'CS_Vampire', desc = null },
        { label = "(14) Watson", value = 'CS_WATSON_01', desc = null },
        { label = "(15) Winton Holmes", value = 'CS_WintonHolmes', desc = null },
        { label = "(16) Welsh Fighter", value = 'CS_WELSHFIGHTER', desc = null },
        { label = "(17) Wrobel", value = 'CS_Wrobel', desc = null },
        { label = "(18) Jamie", value = 'CS_JAMIE', desc = null },
        { label = "(19) Joe", value = 'CS_JOE', desc = null },
        { label = "(20) German Father", value = 'CS_GermanFather', desc = null },
        { label = "(21) French Man", value = 'CS_FRENCHMAN_01', desc = null },
        { label = "(22) Francis Sinclair", value = 'CS_FRANCIS_SINCLAIR', desc = null },
        { label = "(23) Exotic Collector", value = 'CS_EXOTICCOLLECTOR', desc = null },
        { label = "(24) Eagle Flies", value = 'CS_EagleFlies', desc = null },
        { label = "(25) Dr Malcolm MacIntosh", value = 'CS_DrMalcolmMacIntosh', desc = null },
        { label = "(26) Dr Higgins", value = 'CS_DrHiggins', desc = null },
        { label = "(27) Creole Doctor", value = 'CS_creoledoctor', desc = null },
        { label = "(28) Cornwall Train Conductor", value = 'CS_CornwallTrainConductor', desc = null },
        { label = "(29) Colm O Driscoll", value = 'CS_ColmODriscoll', desc = null },
        { label = "(30) Charles Smith", value = 'CS_charlessmith', desc = null },
        { label = "(31) Ashton", value = 'CS_ASHTON', desc = null },
        { label = "(32) Antony Formen", value = 'CS_ANTONYFOREMEN', desc = null },
        { label = "(33) Ansel Atherton", value = 'CS_ansel_atherton', desc = null },
        { label = "(34) Aberdeen Pig Farmer", value = 'CS_AberdeenPigFarmer', desc = null },
        { label = "(35) Val Bartender", value = 'U_M_O_ValBartender_01', desc = null },
        { label = "(36) Rig Train Station Worker", value = 'U_M_O_RigTrainStationWorker_01', desc = null },
        { label = "(37) Police Chief", value = 'U_M_O_BlWPoliceChief_01', desc = null },
        { label = "(38) Val Butcher", value = 'U_M_M_VALBUTCHER_01', desc = null },
        { label = "(39) Union Leader", value = 'U_M_M_UNIONLEADER_01', desc = null },
        { label = "(40) Gunsmith", value = 'U_M_M_TumGunsmith_01', desc = null },
        { label = "(41) Store Owner", value = 'U_M_M_StrGenStoreOwner_01', desc = null },
        { label = "(42) Story Treasure", value = 'U_M_M_story_TREASURE_01', desc = null },
        { label = "(43) Story Spectre", value = 'U_M_M_story_SPECTRE_01', desc = null },
        { label = "(44) Story Red Harlow", value = 'U_M_M_story_REDHARLOW_01', desc = null },
        { label = "(45) Story Pigfarm", value = 'U_M_M_story_PIGFARM_01', desc = null },
        { label = "(46) Story Hunter", value = 'U_M_M_story_HUNTER_01', desc = null },
        { label = "(47) Story Creeper", value = 'U_M_M_story_CREEPER_01', desc = null },
        { label = "(48) Story Cannibal", value = 'U_M_M_story_CANNIBAL_01', desc = null },
        { label = "(49) Skinny Old Guy", value = 'U_M_M_SKINNYOLDGUY_01', desc = null },
        { label = "(50) Shack Serial Killer", value = 'U_M_M_SHACKSERIALKILLER_01', desc = null },
        { label = "(51) Bank Guard", value = 'U_M_M_SDBANKGUARD_01', desc = null },
        { label = "(52) Donkey Rider", value = 'U_M_M_RKRDONKEYRIDER_01', desc = null },
        { label = "(53) Undertaker", value = 'U_M_M_RhdUndertaker_01', desc = null },
        { label = "(54) Priest", value = 'U_M_M_NbxPriest_01', desc = null },
        { label = "(55) Musician", value = 'U_M_M_NbxMusician_01', desc = null },
        { label = "(56) Graverobber", value = 'U_M_M_NBXGraverobber_01', desc = null },
        { label = "(57) Boat Ticket Seller", value = 'U_M_M_NbxBoatTicketSeller_01', desc = null },
        { label = "(58) Doorman", value = 'U_M_M_GAMDoorman_01', desc = null },
        { label = "(59) Fat Duster", value = 'U_M_M_FATDUSTER_01', desc = null },
        { label = "(60) Executioner", value = 'U_M_M_EXECUTIONER_01', desc = null },
        { label = "(61) Witness", value = 'U_M_M_CRDWITNESS_01', desc = null },
        { label = "(62) Manager", value = 'U_M_M_CKTManager_01', desc = null },
        { label = "(63) Circus Wagon", value = 'U_M_M_CircusWagon_01', desc = null },
        { label = "(64) Bullet Catch Volunteer", value = 'U_M_M_BULLETCATCHVOLUNTEER_01', desc = null },
        { label = "(65) Train Station Worker", value = 'U_M_M_BlWTrainStationWorker_01', desc = null },
        { label = "(66) Oldman", value = 'U_M_M_BHT_OLDMAN', desc = null },
        { label = "(67) Mine Foreman", value = 'U_M_M_BHT_MINEFOREMAN', desc = null },
        { label = "(68) Lover", value = 'U_M_M_BHT_LOVER', desc = null },
        { label = "(69) Prisoner", value = 'U_M_M_AsbPrisoner_01', desc = null },
        { label = "(70) Dead Man", value = 'U_M_M_APFDeadMan_01', desc = null },
        { label = "(71) Army", value = 'S_M_Y_Army_01', desc = null },
        { label = "(72) Lumberjack", value = 'S_M_M_StrLumberjack_01', desc = null },
        { label = "(73) Magic Lanyern", value = 'S_M_M_MAGICLANTERN_01', desc = null },
        { label = "(74) Wildman", value = 'RE_WILDMAN_01', desc = null },
        { label = "(75) Torturing Captive", value = 'RE_TORTURINGCAPTIVE_MALES_01', desc = null },
        { label = "(76) Pickpocket", value = 'RE_PICKPOCKET_MALES_01', desc = null },
        { label = "(77) Naked", value = 'RE_NAKEDSWIMMER_MALES_01', desc = null },
        { label = "(78) Drunk Dueler", value = 'RE_DRUNKDUELER_MALES_01', desc = null },
        { label = "(79) Mr Mayor", value = 'RCSP_MRMAYOR_MALES_01', desc = null },
        { label = "(80) Winter", value = 'MSP_WINTER4_MALES_01', desc = null },
        { label = "(81) Train Robbery", value = 'MSP_TRAINROBBERY2_MALES_01', desc = null },
        { label = "(82) Saloon", value = 'MSP_SALOON1_MALES_01', desc = null },
        { label = "(83) Gang", value = 'MSP_GANG2_MALES_01', desc = null },
        { label = "(84) Laborer", value = 'A_M_M_BlWLaborer_01', desc = null },
        { label = "(85) Town Folk", value = 'A_M_M_AsbTownfolk_01', desc = null },
        { label = "(86) Card Game Players", value = 'A_M_M_CARDGAMEPLAYERS_01', desc = null },
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
        {
            title    = _U("MenuTitle"),
            subtext  = _U("MenuTitle_desc"),
            align    = 'top-left',
            elements = elements,
            lastmenu = 'Shapeshift',
        },
        function(data)
            if data.current == "backup" then
                _G[data.trigger]()
            end
            if data.current.value == "CS_dutch" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_dutch')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_lenny" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_lenny')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_leon" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_leon')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_MARSHALL_THURWELL" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_MARSHALL_THURWELL')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_MicahBell" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_MicahBell')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_Mickey" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_Mickey')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_MP_ALFREDO_MONTEZ" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_MP_ALFREDO_MONTEZ')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_SHERIFFFREEMAN" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_SHERIFFFREEMAN')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_SheriffOwens" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_SheriffOwens')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_slavecatcher" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_slavecatcher')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_TownCrier" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_TownCrier')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_TREASUREHUNTER" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_TREASUREHUNTER')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_Vampire" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_Vampire')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_WATSON_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_WATSON_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_WintonHolmes" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_WintonHolmes')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_WELSHFIGHTER" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_WELSHFIGHTER')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_Wrobel" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_Wrobel')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_JAMIE" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_JAMIE')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_JOE" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_JOE')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_GermanFather" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_GermanFather')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_FRENCHMAN_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_FRENCHMAN_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_FRANCIS_SINCLAIR" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_FRANCIS_SINCLAIR')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_EXOTICCOLLECTOR" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_EXOTICCOLLECTOR')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_EagleFlies" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_EagleFlies')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_DrMalcolmMacIntosh" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_DrMalcolmMacIntosh')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_DrHiggins" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_DrHiggins')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_creoledoctor" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_creoledoctor')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_CornwallTrainConductor" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_CornwallTrainConductor')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_ColmODriscoll" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_ColmODriscoll')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_charlessmith" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_charlessmith')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_ASHTON" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_ASHTON')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_ANTONYFOREMEN" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_ANTONYFOREMEN')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_ansel_atherton" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_ansel_atherton')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_AberdeenPigFarmer" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('CS_AberdeenPigFarmer')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_O_ValBartender_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_O_ValBartender_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_O_RigTrainStationWorker_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_O_RigTrainStationWorker_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_O_BlWPoliceChief_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_O_BlWPoliceChief_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_VALBUTCHER_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_VALBUTCHER_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_UNIONLEADER_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_UNIONLEADER_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_TumGunsmith_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_TumGunsmith_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_StrGenStoreOwner_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_StrGenStoreOwner_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_story_TREASURE_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_story_TREASURE_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_story_SPECTRE_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_story_SPECTRE_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_story_REDHARLOW_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_story_REDHARLOW_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_story_PIGFARM_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_story_PIGFARM_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_story_HUNTER_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_story_HUNTER_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_story_CREEPER_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_story_CREEPER_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_story_CANNIBAL_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_story_CANNIBAL_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_SKINNYOLDGUY_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_SKINNYOLDGUY_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_SHACKSERIALKILLER_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_SHACKSERIALKILLER_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_SDBANKGUARD_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_SDBANKGUARD_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_RKRDONKEYRIDER_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_RKRDONKEYRIDER_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_RhdUndertaker_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_RhdUndertaker_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_NbxPriest_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_NbxPriest_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_NbxMusician_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_NbxMusician_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_NBXGraverobber_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_NBXGraverobber_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_NbxBoatTicketSeller_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_NbxBoatTicketSeller_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_GAMDoorman_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_GAMDoorman_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_FATDUSTER_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_FATDUSTER_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_EXECUTIONER_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_EXECUTIONER_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_CRDWITNESS_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_CRDWITNESS_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_CKTManager_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_CKTManager_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_CircusWagon_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_CircusWagon_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_BULLETCATCHVOLUNTEER_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_BULLETCATCHVOLUNTEER_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_BlWTrainStationWorker_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_BlWTrainStationWorker_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_BHT_OLDMAN" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_BHT_OLDMAN')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_BHT_MINEFOREMAN" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_BHT_MINEFOREMAN')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_BHT_LOVER" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_BHT_LOVER')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_AsbPrisoner_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_AsbPrisoner_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_M_M_APFDeadMan_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('U_M_M_APFDeadMan_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "S_M_Y_Army_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('S_M_Y_Army_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "S_M_M_StrLumberjack_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('S_M_M_StrLumberjack_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "S_M_M_MAGICLANTERN_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('S_M_M_MAGICLANTERN_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RE_WILDMAN_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('RE_WILDMAN_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RE_TORTURINGCAPTIVE_MALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('RE_TORTURINGCAPTIVE_MALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RE_PICKPOCKET_MALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('RE_PICKPOCKET_MALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RE_NAKEDSWIMMER_MALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('RE_NAKEDSWIMMER_MALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RE_DRUNKDUELER_MALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('RE_DRUNKDUELER_MALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RCSP_MRMAYOR_MALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('RCSP_MRMAYOR_MALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "MSP_WINTER4_MALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('MSP_WINTER4_MALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "MSP_TRAINROBBERY2_MALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('MSP_TRAINROBBERY2_MALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "MSP_SALOON1_MALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('MSP_SALOON1_MALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "MSP_GANG2_MALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('MSP_GANG2_MALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_M_M_BlWLaborer_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('A_M_M_BlWLaborer_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_M_M_AsbTownfolk_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('A_M_M_AsbTownfolk_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_M_M_CARDGAMEPLAYERS_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                    SetMonModel('A_M_M_CARDGAMEPLAYERS_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end

            end
        end,
        function(menu)
            menu.close()
        end)
end

function OpenFemaleMenu()
    MenuData.CloseAll()
    local elements = {
        { label = "(01)Town Folk", value = 'A_F_M_ARMTOWNFOLK_01', desc = null },
        { label = "(02) Fancy Travellers", value = 'A_F_M_BiVFancyTravellers_01', desc = null },
        { label = "(03) Large Woman", value = 'A_F_M_BTCObeseWomen_01', desc = null },
        { label = "(04) Family Travelers", value = 'A_F_M_FAMILYTRAVELERS_COOL_01', desc = null },
        { label = "(05) High Society", value = 'A_F_M_GaMHighSociety_01', desc = null },
        { label = "(06) Train Passenger", value = 'A_F_M_LOWERTRAINPASSENGERS_01', desc = null },
        { label = "(07) Slums", value = 'A_F_M_NbxSlums_01', desc = null },
        { label = "(08) Upper Class", value = 'A_F_M_NbxUpperClass_01', desc = null },
        { label = "(09) Whore", value = 'A_F_M_NbxWhore_01', desc = null },
        { label = "(10) Prostitute", value = 'A_F_M_RhdProstitute_01', desc = null },
        { label = "(11) Fancy Whore", value = 'A_F_M_SDFancyWhore_01', desc = null },
        { label = "(12) China Town", value = 'A_F_M_SDChinatown_01', desc = null },
        { label = "(13) Prison", value = 'A_F_M_SKPPRISONONLINE_01', desc = null },
        { label = "(14) Val Prostitute", value = 'A_F_M_ValProstitute_01', desc = null },
        { label = "(15) Hill Billy", value = 'A_F_O_BtcHillbilly_01', desc = null },
        { label = "(16) Wap Town Folk", value = 'A_F_O_WAPTOWNFOLK_01', desc = null },
        { label = "(17) Rancher", value = 'MBH_RHODESRANCHER_FEMALES_01', desc = null },
        { label = "(18) Bounty Hunter", value = 'MSP_BOUNTYHUNTER1_FEMALES_01', desc = null },
        { label = "(19) Industry", value = 'MSP_INDUSTRY1_FEMALES_01', desc = null },
        { label = "(20) Mary", value = 'MSP_MARY1_FEMALES_01', desc = null },
        { label = "(21) Naked", value = 'MSP_SALOON1_FEMALES_01', desc = null },
        { label = "(22) Abigail", value = 'RCES_ABIGAIL3_FEMALES_01', desc = null },
        { label = "(23) Penelope Beauand", value = 'RCSP_BEAUANDPENELOPE1_FEMALES_01', desc = null },
        { label = "(24) Crackpot", value = 'RCSP_CRACKPOT_FEMALES_01', desc = null },
        { label = "(25) Odriscolls", value = 'RCSP_ODRISCOLLS2_FEMALES_01', desc = null },
        { label = "(26) Escort", value = 'RE_ESCORT_FEMALES_01', desc = null },
        { label = "(27) Worker", value = 'S_F_M_BwmWorker_01', desc = null },
        { label = "(28) Mother", value = 'U_F_M_LagMother_01', desc = null },
        { label = "(29) Resident", value = 'U_F_M_NbxResident_01', desc = null },
        { label = "(30) Nude", value = 'U_F_M_RhdNudeWoman_01', desc = null },
        { label = "(31) Black Belle", value = 'U_F_M_STORY_BLACKBELLE_01', desc = null },
        { label = "(32) Bartender", value = 'U_F_M_TljBartender_01', desc = null },
        { label = "(33) Store Owner", value = 'U_F_M_TumGeneralStoreOwner_01', desc = null },
        { label = "(34) Hermit", value = 'U_F_O_Hermit_woman_01', desc = null },
        { label = "(35) Aberdeen Sister", value = 'CS_AberdeenSister', desc = null },
        { label = "(36) Acrobat", value = 'CS_Acrobat', desc = null },
        { label = "(37) Braithwaite Maid", value = 'CS_braithwaitemaid', desc = null },
        { label = "(38) Brenda Crawley", value = 'CS_brendacrawley', desc = null },
        { label = "(39) Catherine Braithwaite", value = 'CS_catherinebraithwaite', desc = null },
        { label = "(40) Creepy Old Lady", value = 'CS_creepyoldlady', desc = null },
        { label = "(41) Doroethea Wicklow", value = 'CS_DOROETHEAWICKLOW', desc = null },
        { label = "(42) Edith Down", value = 'CS_EdithDown', desc = null },
        { label = "(43) German Mother", value = 'CS_GermanMother', desc = null },
        { label = "(44) Gloria", value = 'CS_GLORIA', desc = null },
        { label = "(45) Karen", value = 'CS_karen', desc = null },
        { label = "(46) Lillian Powell", value = 'CS_LillianPowell', desc = null },
        { label = "(47) Lilly Millet", value = 'CS_lillymillet', desc = null },
        { label = "(48) Mama Watson", value = 'CS_MAMAWATSON', desc = null },
        { label = "(49) Mary Beth", value = 'CS_marybeth', desc = null },
        { label = "(50) Meredith", value = 'CS_Meredith', desc = null },
        { label = "(51) Miss Marjorie", value = 'CS_missMarjorie', desc = null },
        { label = "(52) Mrs Calhoun", value = 'CS_Mrs_Calhoun', desc = null },
        { label = "(53) Susan Grimshaw", value = 'CS_susangrimshaw', desc = null },
        { label = "(54) Sword Dancer", value = 'CS_SwordDancer', desc = null },
        { label = "(55) Bath Girl", value = 'CS_VHT_BATHGIRL', desc = null },
        { label = "(56) Twin Groupie", value = 'CS_twingroupie_01', desc = null },
        { label = "(57) Opera Singer", value = 'CS_OPERASINGER', desc = null },
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
    {
        title    = _U("MenuTitle"),
        subtext  = _U("MenuTitle_desc"),
        align    = 'top-left',
        elements = elements,
        lastmenu = 'Shapeshift',
    },

        function(data)
            if data.current == "backup" then
                _G[data.trigger]()

            end
            if data.current.value == "A_F_M_ARMTOWNFOLK_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
            if AdminAllowed then
                SetMonModel('A_F_M_ARMTOWNFOLK_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_BiVFancyTravellers_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_BiVFancyTravellers_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_BTCObeseWomen_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_BTCObeseWomen_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_FAMILYTRAVELERS_COOL_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_FAMILYTRAVELERS_COOL_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_GaMHighSociety_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_GaMHighSociety_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_LOWERTRAINPASSENGERS_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_LOWERTRAINPASSENGERS_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_NbxSlums_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_NbxSlums_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_NbxUpperClass_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_NbxUpperClass_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_NbxWhore_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_NbxWhore_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_RhdProstitute_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_RhdProstitute_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_SDFancyWhore_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_SDFancyWhore_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_SDChinatown_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_SDChinatown_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_SKPPRISONONLINE_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_SKPPRISONONLINE_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_M_ValProstitute_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_M_ValProstitute_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_O_BtcHillbilly_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_O_BtcHillbilly_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_F_O_WAPTOWNFOLK_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_F_O_WAPTOWNFOLK_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "MBH_RHODESRANCHER_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('MBH_RHODESRANCHER_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "MSP_BOUNTYHUNTER1_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('MSP_BOUNTYHUNTER1_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "MSP_INDUSTRY1_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('MSP_INDUSTRY1_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "MSP_MARY1_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('MSP_MARY1_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "MSP_SALOON1_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('MSP_SALOON1_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RCES_ABIGAIL3_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('RCES_ABIGAIL3_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RCSP_BEAUANDPENELOPE1_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('RCSP_BEAUANDPENELOPE1_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RCSP_CRACKPOT_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('RCSP_CRACKPOT_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RCSP_ODRISCOLLS2_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('RCSP_ODRISCOLLS2_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RE_ESCORT_FEMALES_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('RE_ESCORT_FEMALES_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "S_F_M_BwmWorker_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('S_F_M_BwmWorker_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_F_M_LagMother_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('U_F_M_LagMother_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_F_M_NbxResident_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('U_F_M_NbxResident_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_F_M_RhdNudeWoman_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('U_F_M_RhdNudeWoman_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_F_M_STORY_BLACKBELLE_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('U_F_M_STORY_BLACKBELLE_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_F_M_TljBartender_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('U_F_M_TljBartender_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_F_M_TumGeneralStoreOwner_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('U_F_M_TumGeneralStoreOwner_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "U_F_O_Hermit_woman_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('U_F_O_Hermit_woman_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_AberdeenSister" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_AberdeenSister')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_Acrobat" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_Acrobat')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_braithwaitemaid" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_braithwaitemaid')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_brendacrawley" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_brendacrawley')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_catherinebraithwaite" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_catherinebraithwaite')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_creepyoldlady" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_creepyoldlady')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_DOROETHEAWICKLOW" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_DOROETHEAWICKLOW')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_EdithDown" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_EdithDown')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_GermanMother" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_GermanMother')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_GLORIA" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_GLORIA')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_karen" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_karen')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_LillianPowell" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_LillianPowell')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_lillymillet" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_lillymillet')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_MAMAWATSON" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_MAMAWATSON')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_marybeth" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_marybeth')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_Meredith" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_Meredith')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_missMarjorie" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_missMarjorie')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_Mrs_Calhoun" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_Mrs_Calhoun')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_susangrimshaw" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_susangrimshaw')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_SwordDancer" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_SwordDancer')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_VHT_BATHGIRL" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_VHT_BATHGIRL')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "CS_twingroupie_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_twingroupie_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
                        elseif data.current.value == "CS_OPERASINGER" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('CS_OPERASINGER')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            end

        end,
        function(menu)
            menu.close()
        end)
end

function OpenDogsMenu()
    MenuData.CloseAll()
    local elements = {
        { label = "(01) American Foxhound", value = 'A_C_DogAmericanFoxhound_01', desc = null },
        { label = "(02) Australia Sheperd", value = 'A_C_DogAustralianSheperd_01', desc = null },
        { label = "(03) Blue Tick Coonhound", value = 'A_C_DogBluetickCoonhound_01', desc = null },
        { label = "(04) Catahoula Cur", value = 'A_C_DogCatahoulaCur_01', desc = null },
        { label = "(05) ChesBay Retriever", value = 'A_C_DogChesBayRetriever_01', desc = null },
        { label = "(06) Collie", value = 'A_C_DogCollie_01', desc = null },
        { label = "(07) Hobo", value = 'A_C_DogHobo_01', desc = null },
        { label = "(08) Hound", value = 'A_C_DogHound_01', desc = null },
        { label = "(09) Husky", value = 'A_C_DogHusky_01', desc = null },
        { label = "(10) Lab", value = 'A_C_DogLab_01', desc = null },
        { label = "(11) Lion", value = 'A_C_DogLion_01', desc = null },
        { label = "(12) Poodle", value = 'A_C_DogPoodle_0', desc = null },
        { label = "(13) Rufus", value = 'A_C_DogRufus_01', desc = null },
        { label = "(14) Street", value = 'A_C_DogStreet_01', desc = null },
        { label = "(15) LostDog", value = 'RE_LOSTDOG_DOGS_01', desc = null },
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
        {
            title    = _U("MenuTitle"),
            subtext  = _U("MenuSubTitle"),
            align    = 'top-left',
            elements = elements,
            lastmenu = 'Shapeshift',
        },
        function(data)
            if data.current == "backup" then
                _G[data.trigger]()

            end
            if data.current.value == "A_C_DogAmericanFoxhound_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogAmericanFoxhound_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogAustralianSheperd_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogAustralianSheperd_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogBluetickCoonhound_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogBluetickCoonhound_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogCatahoulaCur_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogCatahoulaCur_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogChesBayRetriever_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogChesBayRetriever_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogCollie_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogCollie_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogHobo_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogHobo_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogHound_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogHound_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogHusky_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogHusky_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogLab_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogLab_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogLion_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogLion_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogPoodle_0" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogPoodle_0')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogRufus_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogRufus_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_DogStreet_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_DogStreet_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "RE_LOSTDOG_DOGS_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('RE_LOSTDOG_DOGS_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            end
        end,
        function(menu)
            menu.close()
        end)
end

function OpenHorsesMenu()
    MenuData.CloseAll()
    local elements = {
        { label = "(01) AmericanPaint Greyovero", value = 'A_C_Horse_AmericanPaint_Greyovero', desc = null },
        { label = "(02) AmericanPaint Overo", value = 'A_C_Horse_AmericanPaint_Overo', desc = null },
        { label = "(03) AmericanPaint SplashedWhite", value = 'A_C_Horse_AmericanPaint_SplashedWhite', desc = null },
        { label = "(04) AmericanPaint Tobiano", value = 'A_C_Horse_AmericanPaint_Tobiano', desc = null },
        { label = "(05) Gypsycob Palominoblagdon", value = 'a_c_horse_gypsycob_palominoblagdon', desc = null },
        { label = "(06) Gypsycob Piebald", value = 'a_c_horse_gypsycob_piebald', desc = null },
        { label = "(07) Gypsycob Splashedbay", value = 'a_c_horse_gypsycob_splashedbay', desc = null },
        { label = "(08) Gypsycob Splashedpiebald", value = 'a_c_horse_gypsycob_splashedpiebald', desc = null },
        { label = "(09) Gypsycob Skewbald", value = 'a_c_horse_gypsycob_skewbald', desc = null },
        { label = "(10) Gypsycob Whiteblagdon", value = 'a_c_horse_gypsycob_whiteblagdon', desc = null },
        { label = "(11) American Standardbred Black", value = 'A_C_Horse_AmericanStandardbred_Black', desc = null },
        { label = "(12) American Standardbred Buckskin", value = 'A_C_Horse_AmericanStandardbred_Buckskin', desc = null },
        { label = "(13) American Standardbred PalominoDapple", value = 'A_C_Horse_AmericanStandardbred_PalominoDapple', desc = null },
        { label = "(14) American Standardbred SilverTail Buckskin", value = 'A_C_Horse_AmericanStandardbred_SilverTailBuckskin', desc = null },
        { label = "(16) Andalusian DarkBay", value = 'A_C_Horse_Andalusian_DarkBay', desc = null },
        { label = "(17) Andalusian Perlino", value = 'A_C_Horse_Andalusian_Perlino', desc = null },
        { label = "(18) Andalusian RoseGray", value = 'A_C_Horse_Andalusian_RoseGray', desc = null },
        { label = "(19) Appaloosa Black Snowflake", value = 'A_C_Horse_Appaloosa_BlackSnowflake', desc = null },
        { label = "(20) Appaloosa Blanket", value = 'A_C_Horse_Appaloosa_Blanket', desc = null },
        { label = "(21) Appaloosa Brown Leopard", value = 'A_C_Horse_Appaloosa_BrownLeopard', desc = null },
        { label = "(22) Appaloosa FewSpotted", value = 'A_C_Horse_Appaloosa_FewSpotted_PC', desc = null },
        { label = "(23) Appaloosa Leopard", value = 'A_C_Horse_Appaloosa_Leopard', desc = null },
        { label = "(24) Appaloosa Leopard Blanket", value = 'A_C_Horse_Appaloosa_LeopardBlanket', desc = null },
        { label = "(25) Arabian Black", value = 'A_C_Horse_Arabian_Black', desc = null },
        { label = "(26) Arabian Grey", value = 'A_C_Horse_Arabian_Grey', desc = null },
        { label = "(27) Arabian White", value = 'A_C_Horse_Arabian_White', desc = null },
        { label = "(28) Arabian RoseGreyBay", value = 'A_C_Horse_Arabian_RoseGreyBay', desc = null },
        { label = "(29) Arabian WarpedBrindle", value = 'A_C_Horse_Arabian_WarpedBrindle_PC', desc = null },
        { label = "(30) Ardennes BayRoan", value = 'A_C_Horse_Ardennes_BayRoan', desc = null },
        { label = "(31) Ardennes IronGreyRoan", value = 'A_C_Horse_Ardennes_IronGreyRoan', desc = null },
        { label = "(32) Ardennes StrawberryRoan", value = 'A_C_Horse_Ardennes_StrawberryRoan', desc = null },
        { label = "(33) Belgian BlondChestnut", value = 'A_C_Horse_Belgian_BlondChestnut', desc = null },
        { label = "(34) Belgian MealyChestnut", value = 'A_C_Horse_Belgian_MealyChestnut', desc = null },
        { label = "(35) DutchWarmblood ChocolateRoan", value = 'A_C_Horse_DutchWarmblood_ChocolateRoan', desc = null },
        { label = "(36) DutchWarmblood SealBrown", value = 'A_C_Horse_DutchWarmblood_SealBrown', desc = null },
        { label = "(37) DutchWarmblood SootyBuckskin", value = 'A_C_Horse_DutchWarmblood_SootyBuckskin', desc = null },
        { label = "(38) HungarianHalfbred DarkDappleGrey", value = 'A_C_Horse_HungarianHalfbred_DarkDappleGrey', desc = null },
        { label = "(39) HungarianHalfbred FlaxenChestnut", value = 'A_C_Horse_HungarianHalfbred_FlaxenChestnut', desc = null },
        { label = "(40) HungarianHalfbred LiverChestnut", value = 'A_C_Horse_HungarianHalfbred_LiverChestnut', desc = null },
        { label = "(41) KentuckySaddle Black", value = 'A_C_Horse_KentuckySaddle_Black', desc = null },
        { label = "(42) KentuckySaddle ButterMilkBuckskin", value = 'A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC', desc = null },
        { label = "(43) KentuckySaddle ChestnutPinto", value = 'A_C_Horse_KentuckySaddle_ChestnutPinto', desc = null },
        { label = "(44) KentuckySaddle Grey", value = 'A_C_Horse_KentuckySaddle_Grey', desc = null },
        { label = "(45) KentuckySaddle SilverBay", value = 'A_C_Horse_KentuckySaddle_SilverBay', desc = null },
        { label = "(46) Kladruber Black", value = 'A_C_Horse_Kladruber_Black', desc = null },
        { label = "(47) Kladruber Silver", value = 'A_C_Horse_Kladruber_Silver', desc = null },
        { label = "(48) Kladruber Cremello", value = 'A_C_Horse_Kladruber_Cremello', desc = null },
        { label = "(49) Kladruber Grey", value = 'A_C_Horse_Kladruber_Grey', desc = null },
        { label = "(50) Kladruber DappleRoseGrey", value = 'A_C_Horse_Kladruber_DappleRoseGrey', desc = null },
        { label = "(51) Kladruber White", value = 'A_C_Horse_Kladruber_White', desc = null },
        { label = "(52) MissouriFoxTrotter AmberChampagne", value = 'A_C_Horse_MissouriFoxTrotter_AmberChampagne', desc = null },
        { label = "(53) MissouriFoxTrotter SableChampagne", value = 'A_C_Horse_MissouriFoxTrotter_SableChampagne', desc = null },
        { label = "(54) MissouriFoxTrotter SilverDapplePinto", value = 'A_C_Horse_MissouriFoxTrotter_SilverDapplePinto', desc = null },
        { label = "(55) MissouriFoxtrotter Blacktovero", value = 'A_C_Horse_MissouriFoxtrotter_Blacktovero', desc = null },
        { label = "(56) MissouriFoxtrotter Blueroan", value = 'A_C_Horse_MissouriFoxtrotter_Blueroan', desc = null },
        { label = "(57) MissouriFoxtrotter Buckskinbrindle", value = 'A_C_Horse_MissouriFoxtrotter_Buckskinbrindle', desc = null },
        { label = "(58) MissouriFoxtrotter Dapplegrey", value = 'A_C_Horse_MissouriFoxtrotter_Dapplegrey', desc = null },
        { label = "(59) Morgan Bay", value = 'A_C_Horse_Morgan_Bay', desc = null },
        { label = "(60) Morgan BayRoan", value = 'A_C_Horse_Morgan_BayRoan', desc = null },
        { label = "(61) Morgan FlaxenChestnut", value = 'A_C_Horse_Morgan_FlaxenChestnut', desc = null },
        { label = "(62) Morgan LiverChestnut", value = 'A_C_Horse_Morgan_LiverChestnut_PC', desc = null },
        { label = "(63) Morgan Palomino", value = 'A_C_Horse_Morgan_Palomino', desc = null },
        { label = "(64) Mangy", value = 'A_C_Horse_MP_Mangy_Backup', desc = null },
        { label = "(65) Mustang GoldenDun", value = 'A_C_Horse_Mustang_GoldenDun', desc = null },
        { label = "(66) Mustang GrulloDun", value = 'A_C_Horse_Mustang_GrulloDun', desc = null },
        { label = "(67) Mustang TigerStripedBay", value = 'A_C_Horse_Mustang_TigerStripedBay', desc = null },
        { label = "(68) Mustang WildBay", value = 'A_C_Horse_Mustang_WildBay', desc = null },
        { label = "(69) Mustang Blackovero", value = 'A_C_Horse_Mustang_Blackovero', desc = null },
        { label = "(70) Mustang Buckskin", value = 'A_C_Horse_Mustang_Buckskin', desc = null },
        { label = "(71) Mustang Chestnuttovero", value = 'A_C_Horse_Mustang_Chestnuttovero', desc = null },
        { label = "(72) Mustang Reddunovero", value = 'A_C_Horse_Mustang_Reddunovero', desc = null },
        { label = "(73) Nokota BlueRoan", value = 'A_C_Horse_Nokota_BlueRoan', desc = null },
        { label = "(74) Nokota ReverseDappleRoan", value = 'A_C_Horse_Nokota_ReverseDappleRoan', desc = null },
        { label = "(75) Nokota WhiteRoan", value = 'A_C_Horse_Nokota_WhiteRoan', desc = null },
        { label = "(76) Shire DarkBay", value = 'A_C_Horse_Shire_DarkBay', desc = null },
        { label = "(77) Shire LightGrey", value = 'A_C_Horse_Shire_LightGrey', desc = null },
        { label = "(78) Shire RavenBlack", value = 'A_C_Horse_Shire_RavenBlack', desc = null },
        { label = "(79) SuffolkPunch RedChestnut", value = 'A_C_Horse_SuffolkPunch_RedChestnut', desc = null },
        { label = "(80) SuffolkPunch Sorrel", value = 'A_C_Horse_SuffolkPunch_Sorrel', desc = null },
        { label = "(81) TennesseeWalker BlackRabicano", value = 'A_C_Horse_TennesseeWalker_BlackRabicano', desc = null },
        { label = "(82) TennesseeWalker Chestnut", value = 'A_C_Horse_TennesseeWalker_Chestnut', desc = null },
        { label = "(83) TennesseeWalker DappleBay", value = 'A_C_Horse_TennesseeWalker_DappleBay', desc = null },
        { label = "(84) TennesseeWalker FlaxenRoan", value = 'A_C_Horse_TennesseeWalker_FlaxenRoan', desc = null },
        { label = "(85) TennesseeWalker MahoganyBay", value = 'A_C_Horse_TennesseeWalker_MahoganyBay', desc = null },
        { label = "(86) TennesseeWalker RedRoan", value = 'A_C_Horse_TennesseeWalker_RedRoan', desc = null },
        { label = "(87) Thoroughbred BlackChestnut", value = 'A_C_Horse_Thoroughbred_BlackChestnut', desc = null },
        { label = "(88) Thoroughbred BloodBay", value = 'A_C_Horse_Thoroughbred_BloodBay', desc = null },
        { label = "(89) Thoroughbred Brindle", value = 'A_C_Horse_Thoroughbred_Brindle', desc = null },
        { label = "(90) Thoroughbred DappleGrey", value = 'A_C_Horse_Thoroughbred_DappleGrey', desc = null },
        { label = "(91) Thoroughbred ReverseDappleBlack", value = 'A_C_Horse_Thoroughbred_ReverseDappleBlack', desc = null },
        { label = "(92) Turkoman DarkBay", value = 'A_C_Horse_Turkoman_DarkBay', desc = null },
        { label = "(93) Turkoman Gold", value = 'A_C_Horse_Turkoman_Gold', desc = null },
        { label = "(94) Turkoman Silver", value = 'A_C_Horse_Turkoman_Silver', desc = null },
        { label = "(95) Turkoman Black", value = 'A_C_Horse_Turkoman_Black', desc = null },
        { label = "(96) Turkoman Chestnut", value = 'A_C_Horse_Turkoman_Chestnut', desc = null },
        { label = "(97) Turkoman Grey", value = 'A_C_Horse_Turkoman_Grey', desc = null },
        { label = "(98) Turkoman Perlino", value = 'A_C_Horse_Turkoman_Perlino', desc = null },
        { label = "(99) Criollo Dun", value = 'A_C_Horse_Criollo_Dun', desc = null },
        { label = "(100) Criollo MarbleSabino", value = 'A_C_Horse_Criollo_MarbleSabino', desc = null },
        { label = "(101) Criollo_BayFrameOvero", value = 'A_C_Horse_Criollo_BayFrameOvero', desc = null },
        { label = "(102) Criollo BayBrindle", value = 'A_C_Horse_Criollo_BayBrindle', desc = null },
        { label = "(103) Criollo SorrelOvero", value = 'A_C_Horse_Criollo_SorrelOvero', desc = null },
        { label = "(104) Criollo BlueRoanOvero", value = 'A_C_Horse_Criollo_BlueRoanOvero', desc = null },
        { label = "(105) Breton SteelGrey", value = 'A_C_Horse_Breton_SteelGrey', desc = null },
        { label = "(106) Breton MealyDapple", value = 'A_C_Horse_Breton_MealyDapple', desc = null },
        { label = "(107) Breton SealBrown", value = 'A_C_Horse_Breton_SealBrown', desc = null },
        { label = "(108) Breton GrulloDun", value = 'A_C_Horse_Breton_GrulloDun', desc = null },
        { label = "(109) Breton Sorrel", value = 'A_C_Horse_Breton_Sorrel', desc = null },
        { label = "(110) Breton RedRoan", value = 'A_C_Horse_Breton_RedRoan', desc = null },
        { label = "(111) NORFOLKROADSTER BLACK", value = 'A_C_HORSE_NORFOLKROADSTER_BLACK', desc = null },
        { label = "(112) NORFOLKROADSTER SPECKLEDGREY", value = 'A_C_HORSE_NORFOLKROADSTER_SPECKLEDGREY', desc = null },
        { label = "(113) NORFOLKROADSTER PIEBALDROAN", value = 'A_C_HORSE_NORFOLKROADSTER_PIEBALDROAN', desc = null },
        { label = "(114) NORFOLKROADSTER ROSEGREY", value = 'A_C_HORSE_NORFOLKROADSTER_ROSEGREY', desc = null },
        { label = "(115) NORFOLKROADSTER DAPPLEDBUCKSKIN", value = 'A_C_HORSE_NORFOLKROADSTER_DAPPLEDBUCKSKIN', desc = null },
        { label = "(116) NORFOLKROADSTER SPOTTEDTRICOLOR", value = 'A_C_HORSE_NORFOLKROADSTER_SPOTTEDTRICOLOR', desc = null },
        { label = "(117) Zebra", value = 'A_C_HorseMulePainted_01', desc = null },
        { label = "(118) Mule", value = 'A_C_HorseMule_01', desc = null },
        { label = "(119) Donkey", value = 'A_C_Donkey_01', desc = null },
        
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
        {
            title    = _U("MenuTitle"),
            subtext  = _U("MenuSubTitle"),
            align    = 'top-left',
            elements = elements,
            lastmenu = 'Shapeshift',
        },
        function(data)
            if data.current == "backup" then
                _G[data.trigger]()

            end
        if data.current.value == "A_C_Horse_AmericanPaint_Greyovero" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_AmericanPaint_Greyovero')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_AmericanPaint_Overo" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_AmericanPaint_Overo')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_AmericanPaint_SplashedWhite" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_AmericanPaint_SplashedWhite')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_AmericanPaint_Tobiano" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_AmericanPaint_Tobiano')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "a_c_horse_gypsycob_palominoblagdon" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('a_c_horse_gypsycob_palominoblagdon')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "a_c_horse_gypsycob_piebald" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('a_c_horse_gypsycob_piebald')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "a_c_horse_gypsycob_splashedbay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('a_c_horse_gypsycob_splashedbay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "a_c_horse_gypsycob_splashedpiebald" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('a_c_horse_gypsycob_splashedpiebald')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "a_c_horse_gypsycob_skewbald" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('a_c_horse_gypsycob_skewbald')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "a_c_horse_gypsycob_whiteblagdon" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('a_c_horse_gypsycob_whiteblagdon')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_AmericanStandardbred_Black" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_AmericanStandardbred_Black')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_AmericanStandardbred_Buckskin" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_AmericanStandardbred_Buckskin')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_AmericanStandardbred_PalominoDapple" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_AmericanStandardbred_PalominoDapple')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_AmericanStandardbred_SilverTailBuckskin" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_AmericanStandardbred_SilverTailBuckskin')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Andalusian_DarkBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Andalusian_DarkBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Andalusian_Perlino" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Andalusian_Perlino')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Andalusian_RoseGray" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Andalusian_RoseGray')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Appaloosa_BlackSnowflake" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Appaloosa_BlackSnowflake')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Appaloosa_Blanket" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Appaloosa_Blanket')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Appaloosa_BrownLeopard" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Appaloosa_BrownLeopard')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Appaloosa_FewSpotted_PC" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Appaloosa_FewSpotted_PC')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Appaloosa_Leopard" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Appaloosa_Leopard')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Appaloosa_LeopardBlanket" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Appaloosa_LeopardBlanket')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Arabian_Black" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Arabian_Black')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Arabian_Grey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Arabian_Grey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Arabian_White" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Arabian_White')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Arabian_RoseGreyBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Arabian_RoseGreyBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Arabian_WarpedBrindle_PC" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Arabian_WarpedBrindle_PC')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Ardennes_BayRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Ardennes_BayRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Ardennes_IronGreyRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Ardennes_IronGreyRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Ardennes_StrawberryRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Ardennes_StrawberryRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Belgian_BlondChestnut" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Belgian_BlondChestnut')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Belgian_MealyChestnut" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Belgian_MealyChestnut')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_DutchWarmblood_ChocolateRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_DutchWarmblood_ChocolateRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_DutchWarmblood_SealBrown" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_DutchWarmblood_SealBrown')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_DutchWarmblood_SootyBuckskin" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_DutchWarmblood_SootyBuckskin')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_HungarianHalfbred_DarkDappleGrey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_HungarianHalfbred_DarkDappleGrey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_HungarianHalfbred_FlaxenChestnut" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_HungarianHalfbred_FlaxenChestnut')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_HungarianHalfbred_LiverChestnut" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_HungarianHalfbred_LiverChestnut')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_KentuckySaddle_Black" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_KentuckySaddle_Black')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_KentuckySaddle_ChestnutPinto" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_KentuckySaddle_ChestnutPinto')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_KentuckySaddle_Grey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_KentuckySaddle_Grey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_KentuckySaddle_SilverBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_KentuckySaddle_SilverBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Kladruber_Black" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Kladruber_Black')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Kladruber_Silver" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Kladruber_Silver')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Kladruber_Cremello" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Kladruber_Cremello')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Kladruber_Grey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Kladruber_Grey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Kladruber_DappleRoseGrey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Kladruber_DappleRoseGrey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Kladruber_White" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Kladruber_White')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_MissouriFoxTrotter_AmberChampagne" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_MissouriFoxTrotter_AmberChampagne')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_MissouriFoxTrotter_SableChampagne" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_MissouriFoxTrotter_SableChampagne')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_MissouriFoxTrotter_SilverDapplePinto" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_MissouriFoxTrotter_SilverDapplePinto')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_MissouriFoxtrotter_Blacktovero" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_MissouriFoxtrotter_Blacktovero')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_MissouriFoxtrotter_Blueroan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_MissouriFoxtrotter_Blueroan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_MissouriFoxtrotter_Buckskinbrindle" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_MissouriFoxtrotter_Buckskinbrindle')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_MissouriFoxtrotter_Dapplegrey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_MissouriFoxtrotter_Dapplegrey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Morgan_Bay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Morgan_Bay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Morgan_BayRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Morgan_BayRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Morgan_FlaxenChestnut" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Morgan_FlaxenChestnut')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Morgan_LiverChestnut_PC" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Morgan_LiverChestnut_PC')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Morgan_Palomino" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Morgan_Palomino')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_MP_Mangy_Backup" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_MP_Mangy_Backup')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Mustang_GoldenDun" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Mustang_GoldenDun')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Mustang_GrulloDun" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Mustang_GrulloDun')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Mustang_TigerStripedBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Mustang_TigerStripedBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Mustang_WildBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Mustang_WildBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Mustang_Blackovero" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Mustang_Blackovero')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Mustang_Buckskin" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Mustang_Buckskin')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Mustang_Chestnuttovero" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Mustang_Chestnuttovero')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Mustang_Reddunovero" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Mustang_Reddunovero')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Nokota_BlueRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Nokota_BlueRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Nokota_ReverseDappleRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Nokota_ReverseDappleRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Nokota_WhiteRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Nokota_WhiteRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Shire_DarkBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Shire_DarkBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Shire_LightGrey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Shire_LightGrey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Shire_RavenBlack" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Shire_RavenBlack')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_SuffolkPunch_RedChestnut" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_SuffolkPunch_RedChestnut')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_SuffolkPunch_Sorrel" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_SuffolkPunch_Sorrel')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_TennesseeWalker_BlackRabicano" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_TennesseeWalker_BlackRabicano')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_TennesseeWalker_Chestnut" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_TennesseeWalker_Chestnut')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_TennesseeWalker_DappleBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_TennesseeWalker_DappleBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_TennesseeWalker_FlaxenRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_TennesseeWalker_FlaxenRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_TennesseeWalker_MahoganyBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_TennesseeWalker_MahoganyBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_TennesseeWalker_RedRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_TennesseeWalker_RedRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Thoroughbred_BlackChestnut" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Thoroughbred_BlackChestnut')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Thoroughbred_BloodBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Thoroughbred_BloodBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Thoroughbred_Brindle" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Thoroughbred_Brindle')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Thoroughbred_DappleGrey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Thoroughbred_DappleGrey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Thoroughbred_ReverseDappleBlack" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Thoroughbred_ReverseDappleBlack')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Turkoman_DarkBay" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Turkoman_DarkBay')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Turkoman_Gold" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Turkoman_Gold')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Turkoman_Silver" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Turkoman_Silver')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Turkoman_Black" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Turkoman_Black')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Turkoman_Chestnut" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Turkoman_Chestnut')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Turkoman_Grey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Turkoman_Grey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Turkoman_Perlino" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Turkoman_Perlino')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Criollo_Dun" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Criollo_Dun')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Criollo_MarbleSabino" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Criollo_MarbleSabino')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Criollo_BayFrameOvero" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Criollo_BayFrameOvero')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Criollo_BayBrindle" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Criollo_BayBrindle')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Criollo_SorrelOvero" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Criollo_SorrelOvero')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Criollo_BlueRoanOvero" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Criollo_BlueRoanOvero')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Breton_SteelGrey" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Breton_SteelGrey')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Breton_MealyDapple" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Breton_MealyDapple')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Breton_SealBrown" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Breton_SealBrown')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Breton_GrulloDun" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Breton_GrulloDun')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Breton_Sorrel" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Breton_Sorrel')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Horse_Breton_RedRoan" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Horse_Breton_RedRoan')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_HORSE_NORFOLKROADSTER_BLACK" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_HORSE_NORFOLKROADSTER_BLACK')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_HORSE_NORFOLKROADSTER_SPECKLEDGREY" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_HORSE_NORFOLKROADSTER_SPECKLEDGREY')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_HORSE_NORFOLKROADSTER_PIEBALDROAN" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_HORSE_NORFOLKROADSTER_PIEBALDROAN')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_HORSE_NORFOLKROADSTER_ROSEGREY" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_HORSE_NORFOLKROADSTER_ROSEGREY')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_HORSE_NORFOLKROADSTER_DAPPLEDBUCKSKIN" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_HORSE_NORFOLKROADSTER_DAPPLEDBUCKSKIN')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_HORSE_NORFOLKROADSTER_SPOTTEDTRICOLOR" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_HORSE_NORFOLKROADSTER_SPOTTEDTRICOLOR')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_HorseMulePainted_01" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_HorseMulePainted_01')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_HorseMule_01" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_HorseMule_01')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        elseif data.current.value == "A_C_Donkey_01" then
            TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
            Wait(100)
            if AdminAllowed then
            SetMonModel('A_C_Donkey_01')
            else
                TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
            end
        end
    end,
        function(menu)
            menu.close()
        end)
end

function OpenAnimalsMenu()
    MenuData.CloseAll()
    local elements = {
        { label = "(01) Alligator", value = 'a_c_alligator_01', desc = null },
        { label = "(02) Armadillo", value = 'a_c_armadillo_01', desc = null },
        { label = "(03) Badger", value = 'a_c_badger_01', desc = null },
        { label = "(04) Bear", value = 'A_C_Bear_01', desc = null },
        { label = "(05) Black bear", value = 'A_C_BearBlack_01', desc = null },
        { label = "(06) Beaver", value = 'A_C_Beaver_01', desc = null },
        { label = "(07) Big Horn Ram", value = 'A_C_BigHornRam_01', desc = null },
        { label = "(08) Boar", value = 'A_C_Boar_01', desc = null },
        { label = "(09) Buck", value = 'A_C_Buck_01', desc = null },
        { label = "(10) Buffalo", value = 'A_C_Buffalo_01', desc = null },
        { label = "(11) Buffalo Tatanka", value = 'A_C_Buffalo_Tatanka_01', desc = null },
        { label = "(12) Bull", value = 'A_C_Ox_01', desc = null },
        { label = "(13) Cat", value = 'A_C_Cat_01', desc = null },
        { label = "(14) Cougar", value = 'A_C_Cougar_01', desc = null },
        { label = "(15) Cow", value = 'A_C_Cow', desc = null },
        { label = "(16) Coyote", value = 'A_C_Coyote_01', desc = null },
        { label = "(17) Deer", value = 'A_C_Deer_01', desc = null },
        { label = "(18) Donkey", value = 'A_C_Donkey_01', desc = null },
        { label = "(19) Elk", value = 'A_C_Elk_01', desc = null },
        { label = "(20) Fox", value = 'A_C_Fox_01', desc = null },
        { label = "(21) Gila Monster", value = 'A_C_GilaMonster_01', desc = null },
        { label = "(22) Goat", value = 'A_C_Goat_01', desc = null },
        { label = "(23) Iguana Desert", value = 'A_C_IguanaDesert_01', desc = null },
        { label = "(24) Javelina", value = 'A_C_Javelina_01', desc = null },
        { label = "(25) Lion", value = 'A_C_LionMangy_01', desc = null },
        { label = "(26) Moose", value = 'A_C_Moose_01', desc = null },
        { label = "(27) Muskrat", value = 'A_C_Muskrat_01', desc = null },
        { label = "(28) Panther", value = 'A_C_Panther_01', desc = null },
        { label = "(29) Pig", value = 'A_C_Pig_01', desc = null },
        { label = "(30) Possum", value = 'A_C_Possum_01', desc = null },
        { label = "(31) Pronghorn", value = 'A_C_Pronghorn_01', desc = null },
        { label = "(32) Rabbit", value = 'A_C_Rabbit_01', desc = null },
        { label = "(33) Raccoon", value = 'A_C_Raccoon_01', desc = null },
        { label = "(34) Sheep", value = 'A_C_Sheep_01', desc = null },
        { label = "(35) Skunk", value = 'A_C_Skunk_01', desc = null },
        { label = "(36) Snake", value = 'A_C_Snake_01', desc = null },
        { label = "(37) Snake BlackTail Rattle", value = 'A_C_SnakeBlackTailRattle_01', desc = null },
        { label = "(38) Snake Fer De Lance", value = 'A_C_SnakeFerDeLance_01', desc = null },
        { label = "(39) Snake Red Boa", value = 'A_C_SnakeRedBoa_01', desc = null },
        { label = "(40) Snake Red Boa 10ft", value = 'A_C_SnakeRedBoa10ft_01', desc = null },
        { label = "(41) Turtle Snapping", value = 'A_C_TurtleSnapping_01', desc = null },
        { label = "(42) Wolf", value = 'A_C_Wolf', desc = null },
        { label = "(43) Wolf Medium", value = 'A_C_Wolf_Medium', desc = null },
        { label = "(44) Wolf Small", value = 'A_C_Wolf_Small', desc = null },        
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
        {
            title    = _U("MenuTitle"),
            subtext  = _U("MenuSubTitle"),
            align    = 'top-left',
            elements = elements,
            lastmenu = 'Shapeshift',
        },
        function(data)
            if data.current == "backup" then
                _G[data.trigger]()

            end
            if data.current.value == "a_c_alligator_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('a_c_alligator_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "a_c_armadillo_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('a_c_armadillo_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "a_c_badger_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('a_c_badger_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Bear_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Bear_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_BearBlack_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_BearBlack_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Beaver_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Beaver_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_BigHornRam_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_BigHornRam_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Boar_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Boar_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Buck_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Buck_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Buffalo_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Buffalo_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Buffalo_Tatanka_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Buffalo_Tatanka_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Ox_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Ox_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Cat_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Cat_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Cougar_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Cougar_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Cow" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Cow')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Coyote_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Coyote_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Deer_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Deer_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Donkey_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Donkey_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Elk_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Elk_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Fox_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Fox_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_GilaMonster_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_GilaMonster_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Goat_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Goat_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_IguanaDesert_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_IguanaDesert_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Javelina_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Javelina_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_LionMangy_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_LionMangy_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Moose_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Moose_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Muskrat_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Muskrat_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Panther_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Panther_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Pig_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Pig_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Possum_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Possum_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Pronghorn_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Pronghorn_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Rabbit_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Rabbit_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Raccoon_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Raccoon_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Sheep_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Sheep_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Skunk_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Skunk_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Snake_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Snake_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_SnakeBlackTailRattle_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_SnakeBlackTailRattle_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_SnakeFerDeLance_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_SnakeFerDeLance_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_SnakeRedBoa_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_SnakeRedBoa_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_SnakeRedBoa10ft_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_SnakeRedBoa10ft_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_TurtleSnapping_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_TurtleSnapping_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Wolf" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Wolf')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Wolf_Medium" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Wolf_Medium')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Wolf_Small" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Wolf_Small')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            end

        end,
        function(menu)
            menu.close()
        end)
end

function OpenBirdsMenu()
    MenuData.CloseAll()
    local elements = {
        { label = "(01) Crane Whooping", value = 'A_C_CraneWhooping_01', desc = null },
        { label = "(02) Crow", value = 'A_C_Crow_01', desc = null },
        { label = "(03) Eagle", value = 'A_C_Eagle_01', desc = null },
        { label = "(04) Egret", value = 'A_C_Egret_01', desc = null },
        { label = "(05) Canada Goose", value = 'A_C_GooseCanada_01', desc = null },
        { label = "(06) Hawk", value = 'A_C_Hawk_01', desc = null },
        { label = "(07) Heron", value = 'A_C_Heron_01', desc = null },
        { label = "(08) Loon", value = 'A_C_Loon_01', desc = null },
        { label = "(09) Oriole", value = 'A_C_Oriole_01', desc = null },
        { label = "(10) Owl", value = 'A_C_Owl_01', desc = null },
        { label = "(11) Parrot", value = 'A_C_Parrot_01', desc = null },
        { label = "(12) Pelican", value = 'A_C_Pelican_01', desc = null },
        { label = "(13) Pheasant", value = 'A_C_Pheasant_01', desc = null },
        { label = "(14) Pigeon", value = 'A_C_Pigeon', desc = null },
        { label = "(15) Prairie Chicken", value = 'A_C_PrairieChicken_01', desc = null },
        { label = "(16) Quail", value = 'A_C_Quail_01', desc = null },
        { label = "(17) Raven", value = 'A_C_Raven_01', desc = null },
        { label = "(18) Red Footed Booby", value = 'A_C_RedFootedBooby_01', desc = null },
        { label = "(19) Robin", value = 'A_C_Robin_01', desc = null },
        { label = "(20) Roseate Spoonbill", value = 'A_C_RoseateSpoonbill_01', desc = null },
        { label = "(21) Seagull", value = 'A_C_Seagull_01', desc = null },
        { label = "(22) Song Bird", value = 'A_C_SongBird_01', desc = null },
        { label = "(23) Sparrow", value = 'A_C_Sparrow_01', desc = null },
        { label = "(24) Wild Turkey", value = 'A_C_TurkeyWild_01', desc = null },
        { label = "(25) Vulture", value = 'A_C_Vulture_01', desc = null },
        { label = "(26) Woodpecker", value = 'A_C_Woodpecker_01', desc = null },
        { label = "(27) Woodpecker 02", value = 'A_C_Woodpecker_02', desc = null },        
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
        {
            title    = _U("MenuTitle"),
            subtext  = _U("MenuSubTitle"),
            align    = 'top-left',
            elements = elements,
            lastmenu = 'Shapeshift',
        },
        function(data)
            if data.current == "backup" then
                _G[data.trigger]()

            end
            if data.current.value == "A_C_CraneWhooping_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_CraneWhooping_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Crow_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Crow_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Eagle_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Eagle_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Egret_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Egret_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_GooseCanada_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_GooseCanada_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Hawk_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Hawk_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Heron_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Heron_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Loon_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Loon_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Oriole_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Oriole_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Owl_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Owl_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Parrot_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Parrot_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Pelican_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Pelican_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Pheasant_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Pheasant_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Pigeon" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Pigeon')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_PrairieChicken_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_PrairieChicken_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Quail_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Quail_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Raven_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Raven_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_RedFootedBooby_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_RedFootedBooby_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Robin_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Robin_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_RoseateSpoonbill_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_RoseateSpoonbill_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Seagull_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Seagull_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_SongBird_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_SongBird_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Sparrow_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Sparrow_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_TurkeyWild_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_TurkeyWild_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Vulture_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Vulture_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Woodpecker_01" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Woodpecker_01')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "A_C_Woodpecker_02" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.Shapeshift')
                Wait(100)
                if AdminAllowed then
                SetMonModel('A_C_Woodpecker_02')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            end
        end,
        function(menu)
            menu.close()
        end)
end

function SetMonModel(name)
	local model = GetHashKey(name)
	local player = PlayerId()
	
	if not IsModelValid(model) then return end
	PerformRequest(model)
	
	if HasModelLoaded(model) then
		Citizen.InvokeNative(0xED40380076A31506, player, model, false)
		Citizen.InvokeNative(0x283978A15512B2FE, PlayerPedId(), true)
		SetModelAsNoLongerNeeded(model)
	end
end

function PerformRequest(hash)
    RequestModel(hash, 0)
    local bacon = 1
    while not Citizen.InvokeNative(0x1283B8B89DD5D1B6, hash) do
        Citizen.InvokeNative(0xFA28FE3A6246FC30, hash, 0)
        bacon = bacon + 1
        Citizen.Wait(0)
        if bacon >= 100 then break end
    end
end