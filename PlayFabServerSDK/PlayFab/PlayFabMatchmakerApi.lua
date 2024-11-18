-- PlayFab Matchmaker API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabMatchmakerApi = require("PlayFab.PlayFabMatchmakerApi")
-- PlayFabMatchmakerApi.<MatchmakerApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabMatchmakerApi = {
    settings = PlayFabSettings.settings
}

return PlayFabMatchmakerApi
