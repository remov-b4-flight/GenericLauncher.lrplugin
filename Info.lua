--[[
@file	Info.lua
@author	remov-b4-flight
]]

return {

	LrSdkVersion = 3.0,

	LrToolkitIdentifier = 'cx.ath.remov-b4-flight.genericlauncher',
	LrPluginName = 'Generic Launcher',
	LrPluginInfoUrl='https://twitter.com/remov_b4_flight',
	LrLibraryMenuItems = { 
		{title = 'Launch',
		file = 'GenericLauncher.lua',
		enabledWhen = 'photosAvailable',},
	},
	VERSION = { major=0, minor=0, revision=1, build=0, },

}
