
local L = LibStub("AceLocale-3.0"):NewLocale("BagSync", "deDE")
if not L then return end

--PLEASE LOOK AT enUS.lua for a complete localization list

--special thanks to GrimPala from wowinterface.com

L.TooltipBag = "Taschen: %d"
L.TooltipBank = "Bank: %d"
L.TooltipEquip = "Angelegt: %d"
L.TooltipGuild = "Gilde: %d"
L.TooltipMail = "Post: %d"
L.TooltipVoid = "Leerenlager"
L.TooltipReagent = "Materiallager: %d"
L.TooltipAuction = "AH: %d"
L.Search = "Suche"
L.TooltipTotal = "Gesamt:"
L.Profiles = "Profile"
L.Professions = "Berufe"
L.Blacklist = "Blacklist"
L.Gold = "Gold"
L.Close = "Schließen"
L.FixDB = "FixDB"
L.Config = "Einstellungen"
L.DeleteWarning = "Wähle ein Profil zum löschen aus.\nINFO: Dies ist nicht umkehrbar!"
L.Delete = "Löschen"
L.Confirm = "Bestätigen"
L.ToggleSearch = "Öffne/Schließe Suche"
L.ToggleProfiles = "Öffne/Schließe Profile"
L.FixDBComplete = "Die Funktion FixDB wurde ausgeführt! Die Datenbank wurde optimiert!"
L.ON = "An"
L.OFF = "Aus"
L.LeftClickSearch = "Links Klick = Suchen"
L.RightClickBagSyncMenu = "Rechts Klick = BagSync Menu"
L.ClickHere = "Klicke hier"
L.ErrorUserNotFound = "BagSync: Fehler, Benutzer nicht gefunden!"
L.EnterItemID = "Trage bitte eine ItemID ein. (Benutze wowhead.com)"
L.RemoveItemID = "Entferne ItemID"
L.HelpSearchItemName = "/bgs [itemname] - Nach einem Item suchen"
L.HelpSearchWindow = "/bgs search - Öffnet das Suchfenster"
L.HelpGoldTooltip = "/bgs gold - Zeigt einen Tooltip mit dem Gold eines jeden Charakters."
L.HelpProfilesWindow = "/bgs profiles - Öffnet das Profilfenster."
L.HelpFixDB = "/bgs fixdb - Führt eine Reparatur der Datenbank (FixDB) aus."
L.HelpConfigWindow = "/bgs config - Öffnet die Einstellungen für BagSync"
L.HelpProfessionsWindow = "/bgs professions - Öffnet das Berufefenster."
L.HelpBlacklistWindow = "/bgs blacklist - Öffnet das Blacklistfenster."
L.DisplayTotal = "[Gesamt] Anzeige in Tooltips für Items und in der Goldanzeige."
L.DisplayGuildName = "Anzeige [Name der Gilde] in Tooltips zeigen"
L.DisplayGuildBank = "Aktiviere Gildenbank Items"
L.DisplayMailbox = "Aktiviere Briefkasten Items"
L.DisplayAuctionHouse = "Aktiviere Auktionshaus Items"
L.DisplayMinimap = "Zeige BagSync Minimap Button"
L.DisplayFaction = "Zeige Items beider Fraktionen (Allianz/Horde)."
L.DisplayClassColor = "Zeige Klassenfarben für Charaktere"
L.DisplayTooltipOnlySearch = "Zeige modifizierte Tooltips NUR im BagSync Suchfenster."
L.EnableBagSyncTooltip = "Aktiviere BagSync Tooltips"
L.DisplayLineSeperator = "Aktiviere eine leere Linie als Seperator über der BagSync Tooltip Anzeige."
L.DisplayCrossRealm = "Altiviere Items für Cross-Realm Charaktere."
L.DisplayBNET = "Aktiviere Items für die aktuellen Battle.net Account Charaktere |cFFDF2B2B(Nicht empfohlen!)|r."