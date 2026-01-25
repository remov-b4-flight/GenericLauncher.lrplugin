--[[
@file	Info.lua
@author	remov-b4-flight
]]

return {

	LrSdkVersion = 6.0,

	LrToolkitIdentifier = 'cx.ath.remov-b4-flight.genericlauncher',
	LrPluginName = 'GenericLauncher',
	LrPluginInfoUrl='https://twitter.com/remov_b4_flight',
	LrLibraryMenuItems = { 
		{title = 'Launch',
		file = 'GenericLauncher.lua',
		enabledWhen = 'photosAvailable',},
	},
	LrPluginInfoProvider = 'PluginInfo.lua',
	LrInitPlugin = 'PluginInit.lua',
	VERSION = { major=0, minor=2, revision=1, build=7, },

}
