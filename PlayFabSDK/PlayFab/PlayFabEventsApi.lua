-- PlayFab Events API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabEventsApi = require("PlayFab.PlayFabEventsApi")
-- PlayFabEventsApi.<EventsApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabEventsApi = {
    settings = PlayFabSettings.settings
}

-- Creates a new telemetry key for the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/createtelemetrykey
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/createtelemetrykey#createtelemetrykeyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/createtelemetrykey#createtelemetrykeyresponse
function PlayFabEventsApi.CreateTelemetryKey(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/CreateTelemetryKey", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a telemetry key configured for the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/deletetelemetrykey
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/deletetelemetrykey#deletetelemetrykeyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/deletetelemetrykey#deletetelemetrykeyresponse
function PlayFabEventsApi.DeleteTelemetryKey(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/DeleteTelemetryKey", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information about a telemetry key configured for the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/gettelemetrykey
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/gettelemetrykey#gettelemetrykeyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/gettelemetrykey#gettelemetrykeyresponse
function PlayFabEventsApi.GetTelemetryKey(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/GetTelemetryKey", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all telemetry keys configured for the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/listtelemetrykeys
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/listtelemetrykeys#listtelemetrykeysrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/listtelemetrykeys#listtelemetrykeysresponse
function PlayFabEventsApi.ListTelemetryKeys(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/ListTelemetryKeys", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets a telemetry key to the active or deactivated state.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/settelemetrykeyactive
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/settelemetrykeyactive#settelemetrykeyactiverequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/settelemetrykeyactive#settelemetrykeyactiveresponse
function PlayFabEventsApi.SetTelemetryKeyActive(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/SetTelemetryKeyActive", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Write batches of entity based events to PlayStream. The namespace of the Event must be 'custom' or start with 'custom.'.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writeevents
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writeevents#writeeventsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writeevents#writeeventsresponse
function PlayFabEventsApi.WriteEvents(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/WriteEvents", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Write batches of entity based events to as Telemetry events (bypass PlayStream). The namespace must be 'custom' or start
-- with 'custom.'
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writetelemetryevents
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writetelemetryevents#writeeventsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writetelemetryevents#writeeventsresponse
function PlayFabEventsApi.WriteTelemetryEvents(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/WriteTelemetryEvents", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabEventsApi
