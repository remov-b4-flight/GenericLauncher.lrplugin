--[[-------------------------------------------------------
@file	PluginInit.lua
@brief	Initialize routines when C2Cap.lrplugin Plugin is loaded. 
@author	remove-b4-flight
---------------------------------------------------------]]
local prefs = import 'LrPrefs'.prefsForPlugin() 

if prefs.Title == nil then
	prefs.Title = 'GenericLauncher'
end

if prefs.CommandLine == nil then
	prefs.CommandLine = "/usr/bin/touch"
end
