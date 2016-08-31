local BSYC = select(2, ...) --grab the addon namespace
local L = LibStub("AceLocale-3.0"):GetLocale("BagSync", true)
local config = LibStub("AceConfig-3.0")
local configDialog = LibStub("AceConfigDialog-3.0")

local options = {}

options.type = "group"
options.name = "BagSync"

options.args = {} --initiate the arguements for the options to display

local function get(info)

	local p, c = string.split(".", info.arg)
	
	if p ~= "color" then
		if BSYC.options[c] then --if this is nil then it will default to false
			return BSYC.options[c]
		else
			return false
		end
	elseif p == "color" then
		return BSYC.options.colors[c].r, BSYC.options.colors[c].g, BSYC.options.colors[c].b
	end
	
end

local function set(info, arg1, arg2, arg3, arg4)

	local p, c = string.split(".", info.arg)
	
	if p ~= "color" then
		BSYC.options[c] = arg1
		if p == "minimap" then
			if arg1 then BagSync_MinimapButton:Show() else BagSync_MinimapButton:Hide() end
		else
			BSYC:ResetTooltip()
		end
	elseif p == "color" then
		BSYC.options.colors[c].r = arg1
		BSYC.options.colors[c].g = arg2
		BSYC.options.colors[c].b = arg3
	end
	
end

options.args.heading = {
	type = "description",
	name = L.ConfigHeader,
	fontSize = "medium",
	order = 1,
	width = "full",
}

options.args.main = {
	type = "group",
	order = 2,
	name = L.ConfigMain,
	desc = L.ConfigMainHeader,
	args = {
		tooltip = {
			order = 1,
			type = "toggle",
			name = L.EnableBagSyncTooltip,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "main.enableTooltips",
		},
		enable = {
			order = 2,
			type = "toggle",
			name = L.DisplayTooltipOnlySearch,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "main.tooltipOnlySearch",
		},
		enable = {
			order = 3,
			type = "toggle",
			name = L.DisplayMinimap,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "minimap.enableMinimap",
		},
	},
}

options.args.display = {
	type = "group",
	order = 3,
	name = L.ConfigDisplay,
	desc = L.ConfigTooltipHeader,
	args = {
		seperator = {
			order = 1,
			type = "toggle",
			name = L.DisplayLineSeperator,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.enableTooltipSeperator",
		},
		total = {
			order = 2,
			type = "toggle",
			name = L.DisplayTotal,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.showTotal",
		},
		guildbank = {
			order = 3,
			type = "toggle",
			name = L.DisplayGuildBank,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.enableGuild",
		},
		guildname = {
			order = 4,
			type = "toggle",
			name = L.DisplayGuildName,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.showGuildNames",
		},
		faction = {
			order = 5,
			type = "toggle",
			name = L.DisplayFaction,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.enableFaction",
		},
		class = {
			order = 6,
			type = "toggle",
			name = L.DisplayClassColor,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.enableUnitClass",
		},
		mailbox = {
			order = 7,
			type = "toggle",
			name = L.DisplayMailbox,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.enableMailbox",
		},
		auction = {
			order = 8,
			type = "toggle",
			name = L.DisplayAuctionHouse,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.enableAuction",
		},
		crossrealm = {
			order = 9,
			type = "toggle",
			name = L.DisplayCrossRealm,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.enableCrossRealmsItems",
		},
		battlenet = {
			order = 10,
			type = "toggle",
			name = L.DisplayBNET,
			width = "full",
			descStyle = "hide",
			get = get,
			set = set,
			arg = "display.enableBNetAccountItems",
		},

	},
}
	
options.args.color = {
	type = "group",
	order = 4,
	name = L.ConfigColor,
	desc = L.ConfigColorHeader,
	args = {
		first = {
			order = 1,
			type = "color",
			name = L.ColorPrimary,
			width = "full",
			hasAlpha = false,
			descStyle = "hide",
			get = get,
			set = set,
			arg = "color.first",
		},
		second = {
			order = 2,
			type = "color",
			name = L.ColorSecondary,
			width = "full",
			hasAlpha = false,
			descStyle = "hide",
			get = get,
			set = set,
			arg = "color.second",
		},
		total = {
			order = 3,
			type = "color",
			name = L.ColorTotal,
			width = "full",
			hasAlpha = false,
			descStyle = "hide",
			get = get,
			set = set,
			arg = "color.total",
		},
		guild = {
			order = 4,
			type = "color",
			name = L.ColorGuild,
			width = "full",
			hasAlpha = false,
			descStyle = "hide",
			get = get,
			set = set,
			arg = "color.guild",
		},
		cross = {
			order = 5,
			type = "color",
			name = L.ColorCrossRealm,
			width = "full",
			hasAlpha = false,
			descStyle = "hide",
			get = get,
			set = set,
			arg = "color.cross",
		},
		bnet = {
			order = 6,
			type = "color",
			name = L.ColorBNET,
			width = "full",
			hasAlpha = false,
			descStyle = "hide",
			get = get,
			set = set,
			arg = "color.bnet",
		},
	},
}

config:RegisterOptionsTable("BagSync", options)
configDialog:AddToBlizOptions("BagSync", "BagSync")