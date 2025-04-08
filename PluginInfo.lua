--[[-------------------------------------------------------
@file	PluginInfo.lua
@bried	Define plugin manager dialogs at C2Cap.lrplugin
@author	remov-b4-flight
---------------------------------------------------------]]
local LrApplication = import 'LrApplication'
local LrTasks = import 'LrTasks'
local LrView = import 'LrView'
local bind = LrView.bind -- a local shortcut for the binding function
local prefs = import 'LrPrefs'.prefsForPlugin()

local PluginInfo = {}
local CurrentCatalog = LrApplication.activeCatalog()

function PluginInfo.startDialog( propertyTable )
	propertyTable.CommandLine = prefs.CommandLine
	propertyTable.Title = prefs.Title
end

function PluginInfo.endDialog( propertyTable )
	prefs.CommandLine = propertyTable.CommandLine
	prefs.Title = propertyTable.Title
end

function PluginInfo.sectionsForTopOfDialog( viewFactory, propertyTable )
	return {
		{
			title = 'GenericLauncher',
			synopsis = LOC '$$$/glaunch/description=Set caption to collection name contained by.',
			bind_to_object = propertyTable,
			viewFactory:row {
				viewFactory:static_text {title = LOC '$$$/c2cap/Title=Title of process',},
				viewFactory:edit_field {value = bind 'Title',},
			},
			viewFactory:row {
				viewFactory:static_text {title = LOC '$$$/glaunch/CommandLine=Command Line',},
				viewFactory:edit_field {width_in_chars = 32, value = bind 'CommandLine',},
			},
		},
	}
end

return PluginInfo
