-- Holds the basic settings for PlayFab
-- PlayFabSettings.settings is public and contains the following:
--     titleId -- You must set this before making any PlayFab API calls
-- It may optionally include:
-- (if you know you're on a device and wish to use advertising attribution:)
--     disableAdvertising -- Client only, set to true if you wish to disable advertising (even if it's set properly)
--     advertisingIdType  -- Client only, Can be one of: PlayFabSettings.settings.AD_TYPE_IDFA or PlayFabSettings.settings.AD_TYPE_ANDROID_ID
--     advertisingIdValue -- Client only, If using advertising, and if your game engine can provide this value, set it here
--     AD_TYPE_IDFA       -- Client only, a constant value for advertisingIdType
--     AD_TYPE_ANDROID_ID -- Client only, a constant value for advertisingIdType
--     devSecretKey       -- Server/Admin only, required for any non-client call

local PlayFabSettings = {
    _internalSettings = {
        sessionTicket = nil,
        sdkVersionString = "LuaSdk_0.47.181204",
        buildIdentifier = "jbuild_luasdk__sdk-slave2016-2_1",
        requestGetParams = {["sdk"] = "LuaSdk_0.47.181204"}
    },
    settings = {
        productionUrl = ".playfabapi.com",
        verticalName = nil, -- The name of a customer vertical. This is only for customers running a private cluster. Generally you shouldn't touch this
        devSecretKey = nil,
        disableAdvertising = false,
        advertisingIdType = nil,
        advertisingIdValue = nil,
        AD_TYPE_IDFA = "Idfa", -- a constant value that can be assigned to advertisingIdType
        AD_TYPE_ANDROID_ID = "Adid", -- a constant value that can be assigned to advertisingIdType
        titleId = nil
    }
}

function PlayFabSettings.GetFullUrl(urlPath)
    local fullUrl = "";
    if (not (string.sub(PlayFabSettings.settings.productionUrl, 1, 4) == "http")) then
        if (PlayFabSettings.settings.verticalName) then
            fullUrl = "https://" .. PlayFabSettings.settings.verticalName
        else
            fullUrl = "https://" .. PlayFabSettings.settings.titleId
        end
    end

    fullUrl = fullUrl .. PlayFabSettings.settings.productionUrl .. urlPath

    local getParams = PlayFabSettings._internalSettings.requestGetParams
    local firstParam = true
    for key, value in pairs(getParams) do
        if (firstParam) then
            fullUrl = fullUrl .. "?"
            firstParam = false
        else
            fullUrl = fullUrl .. "&"
        end

        fullUrl = fullUrl .. key .. "=" .. value
    end

    return fullUrl
end

return PlayFabSettings
