-- PlayFab CloudScript API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/CloudScript
-- Example code:
-- local PlayFabCloudScriptApi = require("PlayFab.PlayFabCloudScriptApi")
-- PlayFabCloudScriptApi.<CloudScriptApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabCloudScriptApi = {
    settings = PlayFabSettings.settings
}

-- Executes CloudScript using the Entity Profile
-- API Method Documentation: https://api.playfab.com/Documentation/CloudScript/method/ExecuteEntityCloudScript
-- Request Documentation: https://api.playfab.com/Documentation/CloudScript/datatype/PlayFab.CloudScript.Models/PlayFab.CloudScript.Models.ExecuteEntityCloudScriptRequest
-- Result Documentation: https://api.playfab.com/Documentation/CloudScript/datatype/PlayFab.CloudScript.Models/PlayFab.CloudScript.Models.ExecuteCloudScriptResult
function PlayFabCloudScriptApi.ExecuteEntityCloudScript(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/ExecuteEntityCloudScript", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabCloudScriptApi
