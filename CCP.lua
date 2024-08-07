-- Companions Control Panel addon by Leontiesh (Ace) and WZ
BINDING_HEADER_CCP = "Companions Control Panel";
BINDING_NAME_CP = "Show/Hide CCP";

CMD_CLONE = ".z clone";
CMD_REMOVE = ".z remove";
CMD_ADD = ".z add ";
CMD_SET = ".z set ";
CMD_TOGGLE_HELM = ".z togglehelm ";
CMD_TOGGLE_CLOAK = ".z togglecloak ";
CMD_GENERAL = ".z ";

AddCmd = ""
CmdItr = 1
function CmdStackHide()
	CmdAll:Hide()
	CmdAll_mini:Hide()
	CmdTank:Hide()
	CmdTank_mini:Hide()
	CmdHealer:Hide()
	CmdHealer_mini:Hide()
	CmdDPS:Hide()
	CmdDPS_mini:Hide()
	CmdMDPS:Hide()
	CmdMDPS_mini:Hide()
	CmdRDPS:Hide()
	CmdRDPS_mini:Hide()
	CmdWarrior:Hide()
	CmdWarrior_mini:Hide()
	CmdPaladin:Hide()
	CmdPaladin_mini:Hide()
	CmdHunter:Hide()
	CmdHunter_mini:Hide()
	CmdRogue:Hide()
	CmdRogue_mini:Hide()
	CmdPriest:Hide()
	CmdPriest_mini:Hide()
	CmdShaman:Hide()
	CmdShaman_mini:Hide()
	CmdMage:Hide()
	CmdMage_mini:Hide()
	CmdWarlock:Hide()
	CmdWarlock_mini:Hide()
	CmdDruid:Hide()
	CmdDruid_mini:Hide()
end

function CmdADD()
	Cmds = { "", "tank", "healer", "dps", "mdps", "rdps", "warrior", "paladin", "hunter", "rogue", "priest", "shaman", "mage", "warlock", "druid" }

	CmdItr = CmdItr + 1	
	if CmdItr >= table.getn(Cmds) + 1 then CmdItr = 1 end
	AddCmd = Cmds[CmdItr]

	if Cmds[CmdItr] == "" then CmdStackHide() CmdAll:Show() CmdAll_mini:Show() end
	if Cmds[CmdItr] == "tank" then CmdStackHide() CmdTank:Show() CmdTank_mini:Show() end
	if Cmds[CmdItr] == "healer" then CmdStackHide() CmdHealer:Show() CmdHealer_mini:Show() end
	if Cmds[CmdItr] == "dps" then CmdStackHide() CmdDPS:Show() CmdDPS_mini:Show() end
	if Cmds[CmdItr] == "mdps" then CmdStackHide() CmdMDPS:Show() CmdMDPS_mini:Show() end
	if Cmds[CmdItr] == "rdps" then CmdStackHide() CmdRDPS:Show() CmdRDPS_mini:Show() end
	if Cmds[CmdItr] == "warrior" then CmdStackHide() CmdWarrior:Show() CmdWarrior_mini:Show() end
	if Cmds[CmdItr] == "paladin" then CmdStackHide() CmdPaladin:Show() CmdPaladin_mini:Show() end
	if Cmds[CmdItr] == "hunter" then CmdStackHide() CmdHunter:Show() CmdHunter_mini:Show() end
	if Cmds[CmdItr] == "rogue" then CmdStackHide() CmdRogue:Show() CmdRogue_mini:Show() end
	if Cmds[CmdItr] == "priest" then CmdStackHide() CmdPriest:Show() CmdPriest_mini:Show() end
	if Cmds[CmdItr] == "shaman" then CmdStackHide() CmdShaman:Show() CmdShaman_mini:Show() end
	if Cmds[CmdItr] == "mage" then CmdStackHide() CmdMage:Show() CmdMage_mini:Show() end
	if Cmds[CmdItr] == "warlock" then CmdStackHide() CmdWarlock:Show() CmdWarlock_mini:Show() end
	if Cmds[CmdItr] == "druid" then CmdStackHide() CmdDruid:Show() CmdDruid_mini:Show() end
end

function CmdSUB()
	Cmds = { "", "tank", "healer", "dps", "mdps", "rdps", "warrior", "paladin", "hunter", "rogue", "priest", "shaman", "mage", "warlock", "druid" }

	CmdItr = CmdItr - 1	
	if CmdItr <= 0 then CmdItr = table.getn(Cmds) end
	AddCmd = Cmds[CmdItr]

	if Cmds[CmdItr] == "" then CmdStackHide() CmdAll:Show() CmdAll_mini:Show() end
	if Cmds[CmdItr] == "tank" then CmdStackHide() CmdTank:Show() CmdTank_mini:Show() end
	if Cmds[CmdItr] == "healer" then CmdStackHide() CmdHealer:Show() CmdHealer_mini:Show() end
	if Cmds[CmdItr] == "dps" then CmdStackHide() CmdDPS:Show() CmdDPS_mini:Show() end
	if Cmds[CmdItr] == "mdps" then CmdStackHide() CmdMDPS:Show() CmdMDPS_mini:Show() end
	if Cmds[CmdItr] == "rdps" then CmdStackHide() CmdRDPS:Show() CmdRDPS_mini:Show() end
	if Cmds[CmdItr] == "warrior" then CmdStackHide() CmdWarrior:Show() CmdWarrior_mini:Show() end
	if Cmds[CmdItr] == "paladin" then CmdStackHide() CmdPaladin:Show() CmdPaladin_mini:Show() end
	if Cmds[CmdItr] == "hunter" then CmdStackHide() CmdHunter:Show() CmdHunter_mini:Show() end
	if Cmds[CmdItr] == "rogue" then CmdStackHide() CmdRogue:Show() CmdRogue_mini:Show() end
	if Cmds[CmdItr] == "priest" then CmdStackHide() CmdPriest:Show() CmdPriest_mini:Show() end
	if Cmds[CmdItr] == "shaman" then CmdStackHide() CmdShaman:Show() CmdShaman_mini:Show() end
	if Cmds[CmdItr] == "mage" then CmdStackHide() CmdMage:Show() CmdMage_mini:Show() end
	if Cmds[CmdItr] == "warlock" then CmdStackHide() CmdWarlock:Show() CmdWarlock_mini:Show() end
	if Cmds[CmdItr] == "druid" then CmdStackHide() CmdDruid:Show() CmdDruid_mini:Show() end
end

local cmdCheckmarkState = true
function SetCmdCheckmark()
	if CCPFrame:IsVisible() then
		CmdInclude:SetChecked(cmdCheckmarkState)
	elseif CCPFrameMini:IsVisible() then
		CmdInclude_mini:SetChecked(cmdCheckmarkState)
	end
end

function ChangeCmdCheckmark()
	cmdCheckmarkState = CmdInclude:GetChecked()
end

function ChangeCmdCheckmark_mini()
	cmdCheckmarkState = CmdInclude_mini:GetChecked()
end

function SetCommand(arg)
	if cmdCheckmarkState then 
		SendChatMessage(CMD_GENERAL .. arg .. " " .. AddCmd);
	elseif AddCmd ~= "" then
		SendChatMessage(CMD_GENERAL .. arg .. " " .. AddCmd .. " not");
	else
		SendChatMessage(CMD_GENERAL .. arg);
	end
end

function SetPause()
	if cmdCheckmarkState then 
		SendChatMessage(CMD_GENERAL .. " pause 300 " .. AddCmd);
	elseif AddCmd ~= "" then
		SendChatMessage(CMD_GENERAL .. " pause 300 " .. AddCmd .. " not");
	else
		SendChatMessage(CMD_GENERAL .. " pause 300 ");
	end
end

function SetUnpause()
	if cmdCheckmarkState then 
		SendChatMessage(CMD_GENERAL .. " unpause " .. AddCmd);
	elseif AddCmd ~= "" then
		SendChatMessage(CMD_GENERAL .. " unpause " .. AddCmd .. " not");
	else
		SendChatMessage(CMD_GENERAL .. " unpause ");
	end
end

AddMark = "ccmark"
MarkItr = 1
function MarkStackHide()
	ccmark:Hide()
	ccmark_mini:Hide()
	focusmark:Hide()
	focusmark_mini:Hide()
end

function MarkADD()
	Marks = { "ccmark", "focusmark" }

	MarkItr = MarkItr + 1	
	if MarkItr >= table.getn(Marks) + 1 then MarkItr = 1 end
	AddMark = Marks[MarkItr]

	if Marks[MarkItr] == "ccmark" then MarkStackHide() ccmark:Show() ccmark_mini:Show() end
	if Marks[MarkItr] == "focusmark" then MarkStackHide() focusmark:Show() focusmark_mini:Show() end
end

function MarkSUB()
	Marks = { "ccmark", "focusmark" }

	MarkItr = MarkItr - 1	
	if MarkItr <= 0 then MarkItr = table.getn(Marks) end
	AddMark = Marks[MarkItr]

	if Marks[MarkItr] == "ccmark" then MarkStackHide() ccmark:Show() ccmark_mini:Show() end
	if Marks[MarkItr] == "focusmark" then MarkStackHide() focusmark:Show() focusmark_mini:Show() end
end

function SetMark(self, arg)
	SendChatMessage(CMD_GENERAL .. AddMark .. " " .. arg);
end

function ShowMark()
	SendChatMessage(CMD_GENERAL .. AddMark);
end

function ClearMark()
	SendChatMessage(CMD_GENERAL .. "clear " .. AddMark);
end

function ClearAllMark()
	SendChatMessage(CMD_GENERAL .. "clear");
end

AddToggle = "mode"
ToggleItr = 1
function ToggleStackHide()
	ToggleMode:Hide()
	ToggleMode_mini:Hide()
	ToggleAOE:Hide()
	ToggleAOE_mini:Hide()
	ToggleTotems:Hide()
	ToggleTotems_mini:Hide()
	helm:Hide()
	helm_mini:Hide()
	cloak:Hide()
	cloak_mini:Hide()
end

function ToggleADD()
	Toggles = { "mode", "aoe", "totems", "helm", "cloak" }

	ToggleItr = ToggleItr + 1	
	if ToggleItr >= table.getn(Toggles) + 1 then ToggleItr = 1 end
	AddToggle = Toggles[ToggleItr]

	if Toggles[ToggleItr] == "mode" then ToggleStackHide() ToggleMode:Show() ToggleMode_mini:Show() end
	if Toggles[ToggleItr] == "aoe" then ToggleStackHide() ToggleAOE:Show() ToggleAOE_mini:Show() end
	if Toggles[ToggleItr] == "totems" then ToggleStackHide() ToggleTotems:Show() ToggleTotems_mini:Show() end
	if Toggles[ToggleItr] == "helm" then ToggleStackHide() helm:Show() helm_mini:Show() end
	if Toggles[ToggleItr] == "cloak" then ToggleStackHide() cloak:Show() cloak_mini:Show() end
end

function ToggleSUB()
	Toggles = { "mode", "aoe", "totems", "helm", "cloak" }

	ToggleItr = ToggleItr - 1	
	if ToggleItr <= 0 then ToggleItr = table.getn(Toggles) end
	AddToggle = Toggles[ToggleItr]

	if Toggles[ToggleItr] == "mode" then ToggleStackHide() ToggleMode:Show() ToggleMode_mini:Show() end
	if Toggles[ToggleItr] == "aoe" then ToggleStackHide() ToggleAOE:Show() ToggleAOE_mini:Show() end
	if Toggles[ToggleItr] == "totems" then ToggleStackHide() ToggleTotems:Show() ToggleTotems_mini:Show() end
	if Toggles[ToggleItr] == "helm" then ToggleStackHide() helm:Show() helm_mini:Show() end
	if Toggles[ToggleItr] == "cloak" then ToggleStackHide() cloak:Show() cloak_mini:Show() end
end

function SetToggle()
	SendChatMessage(CMD_GENERAL .."toggle " .. AddToggle);
end

function SubPartyBotClone(self)
	SendChatMessage(CMD_CLONE);
end

function SubPartyBotRemove(self)
	SendChatMessage(CMD_REMOVE);
end

function SubPartyBotSetRole(arg)
	SendChatMessage(CMD_SET .. arg);
end

function GetClass(arg)
	if (arg == "warrior") then
		return warrior
	end
	if (arg == "paladin") then
		return paladin
	end
	if (arg == "hunter") then
		return hunter
	end
	if (arg == "rogue") then
		return rogue
	end
	if (arg == "priest") then
		return priest
	end
	if (arg == "shaman") then
		return shaman
	end
	if (arg == "mage") then
		return mage
	end
	if (arg == "warlock") then
		return warlock
	end
	if (arg == "druid") then
		return druid	
	end
end

Classes = { "warrior" , "paladin", "hunter", "rogue", "priest", "shaman", "mage", "warlock", "druid" }
AddClass = "warrior"
ClassItr = 1
function SetClassADD()
    if not Reputation then
        -- Say("Reputation not initialized!")
        SetReputation()
    end
	-- Classes = { "warrior" , "paladin", "hunter", "rogue", "priest", "shaman", "mage", "warlock", "druid" }
	Classes = {}
	if UnitFactionGroup("player") == "Alliance" then
		if Reputation["Stormwind"] or Reputation["Ironforge"] or Reputation["Gnomeregan Exiles"] or Reputation["Darnassus"] then
			table.insert(Classes,"warrior")
		end
		if Reputation["Stormwind"] or Reputation["Ironforge"] then
			table.insert(Classes,"paladin")
		end
		if Reputation["Ironforge"] or Reputation["Darnassus"] then
			table.insert(Classes,"hunter")
		end
		if Reputation["Stormwind"] or Reputation["Ironforge"] or Reputation["Gnomeregan Exiles"] or Reputation["Darnassus"] then
			table.insert(Classes,"rogue")
		end
		if Reputation["Stormwind"] or Reputation["Ironforge"] or Reputation["Darnassus"] then
			table.insert(Classes,"priest")
		end
		if Reputation["Stormwind"] or Reputation["Gnomeregan Exiles"] then
			table.insert(Classes,"mage")
		end
		if Reputation["Stormwind"] or Reputation["Gnomeregan Exiles"] then
			table.insert(Classes,"warlock")
		end
		if Reputation["Darnassus"] then
			table.insert(Classes,"druid")
		end
	else		
		if Reputation["Orgrimmar"] or Reputation["Darkspear Trolls"] or Reputation["Undercity"] or Reputation["Thunder Bluff"] then
			table.insert(Classes,"warrior")
			-- print("warrior")
		end
		if Reputation["Orgrimmar"] or Reputation["Darkspear Trolls"] or Reputation["Thunder Bluff"] then
			table.insert(Classes,"hunter")
			-- print("hunter")
		end
		if Reputation["Orgrimmar"] or Reputation["Darkspear Trolls"] or Reputation["Undercity"] then
			table.insert(Classes,"rogue")
			-- print("rogue")
		end
		if Reputation["Darkspear Trolls"] or Reputation["Undercity"] then
			table.insert(Classes,"priest")
			-- print("priest")
		end
		if Reputation["Orgrimmar"] or Reputation["Darkspear Trolls"] or Reputation["Thunder Bluff"] then
			table.insert(Classes,"shaman")
			-- print("shaman")
		end
		if Reputation["Darkspear Trolls"] or Reputation["Undercity"] then
			table.insert(Classes,"mage")
			-- print("mage")
		end
		if Reputation["Orgrimmar"] or Reputation["Undercity"] then
			table.insert(Classes,"warlock")
			-- print("warlock")
		end
		if Reputation["Thunder Bluff"] then
			table.insert(Classes,"druid")
			-- print("druid")
		end
	end
	
	ClassItr = ClassItr + 1	
	if Classes[ClassItr] == nil then 
		ClassItr = 1 
	end
	
	if (Classes[ClassItr - 1] == nil) then
		GetClass(Classes[table.getn(Classes)]):Hide()
	else
		GetClass(Classes[ClassItr - 1]):Hide()
	end
	GetClass(Classes[ClassItr]):Show()
	AddClass = Classes[ClassItr]
	
	RaceUpdate()
	RoleUpdate()
	SpecUpdate()
	RoleItr = 1
end

function SetClassSUB()
    if not Reputation then
        -- Say("Reputation not initialized!")
        SetReputation()
    end
	-- Classes = { "warrior" , "paladin", "hunter", "rogue", "priest", "shaman", "mage", "warlock", "druid" }
	Classes = {}
	if UnitFactionGroup("player") == "Alliance" then
		if Reputation["Stormwind"] or Reputation["Ironforge"] or Reputation["Gnomeregan Exiles"] or Reputation["Darnassus"] then
			table.insert(Classes,"warrior")
		end
		if Reputation["Stormwind"] or Reputation["Ironforge"] then
			table.insert(Classes,"paladin")
		end
		if Reputation["Ironforge"] or Reputation["Darnassus"] then
			table.insert(Classes,"hunter")
		end
		if Reputation["Stormwind"] or Reputation["Ironforge"] or Reputation["Gnomeregan Exiles"] or Reputation["Darnassus"] then
			table.insert(Classes,"rogue")
		end
		if Reputation["Stormwind"] or Reputation["Ironforge"] or Reputation["Darnassus"] then
			table.insert(Classes,"priest")
		end
		if Reputation["Stormwind"] or Reputation["Gnomeregan Exiles"] then
			table.insert(Classes,"mage")
		end
		if Reputation["Stormwind"] or Reputation["Gnomeregan Exiles"] then
			table.insert(Classes,"warlock")
		end
		if Reputation["Darnassus"] then
			table.insert(Classes,"druid")
		end
	else		
		if Reputation["Orgrimmar"] or Reputation["Darkspear Trolls"] or Reputation["Undercity"] or Reputation["Thunder Bluff"] then
			table.insert(Classes,"warrior")
		end
		if Reputation["Orgrimmar"] or Reputation["Darkspear Trolls"] or Reputation["Thunder Bluff"] then
			table.insert(Classes,"hunter")
		end
		if Reputation["Orgrimmar"] or Reputation["Darkspear Trolls"] or Reputation["Undercity"] then
			table.insert(Classes,"rogue")
		end
		if Reputation["Darkspear Trolls"] or Reputation["Undercity"] then
			table.insert(Classes,"priest")
		end
		if Reputation["Orgrimmar"] or Reputation["Darkspear Trolls"] or Reputation["Thunder Bluff"] then
			table.insert(Classes,"shaman")
		end
		if Reputation["Darkspear Trolls"] or Reputation["Undercity"] then
			table.insert(Classes,"mage")
		end
		if Reputation["Orgrimmar"] or Reputation["Undercity"] then
			table.insert(Classes,"warlock")
		end
		if Reputation["Thunder Bluff"] then
			table.insert(Classes,"druid")
		end
	end
	
	ClassItr = ClassItr - 1	
	if Classes[ClassItr] == nil then 
		ClassItr = table.getn(Classes)
	end
	
	if (Classes[ClassItr + 1] == nil) then
		GetClass(Classes[1]):Hide()
	else
		GetClass(Classes[ClassItr + 1]):Hide()
	end
	GetClass(Classes[ClassItr]):Show()
	AddClass = Classes[ClassItr]
		
	RaceUpdate()
	RoleUpdate()
	SpecUpdate()
	RoleItr = 1
end

function RaceUpdate()
	RaceStackHide()
	race:Show()
	AddRace = "race"	
	RaceItr = 0
end

function RoleUpdate()
	if Classes[ClassItr] == "warrior" then 
		RoleStackHide()
		tank:Show()
		AddRole = "tank"
	end
	if Classes[ClassItr] == "paladin" then 
		RoleStackHide()
		tank:Show()
		AddRole = "tank"
	end
	if Classes[ClassItr] == "hunter" then 
		RoleStackHide()
		rangedps:Show()
		AddRole = "rangedps"
	end
	if Classes[ClassItr] == "rogue" then 
		RoleStackHide()
		meleedps:Show()
		AddRole = "meleedps"
	end
	if Classes[ClassItr] == "priest" then 
		RoleStackHide()
		healer:Show()
		AddRole = "healer"
	end
	if Classes[ClassItr] == "shaman" then 
		RoleStackHide()
		tank:Show()
		AddRole = "tank"
	end
	if Classes[ClassItr] == "mage" then 
		RoleStackHide()
		rangedps:Show()
		AddRole = "rangedps" 
	end
	if Classes[ClassItr] == "warlock" then 
		RoleStackHide()
		rangedps:Show()
		AddRole = "rangedps"	
	end
	if Classes[ClassItr] == "druid" then 
		RoleStackHide()
		tank:Show()
		AddRole = "tank"
	end	
end

function RaceStackHide()
	race:Hide()
	human:Hide()
	dwarf:Hide()
	nightelf:Hide()
	gnome:Hide()
	orc:Hide()
	undead:Hide()
	tauren:Hide()
	troll:Hide()	
end

AddRace = "race"
RaceItr = 0
function SetRaceADD()
	
	if AddClass == "warrior" then	
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "dwarf", "nightelf", "gnome", "race" }
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Ironforge"] then
				table.insert(Races, "dwarf")
			end
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			if Reputation["Gnomeregan Exiles"] then
				table.insert(Races, "gnome")
			end
			table.insert(Races, "race")
		else 			
			-- Races = { "orc", "undead", "tauren", "troll", "race" }
			Races = {}
			if Reputation["Orgrimmar"] then
				table.insert(Races, "orc")
			end
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			if Reputation["Thunder Bluff"] then
				table.insert(Races, "tauren")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")		
		end		
				
		RaceItr = RaceItr + 1			
		if RaceItr >= table.getn(Races) + 1 then RaceItr = 1 end
		AddRace = Races[RaceItr]
		
		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end
		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		if Races[RaceItr] == "gnome" then RaceStackHide() gnome:Show() end
		
		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end
		if Races[RaceItr] == "tauren" then RaceStackHide() tauren:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end		
		
	elseif AddClass == "paladin" then		
		-- Races = { "human", "dwarf", "race" }
		Races = {}
		if Reputation["Stormwind"] then
			table.insert(Races, "human")
		end
		if Reputation["Ironforge"] then
			table.insert(Races, "dwarf")
		end
		table.insert(Races, "race")
			
		RaceItr = RaceItr + 1	
		if RaceItr >= table.getn(Races) + 1 then RaceItr = 1 end
		AddRace = Races[RaceItr]
		
		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end
		
	elseif AddClass == "hunter" then	
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "dwarf", "nightelf", "race" }	
			Races = {}
			if Reputation["Ironforge"] then
				table.insert(Races, "dwarf")
			end
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			table.insert(Races, "race")			
		else 			
			-- Races = { "orc", "tauren", "troll", "race" }				
			Races = {}
			if Reputation["Orgrimmar"] then
				table.insert(Races, "orc")
			end
			if Reputation["Thunder Bluff"] then
				table.insert(Races, "tauren")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")			
		end		
		
		RaceItr = RaceItr + 1	
		if RaceItr >= table.getn(Races) + 1 then RaceItr = 1 end
		AddRace = Races[RaceItr]
		
		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end
		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		
		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "tauren" then RaceStackHide() tauren:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end

	elseif AddClass == "rogue" then		
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "dwarf", "nightelf", "gnome", "race" }	
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Ironforge"] then
				table.insert(Races, "dwarf")
			end
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			if Reputation["Gnomeregan Exiles"] then
				table.insert(Races, "gnome")
			end
			table.insert(Races, "race")		
		else 			
			-- Races = { "orc", "undead", "troll", "race" }
			Races = {}
			if Reputation["Orgrimmar"] then
				table.insert(Races, "orc")
			end
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")			
		end
		
		RaceItr = RaceItr + 1	
		if RaceItr >= table.getn(Races) + 1 then RaceItr = 1 end
		AddRace = Races[RaceItr]	

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end
		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		if Races[RaceItr] == "gnome" then RaceStackHide() gnome:Show() end
		
		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end

	elseif AddClass == "priest" then
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "dwarf", "nightelf", "race" }	
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Ironforge"] then
				table.insert(Races, "dwarf")
			end
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			table.insert(Races, "race")		
		else 			
			-- Races = { "undead", "troll", "race" }	
			Races = {}
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")		
		end	
		
		RaceItr = RaceItr + 1	
		if RaceItr >= table.getn(Races) + 1 then RaceItr = 1 end
		AddRace = Races[RaceItr]
		
		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end
		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		
		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end

	elseif AddClass == "shaman" then			
		-- Races = { "orc", "tauren", "troll", "race" }
		Races = {}
		if Reputation["Orgrimmar"] then
			table.insert(Races, "orc")
		end
		if Reputation["Thunder Bluff"] then
			table.insert(Races, "tauren")
		end
		if Reputation["Darkspear Trolls"] then
			table.insert(Races, "troll")
		end
		table.insert(Races, "race")	
		
		RaceItr = RaceItr + 1	
		if RaceItr >= table.getn(Races) + 1 then RaceItr = 1 end
		AddRace = Races[RaceItr]

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "tauren" then RaceStackHide() tauren:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end

	elseif AddClass == "mage" then	
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "gnome", "race" }	
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Gnomeregan Exiles"] then
				table.insert(Races, "gnome")
			end
			table.insert(Races, "race")		
		else 			
			-- Races = { "undead", "troll", "race" }	
			Races = {}
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")			
		end	
		
		RaceItr = RaceItr + 1	
		if RaceItr >= table.getn(Races) + 1 then RaceItr = 1 end
		AddRace = Races[RaceItr]

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "gnome" then RaceStackHide() gnome:Show() end

		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end	

	elseif AddClass == "warlock" then			
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "gnome", "race" }
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Gnomeregan Exiles"] then
				table.insert(Races, "gnome")
			end
			table.insert(Races, "race")			
		else 			
			-- Races = { "orc", "undead", "race" }	
			Races = {}
			if Reputation["Orgrimmar"] then
				table.insert(Races, "orc")
			end
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			table.insert(Races, "race")		
		end
		
		RaceItr = RaceItr + 1	
		if RaceItr >= table.getn(Races) + 1 then RaceItr = 1 end
		AddRace = Races[RaceItr]		

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "gnome" then RaceStackHide() gnome:Show() end
		
		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end		

	elseif AddClass == "druid" then	
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "nightelf" }		
			Races = {}
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			table.insert(Races, "race")	
		else 			
			-- Races = { "tauren" }
			Races = {}
			if Reputation["Thunder Bluff"] then
				table.insert(Races, "tauren")
			end
			table.insert(Races, "race")			
		end

		RaceItr = RaceItr + 1	
		if RaceItr >= table.getn(Races) + 1 then RaceItr = 1 end
		AddRace = Races[RaceItr]		

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		
		if Races[RaceItr] == "tauren" then RaceStackHide() tauren:Show() end
	end
end

function SetRaceSUB()
	if RaceItr == 0 then RaceItr = 5 end

	if AddClass == "warrior" then	
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "dwarf", "nightelf", "gnome", "race" }
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Ironforge"] then
				table.insert(Races, "dwarf")
			end
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			if Reputation["Gnomeregan Exiles"] then
				table.insert(Races, "gnome")
			end
			table.insert(Races, "race")
		else 			
			-- Races = { "orc", "undead", "tauren", "troll", "race" }
			Races = {}
			if Reputation["Orgrimmar"] then
				table.insert(Races, "orc")
			end
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			if Reputation["Thunder Bluff"] then
				table.insert(Races, "tauren")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")		
		end		
		
		RaceItr = RaceItr - 1	
		if RaceItr <= 0 then RaceItr = table.getn(Races) end
		AddRace = Races[RaceItr]
		
		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end
		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		if Races[RaceItr] == "gnome" then RaceStackHide() gnome:Show() end
		
		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end
		if Races[RaceItr] == "tauren" then RaceStackHide() tauren:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end	

	elseif AddClass == "paladin" then		
		-- Races = { "human", "dwarf", "race" }
		Races = {}
		if Reputation["Stormwind"] then
			table.insert(Races, "human")
		end
		if Reputation["Ironforge"] then
			table.insert(Races, "dwarf")
		end
		table.insert(Races, "race")
		
		RaceItr = RaceItr - 1	
		if RaceItr <= 0 then RaceItr = table.getn(Races) end
		AddRace = Races[RaceItr]
		
		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end

	elseif AddClass == "hunter" then	
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "dwarf", "nightelf", "race" }	
			Races = {}
			if Reputation["Ironforge"] then
				table.insert(Races, "dwarf")
			end
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			table.insert(Races, "race")			
		else 			
			-- Races = { "orc", "tauren", "troll", "race" }				
			Races = {}
			if Reputation["Orgrimmar"] then
				table.insert(Races, "orc")
			end
			if Reputation["Thunder Bluff"] then
				table.insert(Races, "tauren")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")			
		end		
		
		RaceItr = RaceItr - 1	
		if RaceItr <= 0 then RaceItr = table.getn(Races) end
		AddRace = Races[RaceItr]

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end
		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		
		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "tauren" then RaceStackHide() tauren:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end

	elseif AddClass == "rogue" then			
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "dwarf", "nightelf", "gnome", "race" }	
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Ironforge"] then
				table.insert(Races, "dwarf")
			end
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			if Reputation["Gnomeregan Exiles"] then
				table.insert(Races, "gnome")
			end
			table.insert(Races, "race")		
		else 			
			-- Races = { "orc", "undead", "troll", "race" }
			Races = {}
			if Reputation["Orgrimmar"] then
				table.insert(Races, "orc")
			end
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")			
		end
		
		RaceItr = RaceItr - 1	
		if RaceItr <= 0 then RaceItr = table.getn(Races) end
		AddRace = Races[RaceItr]	

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end
		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		if Races[RaceItr] == "gnome" then RaceStackHide() gnome:Show() end
		
		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end

	elseif AddClass == "priest" then
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "dwarf", "nightelf", "race" }	
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Ironforge"] then
				table.insert(Races, "dwarf")
			end
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			table.insert(Races, "race")		
		else 			
			-- Races = { "undead", "troll", "race" }	
			Races = {}
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")		
		end	
		
		RaceItr = RaceItr - 1	
		if RaceItr <= 0 then RaceItr = table.getn(Races) end
		AddRace = Races[RaceItr]
		
		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "dwarf" then RaceStackHide() dwarf:Show() end
		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		
		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end

	elseif AddClass == "shaman" then				
		-- Races = { "orc", "tauren", "troll", "race" }
		Races = {}
		if Reputation["Thunder Bluff"] then
			table.insert(Races, "tauren")
		end
		if Reputation["Darkspear Trolls"] then
			table.insert(Races, "troll")
		end
		table.insert(Races, "race")	
		
		RaceItr = RaceItr - 1	
		if RaceItr <= 0 then RaceItr = table.getn(Races) end
		AddRace = Races[RaceItr]

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "tauren" then RaceStackHide() tauren:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end

	elseif AddClass == "mage" then	
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "gnome", "race" }	
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Gnomeregan Exiles"] then
				table.insert(Races, "gnome")
			end
			table.insert(Races, "race")		
		else 			
			-- Races = { "undead", "troll", "race" }	
			Races = {}
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			if Reputation["Darkspear Trolls"] then
				table.insert(Races, "troll")
			end
			table.insert(Races, "race")			
		end	
		
		RaceItr = RaceItr - 1	
		if RaceItr <= 0 then RaceItr = table.getn(Races) end
		AddRace = Races[RaceItr]

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "gnome" then RaceStackHide() gnome:Show() end

		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end
		if Races[RaceItr] == "troll" then RaceStackHide() troll:Show() end	

	elseif AddClass == "warlock" then				
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "human", "gnome", "race" }
			Races = {}
			if Reputation["Stormwind"] then
				table.insert(Races, "human")
			end
			if Reputation["Gnomeregan Exiles"] then
				table.insert(Races, "gnome")
			end
			table.insert(Races, "race")			
		else 			
			-- Races = { "orc", "undead", "race" }	
			Races = {}
			if Reputation["Orgrimmar"] then
				table.insert(Races, "orc")
			end
			if Reputation["Undercity"] then
				table.insert(Races, "undead")
			end
			table.insert(Races, "race")		
		end
		
		RaceItr = RaceItr - 1	
		if RaceItr <= 0 then RaceItr = table.getn(Races) end
		AddRace = Races[RaceItr]		

		if Races[RaceItr] == "race" then RaceStackHide() race:Show() end

		if Races[RaceItr] == "human" then RaceStackHide() human:Show() end
		if Races[RaceItr] == "gnome" then RaceStackHide() gnome:Show() end
		
		if Races[RaceItr] == "orc" then RaceStackHide() orc:Show() end
		if Races[RaceItr] == "undead" then RaceStackHide() undead:Show() end		

	elseif AddClass == "druid" then	
		if UnitFactionGroup("player") == "Alliance" then 
			-- Races = { "nightelf" }		
			Races = {}
			if Reputation["Darnassus"] then
				table.insert(Races, "nightelf")
			end
			table.insert(Races, "race")	
		else 			
			-- Races = { "tauren" }
			Races = {}
			if Reputation["Thunder Bluff"] then
				table.insert(Races, "tauren")
			end
			table.insert(Races, "race")			
		end

		AddRace = Races[RaceItr]		
	
		if Races[RaceItr] == "nightelf" then RaceStackHide() nightelf:Show() end
		
		if Races[RaceItr] == "tauren" then RaceStackHide() tauren:Show() end			
	end
end

function RoleStackHide()
	tank:Hide()
	healer:Hide()
	meleedps:Hide()
	rangedps:Hide()
end

AddRole = "tank"
RoleItr = 1
function SetRoleADD()
	if AddClass == "warrior" then
		Roles = { "tank", "meleedps" }
		
		RoleItr = RoleItr + 1	
		if RoleItr >= table.getn(Roles) + 1 then RoleItr = 1 end
		AddRole = Roles[RoleItr]

		if Roles[RoleItr] == "tank" then RoleStackHide() tank:Show() end
		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end

	elseif AddClass == "paladin" then
		Roles = { "tank", "healer", "meleedps" }
		
		RoleItr = RoleItr + 1	
		if RoleItr >= table.getn(Roles) + 1 then RoleItr = 1 end
		AddRole = Roles[RoleItr]

		if Roles[RoleItr] == "tank" then RoleStackHide() tank:Show() end
		if Roles[RoleItr] == "healer" then RoleStackHide() healer:Show() end
		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end		
	
	elseif AddClass == "hunter" then		
		Roles = { "rangedps" }
		
		AddRole = "rangedps"

		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end

	elseif AddClass == "rogue" then
		Roles = { "meleedps" }

		AddRole = "meleedps" 

		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end
		
	elseif AddClass == "priest" then
		Roles = { "healer", "rangedps" }

		RoleItr = RoleItr + 1	
		if RoleItr >= table.getn(Roles) + 1 then RoleItr = 1 end
		AddRole = Roles[RoleItr]

		if Roles[RoleItr] == "healer" then RoleStackHide() healer:Show() end
		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end

	elseif AddClass == "shaman" then
		Roles = { "tank", "healer", "meleedps", "rangedps" }

		RoleItr = RoleItr + 1	
		if RoleItr >= table.getn(Roles) + 1 then RoleItr = 1 end
		AddRole = Roles[RoleItr]

		if Roles[RoleItr] == "tank" then RoleStackHide() tank:Show() end
		if Roles[RoleItr] == "healer" then RoleStackHide() healer:Show() end
		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end
		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end
		
	elseif AddClass == "mage" then	
		Roles = { "rangedps" }
		
		AddRole = "rangedps"

		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end	
		
	elseif AddClass == "warlock" then
		Roles = { "rangedps" }
		
		AddRole = "rangedps"

		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end
	
	elseif AddClass == "druid" then	
		Roles = { "tank", "healer", "meleedps", "rangedps" }
		
		RoleItr = RoleItr + 1	
		if RoleItr >= table.getn(Roles) + 1 then RoleItr = 1 end
		AddRole = Roles[RoleItr]
	
		if Roles[RoleItr] == "tank" then RoleStackHide() tank:Show() end
		if Roles[RoleItr] == "healer" then RoleStackHide() healer:Show() end
		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end		
		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end
	end
	
	SpecUpdate()
end

function SetRoleSUB()
	if AddClass == "warrior" then
		Roles = { "tank", "meleedps" }
		
		RoleItr = RoleItr - 1	
		if RoleItr <= 0 then RoleItr = table.getn(Roles) end
		AddRole = Roles[RoleItr]

		if Roles[RoleItr] == "tank" then RoleStackHide() tank:Show() end
		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end

	elseif AddClass == "paladin" then
		Roles = { "tank", "healer", "meleedps" }
		
		RoleItr = RoleItr - 1	
		if RoleItr <= 0 then RoleItr = table.getn(Roles) end
		AddRole = Roles[RoleItr]

		if Roles[RoleItr] == "tank" then RoleStackHide() tank:Show() end
		if Roles[RoleItr] == "healer" then RoleStackHide() healer:Show() end
		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end		
	
	elseif AddClass == "hunter" then		
		Roles = { "rangedps" }
		
		AddRole = "rangedps"

		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end

	elseif AddClass == "rogue" then
		Roles = { "meleedps" }

		AddRole = "meleedps" 

		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end
		
	elseif AddClass == "priest" then
		Roles = { "healer", "rangedps" }

		RoleItr = RoleItr - 1	
		if RoleItr <= 0 then RoleItr = table.getn(Roles) end
		AddRole = Roles[RoleItr]

		if Roles[RoleItr] == "healer" then RoleStackHide() healer:Show() end
		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end

	elseif AddClass == "shaman" then
		Roles = { "tank", "healer", "meleedps", "rangedps" }

		RoleItr = RoleItr - 1	
		if RoleItr <= 0 then RoleItr = table.getn(Roles) end
		AddRole = Roles[RoleItr]

		if Roles[RoleItr] == "tank" then RoleStackHide() tank:Show() end
		if Roles[RoleItr] == "healer" then RoleStackHide() healer:Show() end
		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end
		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end
		
	elseif AddClass == "mage" then	
		Roles = { "rangedps" }
		
		AddRole = "rangedps"

		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end	
		
	elseif AddClass == "warlock" then
		Roles = { "rangedps" }
		
		AddRole = "rangedps"

		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end
	
	elseif AddClass == "druid" then	
		Roles = { "tank", "healer", "meleedps", "rangedps" }
		
		RoleItr = RoleItr - 1	
		if RoleItr <= 0 then RoleItr = table.getn(Roles) end
		AddRole = Roles[RoleItr]
	
		if Roles[RoleItr] == "tank" then RoleStackHide() tank:Show() end
		if Roles[RoleItr] == "healer" then RoleStackHide() healer:Show() end
		if Roles[RoleItr] == "meleedps" then RoleStackHide() meleedps:Show() end		
		if Roles[RoleItr] == "rangedps" then RoleStackHide() rangedps:Show() end
	end
	
	SpecUpdate()
end

function SpecStackHide()
	spec:Hide()
	arcane:Hide()
	fire:Hide()
	frost:Hide()
	might:Hide()
	magic:Hide()
end

function SpecUpdate()
	SpecStackHide()	
	
	-- SendChatMessage("test");
	-- SendChatMessage(ClassItr);
	-- SendChatMessage(Classes[ClassItr]);
	
	if Classes[ClassItr] == "mage" then
		frost:Show()
		AddSpec = "frost"
		SpecItr = 1
	elseif Classes[ClassItr] == "paladin" and (AddRole == "tank" or AddRole == "meleedps") then
		might:Show()
		AddSpec = "might"
		SpecItr = 1
	else
		spec:Show()
		AddSpec = "spec"
		SpecItr = 0
	end
end

AddSpec = "spec"
SpecItr = 0
function SetSpecADD()
	if AddClass == "warrior" then
		Specs = { "default" }
		
		SpecItr = SpecItr + 1	
		if SpecItr >= table.getn(Specs) + 1 then SpecItr = 1 end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end

	elseif AddClass == "paladin" then
		if AddRole == "tank" or AddRole == "meleedps" then
			Specs = { "might", "magic" }
		else
			Specs = { "default" }
		end
		
		SpecItr = SpecItr + 1	
		if SpecItr >= table.getn(Specs) + 1 then SpecItr = 1 end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end	
		if Specs[SpecItr] == "might" then SpecStackHide() might:Show() end	
		if Specs[SpecItr] == "magic" then SpecStackHide() magic:Show() end	
		
	elseif AddClass == "hunter" then		
		Specs = { "default" }
		
		SpecItr = SpecItr + 1	
		if SpecItr >= table.getn(Specs) + 1 then SpecItr = 1 end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end
		
	elseif AddClass == "rogue" then
		Specs = { "default" }

		SpecItr = SpecItr + 1	
		if SpecItr >= table.getn(Specs) + 1 then SpecItr = 1 end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end
		
	elseif AddClass == "priest" then
		Specs = { "default" }

		SpecItr = SpecItr + 1	
		if SpecItr >= table.getn(Specs) + 1 then SpecItr = 1 end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end

	elseif AddClass == "shaman" then
		Specs = { "default" }

		SpecItr = SpecItr + 1	
		if SpecItr >= table.getn(Specs) + 1 then SpecItr = 1 end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end
		
	elseif AddClass == "mage" then	
		Specs = { "frost", "fire", "arcane" }
		
		SpecItr = SpecItr + 1	
		if SpecItr >= table.getn(Specs) + 1 then SpecItr = 1 end
		AddSpec = Specs[SpecItr]
		
		if Specs[SpecItr] == "arcane" then SpecStackHide() arcane:Show() end
		if Specs[SpecItr] == "fire" then SpecStackHide() fire:Show() end
		if Specs[SpecItr] == "frost" then SpecStackHide() frost:Show() end
		
	elseif AddClass == "warlock" then
		Specs = { "default" }
		
		SpecItr = SpecItr + 1	
		if SpecItr >= table.getn(Specs) + 1 then SpecItr = 1 end
		AddSpec = Specs[SpecItr]
		
		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end
	
	elseif AddClass == "druid" then	
		Specs = { "default" }
		
		SpecItr = SpecItr + 1	
		if SpecItr >= table.getn(Specs) + 1 then SpecItr = 1 end
		AddSpec = Specs[SpecItr]
	
		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end
	end
end

function SetSpecSUB()
	if AddClass == "warrior" then
		Specs = { "default" }
		
		SpecItr = SpecItr - 1	
		if SpecItr <= 0 then SpecItr = table.getn(Specs) end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end

	elseif AddClass == "paladin" then
		if AddRole == "tank" or AddRole == "meleedps" then
			Specs = { "might", "magic" }
		else
			Specs = { "default" }
		end
				
		SpecItr = SpecItr - 1	
		if SpecItr <= 0 then SpecItr = table.getn(Specs) end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end	
		if Specs[SpecItr] == "might" then SpecStackHide() might:Show() end	
		if Specs[SpecItr] == "magic" then SpecStackHide() magic:Show() end	
			
	elseif AddClass == "hunter" then		
		Specs = { "default" }
		
		SpecItr = SpecItr - 1	
		if SpecItr <= 0 then SpecItr = table.getn(Specs) end
		AddSpec = Specs[SpecItr]
		
		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end

	elseif AddClass == "rogue" then
		Specs = { "default" }

		SpecItr = SpecItr - 1	
		if SpecItr <= 0 then SpecItr = table.getn(Specs) end
		AddSpec = Specs[SpecItr]
		
		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end
		
	elseif AddClass == "priest" then
		Specs = { "default" }

		SpecItr = SpecItr - 1	
		if SpecItr <= 0 then SpecItr = table.getn(Specs) end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end

	elseif AddClass == "shaman" then
		Specs = { "default" }

		SpecItr = SpecItr - 1	
		if SpecItr <= 0 then SpecItr = table.getn(Specs) end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end
		
	elseif AddClass == "mage" then	
		Specs = { "frost", "fire", "arcane" }
		
		SpecItr = SpecItr - 1	
		if SpecItr <= 0 then SpecItr = table.getn(Specs) end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "arcane" then SpecStackHide() arcane:Show() end
		if Specs[SpecItr] == "fire" then SpecStackHide() fire:Show() end
		if Specs[SpecItr] == "frost" then SpecStackHide() frost:Show() end
		
	elseif AddClass == "warlock" then
		Specs = { "default" }
		
		SpecItr = SpecItr - 1	
		if SpecItr <= 0 then SpecItr = table.getn(Specs) end
		AddSpec = Specs[SpecItr]

		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end
	
	elseif AddClass == "druid" then	
		Specs = { "default" }
		
		SpecItr = SpecItr - 1	
		if SpecItr <= 0 then SpecItr = table.getn(Specs) end
		AddSpec = Specs[SpecItr]
	
		if Specs[SpecItr] == "default" then SpecStackHide() spec:Show() end
	end
end

function GenderStackHide()
	gender:Hide()
	male:Hide()
	female:Hide()
end

AddGender = "gender"
GenderItr = 1
function SetGenderADD()
		Genders = { "gender", "male", "female" }
		
		GenderItr = GenderItr + 1	
		if GenderItr >= table.getn(Genders) + 1 then GenderItr = 1 end
		AddGender = Genders[GenderItr]

		if Genders[GenderItr] == "gender" then GenderStackHide() gender:Show() end
		if Genders[GenderItr] == "male" then GenderStackHide() male:Show() end
		if Genders[GenderItr] == "female" then GenderStackHide() female:Show() end
end

function SetGenderSUB()
		Genders = { "gender", "male", "female" }

		GenderItr = GenderItr - 1	
		if GenderItr <= 0 then GenderItr = table.getn(Genders) end
		AddGender = Genders[GenderItr]

		if Genders[GenderItr] == "gender" then GenderStackHide() gender:Show() end
		if Genders[GenderItr] == "male" then GenderStackHide() male:Show() end
		if Genders[GenderItr] == "female" then GenderStackHide() female:Show() end
end

AddBG = "warsong"
BGItr = 1
function BGStackHide()
	warsong:Hide()
	arathi:Hide()
	alterac:Hide()
end

function SetBGADD()
	BGS = { "warsong", "arathi", "alterac" }
	
	BGItr = BGItr + 1	
	if BGItr == 4 then BGItr = 1 end
	AddBG = BGS[BGItr]
	
	if BGS[BGItr] == "warsong" then BGStackHide() warsong:Show() end
	if BGS[BGItr] == "arathi" then BGStackHide() arathi:Show() end
	if BGS[BGItr] == "alterac" then BGStackHide() alterac:Show() end
end

function SetBGSUB()
	BGS = { "warsong", "arathi", "alterac" }
	
	BGItr = BGItr - 1	
	if BGItr == 0 then BGItr = 3 end
	AddBG = BGS[BGItr]
	
	if BGS[BGItr] == "warsong" then BGStackHide() warsong:Show() end
	if BGS[BGItr] == "arathi" then BGStackHide() arathi:Show() end
	if BGS[BGItr] == "alterac" then BGStackHide() alterac:Show() end
end

function SubPartyBotAddAdvanced(self)
	SendChatMessage(CMD_ADD .. AddClass .. " " .. AddRole .. " " .. AddSpec .. " " .. AddRace .. " " .. AddGender);
end

function SubPartyBotAdd(self, arg)
	SendChatMessage(CMD_ADD .. arg);
end

function Brackets()
	if UnitLevel("player") >= 10 and UnitLevel("player") <= 19 then return math.random(10,19) 
	elseif UnitLevel("player") >= 20 and UnitLevel("player") <= 29 then return math.random(20,29)
	elseif UnitLevel("player") >= 30 and UnitLevel("player") <= 39 then return math.random(30,39)
	elseif UnitLevel("player") >= 40 and UnitLevel("player") <= 49 then return math.random(40,49)
	elseif UnitLevel("player") >= 50 and UnitLevel("player") <= 59 then return math.random(50,59)
	elseif UnitLevel("player") == 60 then return 60
	else return math.random(10,19)
	end
end

function CloseFrame()
	CCPFrame:Hide();
	CCPFrameMini:Hide();
	CCPFrameUltramini:Hide();
end

function OpenFrame()
	DEFAULT_CHAT_FRAME:AddMessage("Loading Companions Control Panel...");
	DEFAULT_CHAT_FRAME:RegisterEvent('CHAT_MSG_SYSTEM')
	CCPFrame:Show();
	CCPFrameMini:Hide();
	CCPFrameUltramini:Hide();
end

-- minimap button 
local CCPFrameShown = true -- show frame by default
local CCPFrameMiniShown = false
local CCPCurrentFrame = 0
local CCPButtonPosition = 268

function ChangeFrame()

	if CCPCurrentFrame == 0 then
		CCPFrame:Hide();
		CCPFrameMini:Show();
		CCPCurrentFrame = 1
	elseif CCPCurrentFrame == 1 then
		CCPFrameMini:Hide();
		CCPFrameUltramini:Show();
		CCPCurrentFrame = 2
	elseif CCPCurrentFrame == 2 then
		CCPFrameUltramini:Hide();
		CCPFrame:Show();
		CCPCurrentFrame = 0
	end
	
	SetCmdCheckmark()
end

function CCPButtonFrame_OnClick()
	CCPButtonFrame_Toggle();
end

function CCPButtonFrame_Init()
    -- show frame by default
	if CCPCurrentFrame == 0 then
		if CCPFrameShown then
			CCPFrame:Show();
		else
			CCPFrame:Hide();
			CCPFrameUltramini:Hide();
		end
	elseif CCPCurrentFrame == 1 then
		if CCPFrameMiniShown then
			CCPFrameMini:Show();
		else
			CCPFrameMini:Hide();
			CCPFrameUltramini:Hide();
		end
	end
	SetCmdCheckmark()
end

function SetReputation()
	Reputation = {}
	local factionToRace = {
		["Stormwind"] = "Human",
		["Ironforge"] = "Dwarf",
		["Gnomeregan Exiles"] = "Gnome",
		["Darnassus"] = "Night Elf",
		["Orgrimmar"] = "Orc",
		["Darkspear Trolls"] = "Troll",
		["Undercity"] = "Undead",
		["Thunder Bluff"] = "Tauren"
	}
	local playerRace = UnitRace("player")
	for factionIndex = 1, GetNumFactions() do
		local name, _, standingId, _, _, earnedValue, _, _, isHeader = GetFactionInfo(factionIndex)
		if isHeader == nil then
			-- DEFAULT_CHAT_FRAME:AddMessage("Faction: " .. name .. " - " .. earnedValue .. " - " .. standingId)			
			if factionToRace[name] and (standingId >= 5 or playerRace == factionToRace[name]) then
				Reputation[name] = 1
			end
		end
	end
	
   if not Reputation then
        Say("You have no reputations - call Ace!") 
        return
    end
	-- DEFAULT_CHAT_FRAME:AddMessage("You can hire from these factions:")
    -- for faction, _ in pairs(Reputation) do
        -- DEFAULT_CHAT_FRAME:AddMessage(faction)
    -- end
end

function CCPButtonFrame_Toggle()
	if CCPCurrentFrame == 0 then
		if(CCPFrame:IsVisible()) then
			CCPFrame:Hide();
			CCPFrameShown = false;
		else
			SetReputation()
			CCPFrame:Show();
			CCPFrameShown = true;
		end	
	elseif CCPCurrentFrame == 1 then
		if(CCPFrameMini:IsVisible()) then
			CCPFrameMini:Hide();
			CCPFrameMiniShown = false;
		else
			CCPFrameMini:Show();
			CCPFrameMiniShown = true;
		end
	end
		
	SetCmdCheckmark()
	CCPButtonFrame_Init();
end

function CCPButtonFrame_OnEnter()
    GameTooltip:SetOwner(this, "ANCHOR_LEFT");
    GameTooltip:SetText("Companions Control Panel\nPress Left Click to Open/Close\nHold Right Click to move the icon");
    GameTooltip:Show();
end

function CCPButtonFrame_UpdatePosition()
	CCPButtonFrame:SetPoint(
		"TOPLEFT",
		"Minimap",
		"TOPLEFT",
		54 - (78 * cos(CCPButtonPosition)),
		(78 * sin(CCPButtonPosition)) - 55
	);
	CCPButtonFrame_Init();
end

function CCPButtonFrame_BeingDragged()
    local xpos,ypos = GetCursorPosition() 
    local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom() 

    xpos = xmin-xpos/UIParent:GetScale()+70 
    ypos = ypos/UIParent:GetScale()-ymin-70 

    CCPButtonFrame_SetPosition(math.deg(math.atan2(ypos,xpos)));
end

function CCPButtonFrame_SetPosition(v)
    if(v < 0) then
        v = v + 360;
    end

    CCPButtonPosition = v;
    CCPButtonFrame_UpdatePosition();
end

SLASH_CCP1 = '/CCP'
function SlashCmdList.CCP(msg, editbox) -- 4.
    if (msg == "" or msg == "cp") then
		if CCPCurrentFrame == 0 then
			if (CCPFrame:IsVisible()) then
				CCPFrame:Hide()
			else
				CCPFrame:Show()
			end
		elseif CCPCurrentFrame == 1 then
			if (CCPFrameMini:IsVisible()) then
				CCPFrameMini:Hide()
			else
				CCPFrameMini:Show()
			end
		end
		SetCmdCheckmark()
	end
end

function ShowToggle()
	if CCPCurrentFrame == 0 then	
		if CCPFrame:IsVisible() then
			CCPFrame:Hide()
		else		
			SetReputation()
			CCPFrame:Show()
		end	
	elseif CCPCurrentFrame == 1 then
		if CCPFrameMini:IsVisible() then
			CCPFrameMini:Hide()
		else
			CCPFrameMini:Show()
		end
	end
	SetCmdCheckmark()
end

function JoinWorld()
	id, name = GetChannelName(1)
	if (name ~= "World") then
		JoinChannelByName("World", nil, ChatFrame1:GetID(), 0)
	end
end

function Say(text)	
	DEFAULT_CHAT_FRAME:AddMessage(text)
end

-- Key Press Modifiers

local function UpdateVersionText()
    local text = ""
	if IsAltKeyDown() and IsControlKeyDown() then
		text = "Mode: Healer"
    elseif IsControlKeyDown() then
        text = "Mode: Tank"
    elseif IsAltKeyDown() then
        text = "Mode: MDPS"
    elseif IsShiftKeyDown() then
        text = "Mode: RDPS"
    end
    if version_ultramini then
        version_ultramini:SetText(text)
    end
end

local function OnUpdate(self, elapsed)
    UpdateVersionText()
end

-- New OnLoad function (only for ultrashort version)
function CCPFrame_OnLoad()
    if CCPFrameUltramini then
        CCPFrameUltramini:SetScript("OnUpdate", OnUpdate)
    end
end