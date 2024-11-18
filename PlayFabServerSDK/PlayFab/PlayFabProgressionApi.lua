-- PlayFab Progression API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabProgressionApi = require("PlayFab.PlayFabProgressionApi")
-- PlayFabProgressionApi.<ProgressionApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabProgressionApi = {
    settings = PlayFabSettings.settings
}

-- Creates a new leaderboard definition.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/createleaderboarddefinition
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/createleaderboarddefinition#createleaderboarddefinitionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/createleaderboarddefinition#emptyresponse
function PlayFabProgressionApi.CreateLeaderboardDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/CreateLeaderboardDefinition", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Create a new entity statistic definition.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/createstatisticdefinition
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/createstatisticdefinition#createstatisticdefinitionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/createstatisticdefinition#emptyresponse
function PlayFabProgressionApi.CreateStatisticDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Statistic/CreateStatisticDefinition", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a leaderboard definition.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/deleteleaderboarddefinition
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/deleteleaderboarddefinition#deleteleaderboarddefinitionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/deleteleaderboarddefinition#emptyresponse
function PlayFabProgressionApi.DeleteLeaderboardDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/DeleteLeaderboardDefinition", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the specified entries from the given leaderboard.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/deleteleaderboardentries
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/deleteleaderboardentries#deleteleaderboardentriesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/deleteleaderboardentries#emptyresponse
function PlayFabProgressionApi.DeleteLeaderboardEntries(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/DeleteLeaderboardEntries", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Delete an entity statistic definition. Will delete all statistics on entity profiles and leaderboards.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/deletestatisticdefinition
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/deletestatisticdefinition#deletestatisticdefinitionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/deletestatisticdefinition#emptyresponse
function PlayFabProgressionApi.DeleteStatisticDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Statistic/DeleteStatisticDefinition", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Delete statistics on an entity profile. This will remove all rankings from associated leaderboards.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/deletestatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/deletestatistics#deletestatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/deletestatistics#deletestatisticsresponse
function PlayFabProgressionApi.DeleteStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Statistic/DeleteStatistics", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get the friend leaderboard for the specified entity. A maximum of 25 friend entries are listed in the leaderboard.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getfriendleaderboardforentity
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getfriendleaderboardforentity#getfriendleaderboardforentityrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getfriendleaderboardforentity#getentityleaderboardresponse
function PlayFabProgressionApi.GetFriendLeaderboardForEntity(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/GetFriendLeaderboardForEntity", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get the leaderboard for a specific entity type and statistic.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboard
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboard#getentityleaderboardrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboard#getentityleaderboardresponse
function PlayFabProgressionApi.GetLeaderboard(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/GetLeaderboard", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get the leaderboard around a specific entity.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboardaroundentity
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboardaroundentity#getleaderboardaroundentityrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboardaroundentity#getentityleaderboardresponse
function PlayFabProgressionApi.GetLeaderboardAroundEntity(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/GetLeaderboardAroundEntity", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the specified leaderboard definition.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboarddefinition
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboarddefinition#getleaderboarddefinitionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboarddefinition#getleaderboarddefinitionresponse
function PlayFabProgressionApi.GetLeaderboardDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/GetLeaderboardDefinition", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get the leaderboard limited to a set of entities.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboardforentities
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboardforentities#getleaderboardforentitiesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/getleaderboardforentities#getentityleaderboardresponse
function PlayFabProgressionApi.GetLeaderboardForEntities(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/GetLeaderboardForEntities", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get current statistic definition information
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/getstatisticdefinition
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/getstatisticdefinition#getstatisticdefinitionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/getstatisticdefinition#getstatisticdefinitionresponse
function PlayFabProgressionApi.GetStatisticDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Statistic/GetStatisticDefinition", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets statistics for the specified entity.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/getstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/getstatistics#getstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/getstatistics#getstatisticsresponse
function PlayFabProgressionApi.GetStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Statistic/GetStatistics", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets statistics for the specified collection of entities.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/getstatisticsforentities
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/getstatisticsforentities#getstatisticsforentitiesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/getstatisticsforentities#getstatisticsforentitiesresponse
function PlayFabProgressionApi.GetStatisticsForEntities(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Statistic/GetStatisticsForEntities", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Increment a leaderboard version.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/incrementleaderboardversion
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/incrementleaderboardversion#incrementleaderboardversionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/incrementleaderboardversion#incrementleaderboardversionresponse
function PlayFabProgressionApi.IncrementLeaderboardVersion(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/IncrementLeaderboardVersion", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Increment an entity statistic definition version.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/incrementstatisticversion
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/incrementstatisticversion#incrementstatisticversionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/incrementstatisticversion#incrementstatisticversionresponse
function PlayFabProgressionApi.IncrementStatisticVersion(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Statistic/IncrementStatisticVersion", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists the leaderboard definitions defined for the Title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/listleaderboarddefinitions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/listleaderboarddefinitions#listleaderboarddefinitionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/listleaderboarddefinitions#listleaderboarddefinitionsresponse
function PlayFabProgressionApi.ListLeaderboardDefinitions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/ListLeaderboardDefinitions", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get all current statistic definitions information
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/liststatisticdefinitions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/liststatisticdefinitions#liststatisticdefinitionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/liststatisticdefinitions#liststatisticdefinitionsresponse
function PlayFabProgressionApi.ListStatisticDefinitions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Statistic/ListStatisticDefinitions", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Unlinks a leaderboard definition from it's linked statistic definition.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/unlinkleaderboardfromstatistic
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/unlinkleaderboardfromstatistic#unlinkleaderboardfromstatisticrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/unlinkleaderboardfromstatistic#emptyresponse
function PlayFabProgressionApi.UnlinkLeaderboardFromStatistic(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/UnlinkLeaderboardFromStatistic", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Adds or updates entries on the specified leaderboard.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/updateleaderboardentries
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/updateleaderboardentries#updateleaderboardentriesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/leaderboard/leaderboards/updateleaderboardentries#emptyresponse
function PlayFabProgressionApi.UpdateLeaderboardEntries(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Leaderboard/UpdateLeaderboardEntries", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Update statistics on an entity profile. Depending on the statistic definition, this may result in entity being ranked on
-- various leaderboards.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/updatestatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/updatestatistics#updatestatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/statistic/statistics/updatestatistics#updatestatisticsresponse
function PlayFabProgressionApi.UpdateStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Statistic/UpdateStatistics", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabProgressionApi
