--[[
@file	GenericLauncher.lua
@brief	Plugin to clear Finder's color flag of selected photos.
@author	remov-b4-flight
]]

local LrApplication = import 'LrApplication'
local LrTasks = import 'LrTasks'
local LrProgress = import 'LrProgressScope'
local prefs = import 'LrPrefs'.prefsForPlugin()
local PluginTitle = prefs.Title
local TagCommand = prefs.CommandLine
--local LrLogger = import 'LrLogger'
--local Logger = LrLogger(PluginTitle)
--Logger:enable('logfile')

local CurrentCatalog = LrApplication.activeCatalog()
local esc = "'"
local spc = " "
--Main part of this plugin.
LrTasks.startAsyncTask( function ()
	local ProgressBar = LrProgress(
		{title = PluginTitle}
	)

	local SelectedPhotos = CurrentCatalog:getTargetPhotos()
	local countPhotos = #SelectedPhotos
	--loops photos in selected
	CurrentCatalog:withWriteAccessDo(prefs.Title,function()
		for i,PhotoIt in ipairs(SelectedPhotos) do

			local FilePath = PhotoIt:getRawMetadata('path')
			local CommandLine = TagCommand .. spc .. esc .. FilePath .. esc
--			Logger:debug(CommandLine)
			LrTasks.execute(CommandLine)

			ProgressBar:setPortionComplete(i,countPhotos)
		end --end of for photos loop
	end ) --end of withWriteAccessDo
ProgressBar:done()
end ) --end of startAsyncTask function()
return
