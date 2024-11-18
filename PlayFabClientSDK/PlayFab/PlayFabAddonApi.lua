-- PlayFab Addon API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabAddonApi = require("PlayFab.PlayFabAddonApi")
-- PlayFabAddonApi.<AddonApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabAddonApi = {
    settings = PlayFabSettings.settings
}

-- Creates the Apple addon on a title, or updates it if it already exists.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdateapple
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdateapple#createorupdateapplerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdateapple#createorupdateappleresponse
function PlayFabAddonApi.CreateOrUpdateApple(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/CreateOrUpdateApple", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates the Facebook addon on a title, or updates it if it already exists.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatefacebook
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatefacebook#createorupdatefacebookrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatefacebook#createorupdatefacebookresponse
function PlayFabAddonApi.CreateOrUpdateFacebook(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/CreateOrUpdateFacebook", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates the Facebook Instant Games addon on a title, or updates it if it already exists.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatefacebookinstantgames
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatefacebookinstantgames#createorupdatefacebookinstantgamesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatefacebookinstantgames#createorupdatefacebookinstantgamesresponse
function PlayFabAddonApi.CreateOrUpdateFacebookInstantGames(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/CreateOrUpdateFacebookInstantGames", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates the Google addon on a title, or updates it if it already exists.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdategoogle
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdategoogle#createorupdategooglerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdategoogle#createorupdategoogleresponse
function PlayFabAddonApi.CreateOrUpdateGoogle(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/CreateOrUpdateGoogle", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates the Kongregate addon on a title, or updates it if it already exists.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatekongregate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatekongregate#createorupdatekongregaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatekongregate#createorupdatekongregateresponse
function PlayFabAddonApi.CreateOrUpdateKongregate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/CreateOrUpdateKongregate", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates the Nintendo addon on a title, or updates it if it already exists.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatenintendo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatenintendo#createorupdatenintendorequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatenintendo#createorupdatenintendoresponse
function PlayFabAddonApi.CreateOrUpdateNintendo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/CreateOrUpdateNintendo", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates the PSN addon on a title, or updates it if it already exists.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatepsn
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatepsn#createorupdatepsnrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatepsn#createorupdatepsnresponse
function PlayFabAddonApi.CreateOrUpdatePSN(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/CreateOrUpdatePSN", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates the Steam addon on a title, or updates it if it already exists.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatesteam
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatesteam#createorupdatesteamrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatesteam#createorupdatesteamresponse
function PlayFabAddonApi.CreateOrUpdateSteam(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/CreateOrUpdateSteam", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates the Twitch addon on a title, or updates it if it already exists.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatetwitch
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatetwitch#createorupdatetwitchrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/createorupdatetwitch#createorupdatetwitchresponse
function PlayFabAddonApi.CreateOrUpdateTwitch(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/CreateOrUpdateTwitch", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the Apple addon on a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deleteapple
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deleteapple#deleteapplerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deleteapple#deleteappleresponse
function PlayFabAddonApi.DeleteApple(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/DeleteApple", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the Facebook addon on a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletefacebook
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletefacebook#deletefacebookrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletefacebook#deletefacebookresponse
function PlayFabAddonApi.DeleteFacebook(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/DeleteFacebook", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the Facebook addon on a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletefacebookinstantgames
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletefacebookinstantgames#deletefacebookinstantgamesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletefacebookinstantgames#deletefacebookinstantgamesresponse
function PlayFabAddonApi.DeleteFacebookInstantGames(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/DeleteFacebookInstantGames", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the Google addon on a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletegoogle
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletegoogle#deletegooglerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletegoogle#deletegoogleresponse
function PlayFabAddonApi.DeleteGoogle(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/DeleteGoogle", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the Kongregate addon on a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletekongregate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletekongregate#deletekongregaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletekongregate#deletekongregateresponse
function PlayFabAddonApi.DeleteKongregate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/DeleteKongregate", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the Nintendo addon on a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletenintendo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletenintendo#deletenintendorequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletenintendo#deletenintendoresponse
function PlayFabAddonApi.DeleteNintendo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/DeleteNintendo", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the PSN addon on a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletepsn
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletepsn#deletepsnrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletepsn#deletepsnresponse
function PlayFabAddonApi.DeletePSN(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/DeletePSN", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the Steam addon on a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletesteam
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletesteam#deletesteamrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletesteam#deletesteamresponse
function PlayFabAddonApi.DeleteSteam(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/DeleteSteam", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the Twitch addon on a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletetwitch
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletetwitch#deletetwitchrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/deletetwitch#deletetwitchresponse
function PlayFabAddonApi.DeleteTwitch(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/DeleteTwitch", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information of the Apple addon on a title, omits secrets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getapple
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getapple#getapplerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getapple#getappleresponse
function PlayFabAddonApi.GetApple(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/GetApple", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information of the Facebook addon on a title, omits secrets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getfacebook
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getfacebook#getfacebookrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getfacebook#getfacebookresponse
function PlayFabAddonApi.GetFacebook(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/GetFacebook", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information of the Facebook Instant Games addon on a title, omits secrets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getfacebookinstantgames
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getfacebookinstantgames#getfacebookinstantgamesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getfacebookinstantgames#getfacebookinstantgamesresponse
function PlayFabAddonApi.GetFacebookInstantGames(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/GetFacebookInstantGames", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information of the Google addon on a title, omits secrets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getgoogle
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getgoogle#getgooglerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getgoogle#getgoogleresponse
function PlayFabAddonApi.GetGoogle(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/GetGoogle", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information of the Kongregate addon on a title, omits secrets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getkongregate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getkongregate#getkongregaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getkongregate#getkongregateresponse
function PlayFabAddonApi.GetKongregate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/GetKongregate", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information of the Nintendo addon on a title, omits secrets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getnintendo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getnintendo#getnintendorequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getnintendo#getnintendoresponse
function PlayFabAddonApi.GetNintendo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/GetNintendo", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information of the PSN addon on a title, omits secrets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getpsn
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getpsn#getpsnrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getpsn#getpsnresponse
function PlayFabAddonApi.GetPSN(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/GetPSN", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information of the Steam addon on a title, omits secrets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getsteam
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getsteam#getsteamrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/getsteam#getsteamresponse
function PlayFabAddonApi.GetSteam(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/GetSteam", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information of the Twitch addon on a title, omits secrets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/gettwitch
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/gettwitch#gettwitchrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/addon/addon/gettwitch#gettwitchresponse
function PlayFabAddonApi.GetTwitch(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Addon/GetTwitch", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabAddonApi
